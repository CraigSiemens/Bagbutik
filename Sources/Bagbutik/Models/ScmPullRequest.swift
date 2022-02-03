import Foundation

/**
 The data structure that represents a Pull Requests resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/scmpullrequest>
 */
public struct ScmPullRequest: Codable, RequestBody {
    /// The opaque resource ID that uniquely identifies the resource.
    public let id: String
    /// Navigational links that include the self-link.
    public let links: ResourceLinks
    /// The resource type.
    public var type: String { "scmPullRequests" }
    /// The resource's attributes.
    public let attributes: Attributes?
    /// Navigational links to related data and included resource types and IDs.
    public let relationships: Relationships?

    public init(id: String, links: ResourceLinks, attributes: Attributes? = nil, relationships: Relationships? = nil) {
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
        case id
        case links
        case type
        case attributes
        case relationships
    }

    /**
     The attributes that describe a Pull Requests resource.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/scmpullrequest/attributes>
     */
    public struct Attributes: Codable {
        /// The name of the pull request’s destination branch.
        public var destinationBranchName: String?
        /// The name of the pull request’s destination repository. If the pull request is not for a fork, this is the same value as the source repository name.
        public var destinationRepositoryName: String?
        /// The owner of the pull request’s destination repository.
        public var destinationRepositoryOwner: String?
        /// A Boolean value that indicates whether the pull request is open or closed.
        public var isClosed: Bool?
        /// A Boolean value that indicates whether the pull request is for a Git fork.
        public var isCrossRepository: Bool?
        /// The pull request number.
        public var number: Int?
        /// The name of the pull request’s source branch.
        public var sourceBranchName: String?
        /// The name of the pull request’s source repository.
        public var sourceRepositoryName: String?
        /// The owner of the pull request’s destination repository.
        public var sourceRepositoryOwner: String?
        /// The pull request’s title.
        public var title: String?
        /// The URL of the pull request.
        public var webUrl: String?

        public init(destinationBranchName: String? = nil, destinationRepositoryName: String? = nil, destinationRepositoryOwner: String? = nil, isClosed: Bool? = nil, isCrossRepository: Bool? = nil, number: Int? = nil, sourceBranchName: String? = nil, sourceRepositoryName: String? = nil, sourceRepositoryOwner: String? = nil, title: String? = nil, webUrl: String? = nil) {
            self.destinationBranchName = destinationBranchName
            self.destinationRepositoryName = destinationRepositoryName
            self.destinationRepositoryOwner = destinationRepositoryOwner
            self.isClosed = isClosed
            self.isCrossRepository = isCrossRepository
            self.number = number
            self.sourceBranchName = sourceBranchName
            self.sourceRepositoryName = sourceRepositoryName
            self.sourceRepositoryOwner = sourceRepositoryOwner
            self.title = title
            self.webUrl = webUrl
        }
    }

    /**
     The relationships you included in the request and those on which you can operate.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/scmpullrequest/relationships>
     */
    public struct Relationships: Codable {
        @NullCodable public var repository: Repository?

        public init(repository: Repository? = nil) {
            self.repository = repository
        }

        /**
         The data and links that describe the relationship between the resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/scmpullrequest/relationships/repository>
         */
        public struct Repository: Codable {
            /// The type and ID of a related resource.
            @NullCodable public var data: Data?
            /// The links to the related data and the relationship's self-link.
            @NullCodable public var links: Links?

            public init(data: Data? = nil, links: Links? = nil) {
                self.data = data
                self.links = links
            }

            /**
             The type and ID of a related resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/scmpullrequest/relationships/repository/data>
             */
            public struct Data: Codable {
                /// The opaque resource ID that uniquely identifies the resource.
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
             The links to the related data and the relationship's self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/scmpullrequest/relationships/repository/links>
             */
            public struct Links: Codable {
                /// The link to the related data.
                public var related: String?
                /// The relationship's self-link
                public var `self`: String?

                public init(related: String? = nil, self aSelf: String? = nil) {
                    self.related = related
                    self.`self` = aSelf
                }
            }
        }
    }
}