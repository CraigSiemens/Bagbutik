import Bagbutik_Core
import Foundation

/**
 # AppStoreVersionLocalizationUpdateRequest
 The request body you use to update an App Store Version Localization

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/appstoreversionlocalizationupdaterequest>
 */
public struct AppStoreVersionLocalizationUpdateRequest: RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    /**
     # AppStoreVersionLocalizationUpdateRequest.Data
     The data element of the request body.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/appstoreversionlocalizationupdaterequest/data>
     */
    public struct Data: Identifiable {
        public let id: String
        public var type: String { "appStoreVersionLocalizations" }
        public var attributes: Attributes?

        public init(id: String,
                    attributes: Attributes? = nil)
        {
            self.id = id
            self.attributes = attributes
        }

        /**
         # AppStoreVersionLocalizationUpdateRequest.Data.Attributes
         Attributes whose values you're changing as part of the update request.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/appstoreversionlocalizationupdaterequest/data/attributes>
         */
        public struct Attributes {
            public var description: String?
            public var keywords: String?
            public var marketingUrl: String?
            public var promotionalText: String?
            public var supportUrl: String?
            public var whatsNew: String?

            public init(description: String? = nil,
                        keywords: String? = nil,
                        marketingUrl: String? = nil,
                        promotionalText: String? = nil,
                        supportUrl: String? = nil,
                        whatsNew: String? = nil)
            {
                self.description = description
                self.keywords = keywords
                self.marketingUrl = marketingUrl
                self.promotionalText = promotionalText
                self.supportUrl = supportUrl
                self.whatsNew = whatsNew
            }
        }
    }
}
