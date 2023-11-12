import Bagbutik_Core
import Foundation

/**
 # PrereleaseVersion
 The data structure that represents a Prerelease Versions  resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/prereleaseversion>
 */
public struct PrereleaseVersion: Identifiable {
    /// The opaque resource ID that uniquely identifies the resource.
    public let id: String
    /// Navigational links that include the self-link.
    public var links: ResourceLinks?
    /// The resource type.
    public var type: String { "preReleaseVersions" }
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
     # PrereleaseVersion.Attributes
     Attributes that describe a Prerelease Versions resource.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/prereleaseversion/attributes>
     */
    public struct Attributes {
        /// The platform of the prerelease version of your app.
        public var platform: Platform?
        /// The version number of the prerelease version of your app.
        public var version: String?

        public init(platform: Platform? = nil,
                    version: String? = nil)
        {
            self.platform = platform
            self.version = version
        }
    }

    /**
     # PrereleaseVersion.Relationships
     The relationships you included in the request and those on which you can operate.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/prereleaseversion/relationships>
     */
    public struct Relationships {
        public var app: App?
        public var builds: Builds?

        public init(app: App? = nil,
                    builds: Builds? = nil)
        {
            self.app = app
            self.builds = builds
        }

        /**
         # PrereleaseVersion.Relationships.App
         The data and links that describe the relationship between the resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/prereleaseversion/relationships/app>
         */
        public struct App {
            @NullCodable public var data: Data?
            public var links: Links?

            public init(data: Data? = nil,
                        links: Links? = nil)
            {
                self.data = data
                self.links = links
            }

            /**
             # PrereleaseVersion.Relationships.App.Data
             The type and ID of a related resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/prereleaseversion/relationships/app/data>
             */
            public struct Data: Identifiable {
                /// The opaque resource ID that uniquely identifies the resource.
                public let id: String
                /// The resource type.
                public var type: String { "apps" }

                public init(id: String) {
                    self.id = id
                }
            }

            /**
             # PrereleaseVersion.Relationships.App.Links
             The links to the related data and the relationship's self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/prereleaseversion/relationships/app/links>
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

        /**
         # PrereleaseVersion.Relationships.Builds
         The data and links that describe the relationship between the resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/prereleaseversion/relationships/builds>
         */
        public struct Builds {
            @NullCodable public var data: [Data]?
            public var links: Links?
            public var meta: PagingInformation?

            public init(data: [Data]? = nil,
                        links: Links? = nil,
                        meta: PagingInformation? = nil)
            {
                self.data = data
                self.links = links
                self.meta = meta
            }

            /**
             # PrereleaseVersion.Relationships.Builds.Data
             The type and ID of a related resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/prereleaseversion/relationships/builds/data>
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
             # PrereleaseVersion.Relationships.Builds.Links
             The links to the related data and the relationship's self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/prereleaseversion/relationships/builds/links>
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
