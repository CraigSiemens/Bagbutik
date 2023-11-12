import Bagbutik_Core
import Foundation

/**
 # AppStoreVersionLocalization
 The data structure that represent an App Store Version Localizations resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/appstoreversionlocalization>
 */
public struct AppStoreVersionLocalization: Identifiable {
    public let id: String
    public var links: ResourceLinks?
    public var type: String { "appStoreVersionLocalizations" }
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
     # AppStoreVersionLocalization.Attributes
     Attributes that describe an App Store Version Localizations resource.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/appstoreversionlocalization/attributes>
     */
    public struct Attributes {
        public var description: String?
        public var keywords: String?
        public var locale: String?
        public var marketingUrl: String?
        public var promotionalText: String?
        public var supportUrl: String?
        public var whatsNew: String?

        public init(description: String? = nil,
                    keywords: String? = nil,
                    locale: String? = nil,
                    marketingUrl: String? = nil,
                    promotionalText: String? = nil,
                    supportUrl: String? = nil,
                    whatsNew: String? = nil)
        {
            self.description = description
            self.keywords = keywords
            self.locale = locale
            self.marketingUrl = marketingUrl
            self.promotionalText = promotionalText
            self.supportUrl = supportUrl
            self.whatsNew = whatsNew
        }
    }

    /**
     # AppStoreVersionLocalization.Relationships
     The relationships you included in the request and those on which you can operate.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/appstoreversionlocalization/relationships>
     */
    public struct Relationships {
        public var appPreviewSets: AppPreviewSets?
        public var appScreenshotSets: AppScreenshotSets?
        public var appStoreVersion: AppStoreVersion?

        public init(appPreviewSets: AppPreviewSets? = nil,
                    appScreenshotSets: AppScreenshotSets? = nil,
                    appStoreVersion: AppStoreVersion? = nil)
        {
            self.appPreviewSets = appPreviewSets
            self.appScreenshotSets = appScreenshotSets
            self.appStoreVersion = appStoreVersion
        }

        /**
         # AppStoreVersionLocalization.Relationships.AppPreviewSets
         The data and links that describe the relationship between the resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/appstoreversionlocalization/relationships/apppreviewsets>
         */
        public struct AppPreviewSets {
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
             # AppStoreVersionLocalization.Relationships.AppPreviewSets.Data
             The type and ID of a related resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appstoreversionlocalization/relationships/apppreviewsets/data>
             */
            public struct Data: Identifiable {
                public let id: String
                public var type: String { "appPreviewSets" }

                public init(id: String) {
                    self.id = id
                }
            }

            /**
             # AppStoreVersionLocalization.Relationships.AppPreviewSets.Links
             The links to the related data and the relationship's self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appstoreversionlocalization/relationships/apppreviewsets/links>
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
         # AppStoreVersionLocalization.Relationships.AppScreenshotSets
         The data and links that describe the relationship between the resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/appstoreversionlocalization/relationships/appscreenshotsets>
         */
        public struct AppScreenshotSets {
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
             # AppStoreVersionLocalization.Relationships.AppScreenshotSets.Data
             The type and ID of a related resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appstoreversionlocalization/relationships/appscreenshotsets/data>
             */
            public struct Data: Identifiable {
                public let id: String
                public var type: String { "appScreenshotSets" }

                public init(id: String) {
                    self.id = id
                }
            }

            /**
             # AppStoreVersionLocalization.Relationships.AppScreenshotSets.Links
             The links to the related data and the relationship's self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appstoreversionlocalization/relationships/appscreenshotsets/links>
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
         # AppStoreVersionLocalization.Relationships.AppStoreVersion
         The data and links that describe the relationship between the resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/appstoreversionlocalization/relationships/appstoreversion>
         */
        public struct AppStoreVersion {
            @NullCodable public var data: Data?
            public var links: Links?

            public init(data: Data? = nil,
                        links: Links? = nil)
            {
                self.data = data
                self.links = links
            }

            /**
             # AppStoreVersionLocalization.Relationships.AppStoreVersion.Data
             The type and ID of a related resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appstoreversionlocalization/relationships/appstoreversion/data>
             */
            public struct Data: Identifiable {
                public let id: String
                public var type: String { "appStoreVersions" }

                public init(id: String) {
                    self.id = id
                }
            }

            /**
             # AppStoreVersionLocalization.Relationships.AppStoreVersion.Links
             The links to the related data and the relationship's self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appstoreversionlocalization/relationships/appstoreversion/links>
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
