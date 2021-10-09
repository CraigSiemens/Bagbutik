import Foundation

/// A representation of the spec file
public struct Spec: Decodable {
    /// The paths contained in the spec
    public var paths: [String: Path]
    /// The components contained in the spec
    public var components: Components

    /// Flatten the schemas used in schemas for create request and update request and in filter parameters when they are identical to the schemas used in main type.
    /// Eg. CreateProfile.Attributes.ProfileType is equal to Profile.Attributes.ProfileType, the first one should be removed and the latter one should be used
    public mutating func flattenIdenticalSchemas() {
        paths.forEach { (pathKey: String, path: Path) in
            var path = path
            path.operations.forEach { operation in
                let operationIndex = path.operations.firstIndex(of: operation)!
                var operation = operation
                operation.parameters?
                    .forEach { parameter in
                        guard let parameterIndex = operation.parameters?.firstIndex(of: parameter),
                              case .filter(let parameterName, let parameterValueType, let parameterRequired, let parameterDocumentation) = parameter,
                              case .enum(let type, let values) = parameterValueType,
                              case .object(let mainSchema) = components.schemas[path.info.mainType],
                              let mainAttributesSchema = mainSchema.subSchemas.compactMap({ $0.asAttributes }).first,
                              mainAttributesSchema.properties.contains(where: { (_: String, mainAttributesProperty: Property) in
                                  guard case .enumSchema(let mainAttributesPropertySchema) = mainAttributesProperty.type else { return false }
                                  let parameterEnumSchema = EnumSchema(name: parameterName.capitalizingFirstLetter(), type: type.lowercased(), caseValues: values)
                                  let equal = mainAttributesPropertySchema == parameterEnumSchema
                                  return equal
                              })
                        else { return }
                        operation.parameters?[parameterIndex] = .filter(name: parameterName, type: .simple(type: .init(type: "\(path.info.mainType).Attributes.\(parameterName.capitalizingFirstLetter())")), required: parameterRequired, documentation: parameterDocumentation)
                    }
                path.operations[operationIndex] = operation
            }
            paths[pathKey] = path
        }
        ["CreateRequest", "UpdateRequest"].forEach { suffix in
            components.schemas
                .filter { $0.key.hasSuffix(suffix) }
                .forEach { (targetSchemaName: String, targetSchema: Schema) in
                    // targetSchema: The schema to change, to use a schema ref instead of duplicate sub schema
                    // mainSchema: The schema containing the only sub schema, which the targetSchema should refer to
                    guard case .object(var targetSchema) = targetSchema else { return }
                    let mainSchemaName = String(targetSchemaName.dropLast(suffix.lengthOfBytes(using: .utf8)))
                    guard case .object(let mainSchema) = components.schemas[mainSchemaName],
                          let targetDataProperty = targetSchema.properties["data"],
                          case .schema(var targetDataSchema) = targetDataProperty.type,
                          case .attributes(var targetDataAttributesSchema) = targetDataSchema.attributesSchema
                    else { return }
                    targetDataAttributesSchema.properties.forEach { (targetDataAttributesPropertyName: String, targetDataAttributesProperty: Property) in
                        guard case .enumSchema(let targetDataAttributesPropertySchema) = targetDataAttributesProperty.type,
                              let mainAttributesSchema = mainSchema.subSchemas.compactMap({ $0.asAttributes }).first,
                              mainAttributesSchema.properties.contains(where: { (_: String, mainAttributesProperty: Property) in
                                  guard case .enumSchema(let mainAttributesPropertySchema) = mainAttributesProperty.type else { return false }
                                  return mainAttributesPropertySchema == targetDataAttributesPropertySchema
                              }) else { return }
                        targetDataAttributesSchema.properties[targetDataAttributesPropertyName] = .init(type: .schemaRef("\(mainSchemaName).Attributes.\(targetDataAttributesPropertySchema.name)"), deprecated: targetDataAttributesProperty.deprecated)
                    }
                    targetDataSchema.attributesSchema = .attributes(targetDataAttributesSchema)
                    targetSchema.properties["data"] = .init(type: .schema(targetDataSchema), deprecated: targetDataProperty.deprecated)
                    components.schemas[targetSchemaName] = .object(targetSchema)
                }
        }
    }

    public mutating func applyManualPatches() throws {
        guard case .object(var errorResponseSchema) = components.schemas["ErrorResponse"],
              let errorsProperty = errorResponseSchema.properties["errors"],
              case .arrayOfSubSchema(var errorSchema) = errorsProperty.type,
              var sourceProperty = errorSchema.properties["source"],
              case .oneOf(let sourcePropertyName, var sourceOneOfSchema) = sourceProperty.type,
              let pointerIndex = sourceOneOfSchema.options.firstIndex(of: .schemaRef("ErrorSourcePointer")),
              let parameterIndex = sourceOneOfSchema.options.firstIndex(of: .schemaRef("ErrorSourceParameter"))
        else {
            throw SpecError.unexpectedErrorResponseSource(components.schemas["ErrorResponse"])
        }
        sourceOneOfSchema.options.remove(at: pointerIndex)
        sourceOneOfSchema.options.insert(.schemaRef("JsonPointer"), at: pointerIndex)
        sourceOneOfSchema.options.remove(at: parameterIndex)
        sourceOneOfSchema.options.insert(.schemaRef("Parameter"), at: parameterIndex)
        sourceProperty.type = .oneOf(name: sourcePropertyName, schema: sourceOneOfSchema)
        errorSchema.properties["source"] = sourceProperty
        errorResponseSchema.properties["errors"]?.type = .arrayOfSubSchema(errorSchema)
        components.schemas["ErrorResponse"] = .object(errorResponseSchema)
    }

    /// A wrapper for schemas to ease decoding
    public struct Components: Decodable {
        /// A list of schema names and their representation
        public var schemas: [String: Schema]
    }
}

public enum SpecError: Error {
    case unexpectedErrorResponseSource(Schema?)
}

extension SpecError: Equatable {}

private extension SubSchema {
    /// Match the sub schema as an Attributes schema and return it if it is
    var asAttributes: ObjectSchema? {
        guard case .attributes(let attributesSchema) = self else { return nil }
        return attributesSchema
    }
}
