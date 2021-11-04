@testable import BagbutikGenerator
@testable import BagbutikSpecDecoder
import XCTest

final class ObjectSchemaRendererTests: XCTestCase {
    func testRenderPlain() throws {
        // Given
        let renderer = ObjectSchemaRenderer()
        let schema = ObjectSchema(name: "Person",
                                  url: "some://url",
                                  properties: ["name": .init(type: .simple(.init(type: "string")))])
        // When
        let rendered = try renderer.render(objectSchema: schema)
        // Then
        XCTAssertEqual(rendered, #"""
        public struct Person: Codable {
            public let name: String?

            public init(name: String? = nil) {
                self.name = name
            }
        }

        """#)
    }

    func testRenderPlainDocumented() throws {
        // Given
        let renderer = ObjectSchemaRenderer()
        let schema = ObjectSchema(name: "Person",
                                  url: "some://url",
                                  documentation: .rootSchema(summary: "A person with a name.",
                                                             properties: ["name": "The person's name"]),
                                  properties: ["name": .init(type: .simple(.init(type: "string")))])
        // When
        let rendered = try renderer.render(objectSchema: schema)
        // Then
        XCTAssertEqual(rendered, #"""
        /**
         A person with a name.

         Full documentation:
         <some://url>
         */
        public struct Person: Codable {
            /// The person's name
            public let name: String?

            public init(name: String? = nil) {
                self.name = name
            }
        }

        """#)
    }

    func testRenderPlainDocumentedDeprecated() throws {
        // Given
        let renderer = ObjectSchemaRenderer()
        let schema = ObjectSchema(name: "Person",
                                  url: "some://url",
                                  documentation: .rootSchema(summary: "A person with a name.",
                                                             properties: ["name": "The person's name",
                                                                          "age": "The person's age"]),
                                  properties: ["name": .init(type: .simple(.string), deprecated: true),
                                               "age": .init(type: .simple(.integer), deprecated: false)])
        // When
        let rendered = try renderer.render(objectSchema: schema)
        // Then
        XCTAssertEqual(rendered, #"""
        /**
         A person with a name.

         Full documentation:
         <some://url>
         */
        public struct Person: Codable {
            /// The person's age
            public let age: Int?
            /// The person's name
            @available(*, deprecated, message: "Apple has marked this property deprecated and it will be removed sometime in the future.")
            public var name: String? = nil

            @available(*, deprecated, message: "This uses a property Apple has marked as deprecated.")
            public init(age: Int? = nil, name: String? = nil) {
                self.age = age
                self.name = name
            }

            public init(age: Int? = nil) {
                self.age = age
            }
        }

        """#)
    }

    func testRenderRequest() throws {
        // Given
        let renderer = ObjectSchemaRenderer()
        let schema = ObjectSchema(name: "PersonCreateRequest",
                                  url: "some://url",
                                  documentation: .rootSchema(summary: "The data for a request to create a person.",
                                                             properties: ["name": "The person's name"]),
                                  properties: ["name": .init(type: .simple(.init(type: "string")))])
        // When
        let rendered = try renderer.render(objectSchema: schema)
        // Then
        XCTAssertEqual(rendered, #"""
        /**
         The data for a request to create a person.

         Full documentation:
         <some://url>
         */
        public struct PersonCreateRequest: Codable, RequestBody {
            /// The person's name
            public let name: String?

            public init(name: String? = nil) {
                self.name = name
            }
        }

        """#)
    }

    func testRenderSpecialPropertyTypes() throws {
        // Given
        let renderer = ObjectSchemaRenderer()
        let schema = ObjectSchema(name: "Person",
                                  url: "some://url",
                                  documentation: .rootSchema(summary: "A person with a name.",
                                                             properties: ["firstName": "The firstname of the person",
                                                                          "lastName": "The lastname of the person",
                                                                          "self": "A reference to the person",
                                                                          "id": "The unique id for the person"]),
                                  properties: ["firstName": .init(type: .simple(.init(type: "string"))),
                                               "lastName": .init(type: .simple(.init(type: "string"))),
                                               "self": .init(type: .schemaRef("string")),
                                               "id": .init(type: .constant("person"))],
                                  requiredProperties: ["firstName"])
        // When
        let rendered = try renderer.render(objectSchema: schema)
        // Then
        XCTAssertEqual(rendered, #"""
        /**
         A person with a name.

         Full documentation:
         <some://url>
         */
        public struct Person: Codable {
            /// The firstname of the person
            public let firstName: String
            /// The unique id for the person
            public var id: String { "person" }
            /// The lastname of the person
            public let lastName: String?
            /// A reference to the person
            public let `self`: String?

            public init(firstName: String, lastName: String? = nil, self aSelf: String? = nil) {
                self.firstName = firstName
                self.lastName = lastName
                self.`self` = aSelf
            }
        }

        """#)
    }

    func testRenderWithAttributes() throws {
        // Given
        let renderer = ObjectSchemaRenderer()
        let attributesSchema = ObjectSchema(name: "Attributes",
                                            url: "some://url",
                                            properties: ["age": .init(type: .simple(.init(type: "integer")))])
        let schema = ObjectSchema(name: "Person",
                                  url: "some://url",
                                  documentation: .rootSchema(summary: "A person with a name."),
                                  properties: ["name": .init(type: .simple(.init(type: "string")))],
                                  attributesSchema: .attributes(attributesSchema))
        // When
        let rendered = try renderer.render(objectSchema: schema)
        // Then
        XCTAssertEqual(rendered, #"""
        /**
         A person with a name.

         Full documentation:
         <some://url>
         */
        public struct Person: Codable {
            public let name: String?
            /// The resource's attributes.
            public let attributes: Attributes?

            public init(name: String? = nil, attributes: Attributes? = nil) {
                self.name = name
                self.attributes = attributes
            }

            public struct Attributes: Codable {
                public let age: Int?

                public init(age: Int? = nil) {
                    self.age = age
                }
            }
        }

        """#)
    }

    func testRenderWithRelationships() throws {
        // Given
        let renderer = ObjectSchemaRenderer()
        let relationshipsSchema = ObjectSchema(name: "Relationships",
                                               url: "some://url",
                                               documentation: .relationships,
                                               properties: ["children": .init(type: .arrayOfSchemaRef("Child"))])
        let schema = ObjectSchema(name: "Person",
                                  url: "some://url",
                                  documentation: .rootSchema(summary: "A person with a name."),
                                  properties: ["name": .init(type: .simple(.init(type: "string")))],
                                  relationshipsSchema: .relationships(relationshipsSchema))
        // When
        let rendered = try renderer.render(objectSchema: schema)
        // Then
        XCTAssertEqual(rendered, #"""
        /**
         A person with a name.

         Full documentation:
         <some://url>
         */
        public struct Person: Codable {
            public let name: String?
            /// Navigational links to related data and included resource types and IDs.
            public let relationships: Relationships?

            public init(name: String? = nil, relationships: Relationships? = nil) {
                self.name = name
                self.relationships = relationships
            }

            /**
             The relationships you included in the request and those on which you can operate.

             Full documentation:
             <some://url>
             */
            public struct Relationships: Codable {
                public let children: [Child]?

                public init(children: [Child]? = nil) {
                    self.children = children
                }
            }
        }

        """#)
    }

    func testRenderSubSchemas() throws {
        // Given
        let renderer = ObjectSchemaRenderer()
        let schema = ObjectSchema(name: "Person",
                                  url: "some://url",
                                  documentation: .rootSchema(summary: "A person with a name.",
                                                             properties: ["name": "The person's name",
                                                                          "pet": "The person's pet",
                                                                          "preference": "The person's indentation preference",
                                                                          "connection": "The person's connection"]),
                                  properties: ["name": .init(type: .simple(.init(type: "string"))),
                                               "pet": .init(type: .schema(.init(name: "Pet", url: "some://url", properties: ["name": .init(type: .simple(.init(type: "string")))]))),
                                               "preference": .init(type: .enumSchema(.init(name: "Preference", type: "string", caseValues: ["TABS", "SPACES"]))),
                                               "connection": .init(type: .oneOf(name: "Connection", schema: OneOfSchema(options: [.schemaRef("Computer"), .schemaRef("Phone")])))])
        // When
        let rendered = try renderer.render(objectSchema: schema)
        // Then
        XCTAssertEqual(rendered, #"""
        /**
         A person with a name.

         Full documentation:
         <some://url>
         */
        public struct Person: Codable {
            /// The person's connection
            public let connection: Connection?
            /// The person's name
            public let name: String?
            /// The person's pet
            public let pet: Pet?
            /// The person's indentation preference
            public let preference: Preference?

            public init(connection: Connection? = nil, name: String? = nil, pet: Pet? = nil, preference: Preference? = nil) {
                self.connection = connection
                self.name = name
                self.pet = pet
                self.preference = preference
            }

            public enum Connection: Codable {
                case computer(Computer)
                case phone(Phone)

                public init(from decoder: Decoder) throws {
                    if let computer = try? Computer(from: decoder) {
                        self = .computer(computer)
                    } else if let phone = try? Phone(from: decoder) {
                        self = .phone(phone)
                    } else {
                        throw DecodingError.typeMismatch(Connection.self, DecodingError.Context(codingPath: decoder.codingPath,
                                                                                                debugDescription: "Unknown Connection"))
                    }
                }

                public func encode(to encoder: Encoder) throws {
                    switch self {
                    case let .computer(value):
                        try value.encode(to: encoder)
                    case let .phone(value):
                        try value.encode(to: encoder)
                    }
                }

                private enum CodingKeys: String, CodingKey {
                    case type
                }
            }

            public struct Pet: Codable {
                public let name: String?

                public init(name: String? = nil) {
                    self.name = name
                }
            }

            public enum Preference: String, Codable, CaseIterable {
                case tabs = "TABS"
                case spaces = "SPACES"
            }
        }

        """#)
    }

    func testPagedResponse() throws {
        // Given
        let renderer = ObjectSchemaRenderer()
        let schema = ObjectSchema(name: "PersonsResponse",
                                  url: "some://url",
                                  properties: ["data": .init(type: .arrayOfSchemaRef("Person")),
                                               "links": .init(type: .schemaRef("PagedDocumentLinks"))],
                                  requiredProperties: ["data", "links"])
        // When
        let rendered = try renderer.render(objectSchema: schema)
        // Then
        XCTAssertEqual(rendered, #"""
        public struct PersonsResponse: Codable, PagedResponse {
            public typealias Data = Person
            public let data: [Person]
            public let links: PagedDocumentLinks

            public init(data: [Person], links: PagedDocumentLinks) {
                self.data = data
                self.links = links
            }
        }

        """#)
    }
    
    func testRenderWithCustomTypeProperty() throws {
        let json = """
        {
            "phoneNumber" : {
                "type" : "object",
                "properties" : {
                    "number" : {
                        "type" : "string"
                    },
                    "type" : {
                        "type" : "string",
                        "enum" : [ "FAX", "LANDLINE", "MOBILE", "TOLLFREE" ]
                    },
                    "intent" : {
                        "type" : "string"
                    }
                }
            }
        }
        """
        let schema = try JSONDecoder().decode([String: ObjectSchema].self, from: json.data(using: .utf8)!)["phoneNumber"]!
        let renderer = ObjectSchemaRenderer()
        // When
        let rendered = try renderer.render(objectSchema: schema)
        // Then
        XCTAssertEqual(rendered, #"""
        public struct PhoneNumber: Codable {
            public let intent: String?
            public let number: String?
            public let type: PhoneNumberType?

            public init(intent: String? = nil, number: String? = nil, type: PhoneNumberType? = nil) {
                self.intent = intent
                self.number = number
                self.type = type
            }

            public enum PhoneNumberType: String, Codable, CaseIterable {
                case fax = "FAX"
                case landline = "LANDLINE"
                case mobile = "MOBILE"
                case tollfree = "TOLLFREE"
            }
        }

        """#)
    }
}
