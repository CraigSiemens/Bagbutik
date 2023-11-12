import Bagbutik_Core
import Foundation

/**
 # GameCenterAppVersion
 The data structure that represents a Game Center app version resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/gamecenterappversion>
 */
public struct GameCenterAppVersion: Identifiable {
    public let id: String
    public var links: ResourceLinks?
    public var type: String { "gameCenterAppVersions" }
    public var attributes: Attributes?
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

    public struct Attributes {
        public var enabled: Bool?

        public init(enabled: Bool? = nil) {
            self.enabled = enabled
        }
    }

    public struct Relationships {
        public var appStoreVersion: AppStoreVersion?
        public var compatibilityVersions: CompatibilityVersions?

        public init(appStoreVersion: AppStoreVersion? = nil,
                    compatibilityVersions: CompatibilityVersions? = nil)
        {
            self.appStoreVersion = appStoreVersion
            self.compatibilityVersions = compatibilityVersions
        }

        public struct AppStoreVersion {
            @NullCodable public var data: Data?
            public var links: Links?

            public init(data: Data? = nil,
                        links: Links? = nil)
            {
                self.data = data
                self.links = links
            }

            public struct Data: Identifiable {
                public let id: String
                public var type: String { "appStoreVersions" }

                public init(id: String) {
                    self.id = id
                }
            }

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

        public struct CompatibilityVersions {
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

            public struct Data: Identifiable {
                public let id: String
                public var type: String { "gameCenterAppVersions" }

                public init(id: String) {
                    self.id = id
                }
            }

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
