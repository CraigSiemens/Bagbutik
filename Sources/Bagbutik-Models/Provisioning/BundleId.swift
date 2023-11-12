import Bagbutik_Core
import Foundation

/**
 # BundleId
 The data structure that represents a Bundle IDs resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/bundleid>
 */
public struct BundleId: Identifiable {
    /// The opaque resource ID that uniquely identifies the resource.
    public let id: String
    /// Navigational links that include the self-link.
    public var links: ResourceLinks?
    /// The resource type.
    public var type: String { "bundleIds" }
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
     # BundleId.Attributes
     Attributes that describe a Bundle IDs resource.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/bundleid/attributes>
     */
    public struct Attributes {
        public var identifier: String?
        public var name: String?
        public var platform: BundleIdPlatform?
        public var seedId: String?

        public init(identifier: String? = nil,
                    name: String? = nil,
                    platform: BundleIdPlatform? = nil,
                    seedId: String? = nil)
        {
            self.identifier = identifier
            self.name = name
            self.platform = platform
            self.seedId = seedId
        }
    }

    /**
     # BundleId.Relationships
     The relationships you included in the request and those on which you can operate.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/bundleid/relationships>
     */
    public struct Relationships {
        public var app: App?
        public var bundleIdCapabilities: BundleIdCapabilities?
        public var profiles: Profiles?

        public init(app: App? = nil,
                    bundleIdCapabilities: BundleIdCapabilities? = nil,
                    profiles: Profiles? = nil)
        {
            self.app = app
            self.bundleIdCapabilities = bundleIdCapabilities
            self.profiles = profiles
        }

        /**
         # BundleId.Relationships.App
         The data and links that describe the relationship between the resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/bundleid/relationships/app>
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
             # BundleId.Relationships.App.Data
             The type and ID of a related resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/bundleid/relationships/app/data>
             */
            public struct Data: Identifiable {
                public let id: String
                public var type: String { "apps" }

                public init(id: String) {
                    self.id = id
                }
            }

            /**
             # BundleId.Relationships.App.Links
             The links to the related data and the relationship's self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/bundleid/relationships/app/links>
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
         # BundleId.Relationships.BundleIdCapabilities
         The data and links that describe the relationship between the resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/bundleid/relationships/bundleidcapabilities>
         */
        public struct BundleIdCapabilities {
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
             # BundleId.Relationships.BundleIdCapabilities.Data
             The type and ID of a related resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/bundleid/relationships/bundleidcapabilities/data>
             */
            public struct Data: Identifiable {
                public let id: String
                public var type: String { "bundleIdCapabilities" }

                public init(id: String) {
                    self.id = id
                }
            }

            /**
             # BundleId.Relationships.BundleIdCapabilities.Links
             The links to the related data and the relationship's self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/bundleid/relationships/bundleidcapabilities/links>
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
         # BundleId.Relationships.Profiles
         The data and links that describe the relationship between the resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/bundleid/relationships/profiles>
         */
        public struct Profiles {
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
             # BundleId.Relationships.Profiles.Data
             The type and ID of a related resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/bundleid/relationships/profiles/data>
             */
            public struct Data: Identifiable {
                public let id: String
                public var type: String { "profiles" }

                public init(id: String) {
                    self.id = id
                }
            }

            /**
             # BundleId.Relationships.Profiles.Links
             The links to the related data and the relationship's self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/bundleid/relationships/profiles/links>
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
