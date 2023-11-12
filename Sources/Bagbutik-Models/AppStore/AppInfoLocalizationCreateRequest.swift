import Bagbutik_Core
import Foundation

/**
 # AppInfoLocalizationCreateRequest
 The request body you use to create an App Info Localization.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/appinfolocalizationcreaterequest>
 */
public struct AppInfoLocalizationCreateRequest: RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    /**
     # AppInfoLocalizationCreateRequest.Data
     The data element of the request body.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/appinfolocalizationcreaterequest/data>
     */
    public struct Data {
        public var type: String { "appInfoLocalizations" }
        public let attributes: Attributes
        public let relationships: Relationships

        public init(attributes: Attributes,
                    relationships: Relationships)
        {
            self.attributes = attributes
            self.relationships = relationships
        }

        /**
         # AppInfoLocalizationCreateRequest.Data.Attributes
         Attributes that you set that describe the new resource.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/appinfolocalizationcreaterequest/data/attributes>
         */
        public struct Attributes {
            public let locale: String
            public var name: String?
            public var privacyChoicesUrl: String?
            public var privacyPolicyText: String?
            public var privacyPolicyUrl: String?
            public var subtitle: String?

            public init(locale: String,
                        name: String? = nil,
                        privacyChoicesUrl: String? = nil,
                        privacyPolicyText: String? = nil,
                        privacyPolicyUrl: String? = nil,
                        subtitle: String? = nil)
            {
                self.locale = locale
                self.name = name
                self.privacyChoicesUrl = privacyChoicesUrl
                self.privacyPolicyText = privacyPolicyText
                self.privacyPolicyUrl = privacyPolicyUrl
                self.subtitle = subtitle
            }
        }

        /**
         # AppInfoLocalizationCreateRequest.Data.Relationships
         The relationships to other resources that you can set with this request.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/appinfolocalizationcreaterequest/data/relationships>
         */
        public struct Relationships {
            public let appInfo: AppInfo

            public init(appInfo: AppInfo) {
                self.appInfo = appInfo
            }

            /**
             # AppInfoLocalizationCreateRequest.Data.Relationships.AppInfo
             The relationships to other resources that you can set with this request.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appinfolocalizationcreaterequest/data/relationships/appinfo>
             */
            public struct AppInfo {
                public let data: Data

                public init(data: Data) {
                    self.data = data
                }

                /**
                 # AppInfoLocalizationCreateRequest.Data.Relationships.AppInfo.Data
                 The type and ID of the resource that you're relating with the resource you're creating.

                 Full documentation:
                 <https://developer.apple.com/documentation/appstoreconnectapi/appinfolocalizationcreaterequest/data/relationships/appinfo/data>
                 */
                public struct Data: Identifiable {
                    public let id: String
                    public var type: String { "appInfos" }

                    public init(id: String) {
                        self.id = id
                    }
                }
            }
        }
    }
}
