import Bagbutik_Core
import Foundation

/**
 # AppScreenshotSetCreateRequest
 The request body you use to create an App Screenshot Set.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/appscreenshotsetcreaterequest>
 */
public struct AppScreenshotSetCreateRequest: RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    /**
     # AppScreenshotSetCreateRequest.Data
     The data element of the request body.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/appscreenshotsetcreaterequest/data>
     */
    public struct Data {
        public var type: String { "appScreenshotSets" }
        public let attributes: Attributes
        public var relationships: Relationships?

        public init(attributes: Attributes,
                    relationships: Relationships? = nil)
        {
            self.attributes = attributes
            self.relationships = relationships
        }

        /**
         # AppScreenshotSetCreateRequest.Data.Attributes
         Attributes that you set that describe the new resource.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/appscreenshotsetcreaterequest/data/attributes>
         */
        public struct Attributes {
            public let screenshotDisplayType: ScreenshotDisplayType

            public init(screenshotDisplayType: ScreenshotDisplayType) {
                self.screenshotDisplayType = screenshotDisplayType
            }
        }

        /**
         # AppScreenshotSetCreateRequest.Data.Relationships
         The relationships to other resources that you can set with this request.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/appscreenshotsetcreaterequest/data/relationships>
         */
        public struct Relationships {
            public var appCustomProductPageLocalization: AppCustomProductPageLocalization?
            public var appStoreVersionExperimentTreatmentLocalization: AppStoreVersionExperimentTreatmentLocalization?
            public var appStoreVersionLocalization: AppStoreVersionLocalization?

            public init(appCustomProductPageLocalization: AppCustomProductPageLocalization? = nil,
                        appStoreVersionExperimentTreatmentLocalization: AppStoreVersionExperimentTreatmentLocalization? = nil,
                        appStoreVersionLocalization: AppStoreVersionLocalization? = nil)
            {
                self.appCustomProductPageLocalization = appCustomProductPageLocalization
                self.appStoreVersionExperimentTreatmentLocalization = appStoreVersionExperimentTreatmentLocalization
                self.appStoreVersionLocalization = appStoreVersionLocalization
            }

            public struct AppCustomProductPageLocalization {
                @NullCodable public var data: Data?

                public init(data: Data? = nil) {
                    self.data = data
                }

                public struct Data: Identifiable {
                    public let id: String
                    public var type: String { "appCustomProductPageLocalizations" }

                    public init(id: String) {
                        self.id = id
                    }
                }
            }

            public struct AppStoreVersionExperimentTreatmentLocalization {
                @NullCodable public var data: Data?

                public init(data: Data? = nil) {
                    self.data = data
                }

                public struct Data: Identifiable {
                    public let id: String
                    public var type: String { "appStoreVersionExperimentTreatmentLocalizations" }

                    public init(id: String) {
                        self.id = id
                    }
                }
            }

            /**
             # AppScreenshotSetCreateRequest.Data.Relationships.AppStoreVersionLocalization
             The relationships to other resources that you can set with this request.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appscreenshotsetcreaterequest/data/relationships/appstoreversionlocalization>
             */
            public struct AppStoreVersionLocalization {
                @NullCodable public var data: Data?

                public init(data: Data? = nil) {
                    self.data = data
                }

                /**
                 # AppScreenshotSetCreateRequest.Data.Relationships.AppStoreVersionLocalization.Data
                 The type and ID of the resource that you're relating with the resource you're creating.

                 Full documentation:
                 <https://developer.apple.com/documentation/appstoreconnectapi/appscreenshotsetcreaterequest/data/relationships/appstoreversionlocalization/data>
                 */
                public struct Data: Identifiable {
                    public let id: String
                    public var type: String { "appStoreVersionLocalizations" }

                    public init(id: String) {
                        self.id = id
                    }
                }
            }
        }
    }
}
