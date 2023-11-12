import Bagbutik_Core
import Foundation

/**
 # ScmGitReference
 The data structure that represents a Git References resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/scmgitreference>
 */
public struct ScmGitReference: Identifiable {
    /// The opaque resource ID that uniquely identifies a Git References resource.
    public let id: String
    /// The navigational links that include the self-link.
    public var links: ResourceLinks?
    /// The resource type.
    public var type: String { "scmGitReferences" }
    /// The attributes that describe the Git References resource.
    public var attributes: Attributes?
    /// The navigational links to related data and included resource types and IDs.
    public var relationships: Relationships?

    public init(id: String,
                links: ResourceLinks? = nil,
                attributes: Attributes? = nil,
                relationships: Relationships? = nil)
    {
        self.id = id
        self.links = links
        self.attributes = attributes
        self.relationships = relationships
    }

    /**
     # ScmGitReference.Attributes
     The attributes that describe a Git Reference resource.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/scmgitreference/attributes>
     */
    public struct Attributes {
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
    public struct Relationships {
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
        public struct Repository {
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
            public struct Data: Identifiable {
                /// The opaque resource ID that uniquely identifies the related Repositories resource.
                public let id: String
                /// The resource type.
                public var type: String { "scmRepositories" }

                public init(id: String) {
                    self.id = id
                }
            }

            /**
             # ScmGitReference.Relationships.Repository.Links
             The links to the related Repositories resource and the relationship’s self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/scmgitreference/relationships/repository/links>
             */
            public struct Links {
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
            }
        }
    }
}
