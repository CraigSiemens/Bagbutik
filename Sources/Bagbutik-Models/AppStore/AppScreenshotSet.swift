import Bagbutik_Core
import Foundation

/**
 # AppScreenshotSet
 The data structure that represent an App Screenshot Sets resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/appscreenshotset>
 */
public struct AppScreenshotSet: Identifiable {
    public let id: String
    public var links: ResourceLinks?
    public var type: String { "appScreenshotSets" }
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
     # AppScreenshotSet.Attributes
     Attributes that describe an App Screenshot Sets resource.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/appscreenshotset/attributes>
     */
    public struct Attributes {
        public var screenshotDisplayType: ScreenshotDisplayType?

        public init(screenshotDisplayType: ScreenshotDisplayType? = nil) {
            self.screenshotDisplayType = screenshotDisplayType
        }
    }

    /**
     # AppScreenshotSet.Relationships
     The relationships you included in the request and those on which you can operate.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/appscreenshotset/relationships>
     */
    public struct Relationships {
        public var appCustomProductPageLocalization: AppCustomProductPageLocalization?
        public var appScreenshots: AppScreenshots?
        public var appStoreVersionExperimentTreatmentLocalization: AppStoreVersionExperimentTreatmentLocalization?
        public var appStoreVersionLocalization: AppStoreVersionLocalization?

        public init(appCustomProductPageLocalization: AppCustomProductPageLocalization? = nil,
                    appScreenshots: AppScreenshots? = nil,
                    appStoreVersionExperimentTreatmentLocalization: AppStoreVersionExperimentTreatmentLocalization? = nil,
                    appStoreVersionLocalization: AppStoreVersionLocalization? = nil)
        {
            self.appCustomProductPageLocalization = appCustomProductPageLocalization
            self.appScreenshots = appScreenshots
            self.appStoreVersionExperimentTreatmentLocalization = appStoreVersionExperimentTreatmentLocalization
            self.appStoreVersionLocalization = appStoreVersionLocalization
        }

        public struct AppCustomProductPageLocalization {
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
                public var type: String { "appCustomProductPageLocalizations" }

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

        /**
         # AppScreenshotSet.Relationships.AppScreenshots
         The data and links that describe the relationship between the resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/appscreenshotset/relationships/appscreenshots>
         */
        public struct AppScreenshots {
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
             # AppScreenshotSet.Relationships.AppScreenshots.Data
             The type and ID of a related resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appscreenshotset/relationships/appscreenshots/data>
             */
            public struct Data: Identifiable {
                public let id: String
                public var type: String { "appScreenshots" }

                public init(id: String) {
                    self.id = id
                }
            }

            /**
             # AppScreenshotSet.Relationships.AppScreenshots.Links
             The links to the related data and the relationship's self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appscreenshotset/relationships/appscreenshots/links>
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

        public struct AppStoreVersionExperimentTreatmentLocalization {
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
                public var type: String { "appStoreVersionExperimentTreatmentLocalizations" }

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

        /**
         # AppScreenshotSet.Relationships.AppStoreVersionLocalization
         The data and links that describe the relationship between the resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/appscreenshotset/relationships/appstoreversionlocalization>
         */
        public struct AppStoreVersionLocalization {
            @NullCodable public var data: Data?
            public var links: Links?

            public init(data: Data? = nil,
                        links: Links? = nil)
            {
                self.data = data
                self.links = links
            }

            /**
             # AppScreenshotSet.Relationships.AppStoreVersionLocalization.Data
             The type and ID of a related resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appscreenshotset/relationships/appstoreversionlocalization/data>
             */
            public struct Data: Identifiable {
                public let id: String
                public var type: String { "appStoreVersionLocalizations" }

                public init(id: String) {
                    self.id = id
                }
            }

            /**
             # AppScreenshotSet.Relationships.AppStoreVersionLocalization.Links
             The links to the related data and the relationship's self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appscreenshotset/relationships/appstoreversionlocalization/links>
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
