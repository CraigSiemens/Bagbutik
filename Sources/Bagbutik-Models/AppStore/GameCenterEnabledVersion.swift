import Bagbutik_Core
import Foundation

/**
 # GameCenterEnabledVersion
 The data structure that represents the Game Center Enabled Versions resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/gamecenterenabledversion>
 */
public struct GameCenterEnabledVersion: Identifiable {
    public let id: String
    public var links: ResourceLinks?
    public var type: String { "gameCenterEnabledVersions" }
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

    /**
     # GameCenterEnabledVersion.Attributes
     Attributes that describe a Game Center Enabled Versions resource.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/gamecenterenabledversion/attributes>
     */
    public struct Attributes {
        public var iconAsset: ImageAsset?
        public var platform: Platform?
        public var versionString: String?

        public init(iconAsset: ImageAsset? = nil,
                    platform: Platform? = nil,
                    versionString: String? = nil)
        {
            self.iconAsset = iconAsset
            self.platform = platform
            self.versionString = versionString
        }
    }

    /**
     # GameCenterEnabledVersion.Relationships
     The relationships you included in the request and those on which you can operate.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/gamecenterenabledversion/relationships>
     */
    public struct Relationships {
        public var app: App?
        public var compatibleVersions: CompatibleVersions?

        public init(app: App? = nil,
                    compatibleVersions: CompatibleVersions? = nil)
        {
            self.app = app
            self.compatibleVersions = compatibleVersions
        }

        /**
         # GameCenterEnabledVersion.Relationships.App
         The data and links that describe the relationship between the resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/gamecenterenabledversion/relationships/app>
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
             # GameCenterEnabledVersion.Relationships.App.Data
             The type and ID of a related resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/gamecenterenabledversion/relationships/app/data>
             */
            public struct Data: Identifiable {
                public let id: String
                public var type: String { "apps" }

                public init(id: String) {
                    self.id = id
                }
            }

            /**
             # GameCenterEnabledVersion.Relationships.App.Links
             The links to the related data and the relationship's self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/gamecenterenabledversion/relationships/app/links>
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
         # GameCenterEnabledVersion.Relationships.CompatibleVersions
         The data and links that describe the relationship between the resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/gamecenterenabledversion/relationships/compatibleversions>
         */
        public struct CompatibleVersions {
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
             # GameCenterEnabledVersion.Relationships.CompatibleVersions.Data
             The type and ID of a related resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/gamecenterenabledversion/relationships/compatibleversions/data>
             */
            public struct Data: Identifiable {
                public let id: String
                public var type: String { "gameCenterEnabledVersions" }

                public init(id: String) {
                    self.id = id
                }
            }

            /**
             # GameCenterEnabledVersion.Relationships.CompatibleVersions.Links
             The links to the related data and the relationship's self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/gamecenterenabledversion/relationships/compatibleversions/links>
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
