import Bagbutik_Core
import Foundation

/**
 # AppInfoLocalizationUpdateRequest
 The request body you use to update an App Info Localization.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/appinfolocalizationupdaterequest>
 */
public struct AppInfoLocalizationUpdateRequest: RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    /**
     # AppInfoLocalizationUpdateRequest.Data
     The data element of the request body.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/appinfolocalizationupdaterequest/data>
     */
    public struct Data: Identifiable {
        public let id: String
        public var type: String { "appInfoLocalizations" }
        public var attributes: Attributes?

        public init(id: String,
                    attributes: Attributes? = nil)
        {
            self.id = id
            self.attributes = attributes
        }

        /**
         # AppInfoLocalizationUpdateRequest.Data.Attributes
         Attributes whose values you're changing as part of the update request.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/appinfolocalizationupdaterequest/data/attributes>
         */
        public struct Attributes {
            public var name: String?
            public var privacyChoicesUrl: String?
            public var privacyPolicyText: String?
            public var privacyPolicyUrl: String?
            public var subtitle: String?

            public init(name: String? = nil,
                        privacyChoicesUrl: String? = nil,
                        privacyPolicyText: String? = nil,
                        privacyPolicyUrl: String? = nil,
                        subtitle: String? = nil)
            {
                self.name = name
                self.privacyChoicesUrl = privacyChoicesUrl
                self.privacyPolicyText = privacyPolicyText
                self.privacyPolicyUrl = privacyPolicyUrl
                self.subtitle = subtitle
            }
        }
    }
}
