import Foundation

/**
 # ScmGitReference
 The data structure that represents a Git References resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/scmgitreference>
 */
public struct ScmGitReference: Codable, Identifiable {
    /// The opaque resource ID that uniquely identifies a Git References resource.
    public let id: String
    /// The navigational links that include the self-link.
    public let links: ResourceLinks
    /// The resource type.
    public var type: String { "scmGitReferences" }
    /// The attributes that describe the Git References resource.
    public var attributes: Attributes?
    /// The navigational links to related data and included resource types and IDs.
    public var relationships: Relationships?

    public init(id: String,
                links: ResourceLinks,
                attributes: Attributes? = nil,
                relationships: Relationships? = nil)
    {
        self.id = id
        self.links = links
        self.attributes = attributes
        self.relationships = relationships
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decode(String.self, forKey: .id)
        links = try container.decode(ResourceLinks.self, forKey: .links)
        attributes = try container.decodeIfPresent(Attributes.self, forKey: .attributes)
        relationships = try container.decodeIfPresent(Relationships.self, forKey: .relationships)
        if try container.decode(String.self, forKey: .type) != type {
            throw DecodingError.dataCorruptedError(forKey: .type, in: container, debugDescription: "Not matching \(type)")
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(links, forKey: .links)
        try container.encode(type, forKey: .type)
        try container.encodeIfPresent(attributes, forKey: .attributes)
        try container.encodeIfPresent(relationships, forKey: .relationships)
    }

    private enum CodingKeys: String, CodingKey {
        case attributes
        case id
        case links
        case relationships
        case type
    }

    /**
     # ScmGitReference.Attributes
     The attributes that describe a Git Reference resource.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/scmgitreference/attributes>
     */
    public struct Attributes: Codable {
        /// The canonical name of the Git reference.
        public var canonicalName: String?
        /// A Boolean value that indicates whether the Git reference was deleted.
        public var isDeleted: Bool?
        /// A value that indicates whether the Git reference is a tag or a branch.
        public var kind: CiGitRefKind?
        /// The name of the Git reference.
        public var name: String?

        public init(canonicalName: String? = nil,
                    isDeleted: Bool? = nil,
                    kind: CiGitRefKind? = nil,
                    name: String? = nil)
        {
            self.canonicalName = canonicalName
            self.isDeleted = isDeleted
            self.kind = kind
            self.name = name
        }
    }

    /**
     # ScmGitReference.Relationships
     The relationships of the Git References resource you included in the request and those on which you can operate.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/scmgitreference/relationships>
     */
    public struct Relationships: Codable {
        /// The related Repositories resource.
        public var repository: Repository?

        public init(repository: Repository? = nil) {
            self.repository = repository
        }

        /**
         # ScmGitReference.Relationships.Repository
         The data and links that describe the relationship between the Git References and the Repositories resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/scmgitreference/relationships/repository>
         */
        public struct Repository: Codable {
            /// The ID and type of the related Repositories resource.
            @NullCodable public var data: Data?
            /// The navigational links that include the self-link.
            public var links: Links?

            public init(data: Data? = nil,
                        links: Links? = nil)
            {
                self.data = data
                self.links = links
            }

            /**
             # ScmGitReference.Relationships.Repository.Data
             The type and ID of a related Repositories resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/scmgitreference/relationships/repository/data>
             */
            public struct Data: Codable, Identifiable {
                /// The opaque resource ID that uniquely identifies the related Repositories resource.
                public let id: String
                /// The resource type.
                public var type: String { "scmRepositories" }

                public init(id: String) {
                    self.id = id
                }

                public init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: CodingKeys.self)
                    id = try container.decode(String.self, forKey: .id)
                    if try container.decode(String.self, forKey: .type) != type {
                        throw DecodingError.dataCorruptedError(forKey: .type, in: container, debugDescription: "Not matching \(type)")
                    }
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: CodingKeys.self)
                    try container.encode(id, forKey: .id)
                    try container.encode(type, forKey: .type)
                }

                private enum CodingKeys: String, CodingKey {
                    case id
                    case type
                }
            }

            /**
             # ScmGitReference.Relationships.Repository.Links
             The links to the related Repositories resource and the relationship’s self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/scmgitreference/relationships/repository/links>
             */
            public struct Links: Codable {
                /// The link to related data.
                public var related: String?
                /// The link to the resource.
                public var itself: String?

                public init(related: String? = nil,
                            self itself: String? = nil)
                {
                    self.related = related
                    self.itself = itself
                }

                public init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: CodingKeys.self)
                    related = try container.decodeIfPresent(String.self, forKey: .related)
                    itself = try container.decodeIfPresent(String.self, forKey: .itself)
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: CodingKeys.self)
                    try container.encodeIfPresent(related, forKey: .related)
                    try container.encodeIfPresent(itself, forKey: .itself)
                }

                private enum CodingKeys: String, CodingKey {
                    case itself = "self"
                    case related
                }
            }
        }
    }
}
