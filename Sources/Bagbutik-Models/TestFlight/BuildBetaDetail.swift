import Bagbutik_Core
import Foundation

/**
 # BuildBetaDetail
 The data structure that represents a Build Beta Details resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/buildbetadetail>
 */
public struct BuildBetaDetail: Identifiable {
    /// The opaque resource ID that uniquely identifies the resource.
    public let id: String
    /// Navigational links that include the self-link.
    public var links: ResourceLinks?
    /// The resource type.
    public var type: String { "buildBetaDetails" }
    /// The resource's attributes.
    public var attributes: Attributes?
    /// Navigational links to related data and included resource types and IDs.
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
     # BuildBetaDetail.Attributes
     Attributes that describe a Build Beta Details resource.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/buildbetadetail/attributes>
     */
    public struct Attributes {
        /// A Boolean value that enables you to send test invitations to users automatically when the build is available to external groups.
        public var autoNotifyEnabled: Bool?
        /// A state that indicates if the build is available for external testing.
        public var externalBuildState: ExternalBetaState?
        /// A state that indicates if the build is available for internal testing.
        public var internalBuildState: InternalBetaState?

        public init(autoNotifyEnabled: Bool? = nil,
                    externalBuildState: ExternalBetaState? = nil,
                    internalBuildState: InternalBetaState? = nil)
        {
            self.autoNotifyEnabled = autoNotifyEnabled
            self.externalBuildState = externalBuildState
            self.internalBuildState = internalBuildState
        }
    }

    /**
     # BuildBetaDetail.Relationships
     The relationships you included in the request and those on which you can operate.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/buildbetadetail/relationships>
     */
    public struct Relationships {
        public var build: Build?

        public init(build: Build? = nil) {
            self.build = build
        }

        /**
         # BuildBetaDetail.Relationships.Build
         The data and links that describe the relationship between the resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/buildbetadetail/relationships/build>
         */
        public struct Build {
            @NullCodable public var data: Data?
            public var links: Links?

            public init(data: Data? = nil,
                        links: Links? = nil)
            {
                self.data = data
                self.links = links
            }

            /**
             # BuildBetaDetail.Relationships.Build.Data
             The type and ID of a related resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/buildbetadetail/relationships/build/data>
             */
            public struct Data: Identifiable {
                /// The opaque resource ID that uniquely identifies the resource.
                public let id: String
                /// The resource type.
                public var type: String { "builds" }

                public init(id: String) {
                    self.id = id
                }
            }

            /**
             # BuildBetaDetail.Relationships.Build.Links
             The links to the related data and the relationship's self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/buildbetadetail/relationships/build/links>
             */
            public struct Links {
                public var related: String?
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
