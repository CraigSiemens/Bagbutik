import Bagbutik_Core
import Foundation

/**
 # AppInfoLocalization
 The data structure that represent an App Info Localizations resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/appinfolocalization>
 */
public struct AppInfoLocalization: Identifiable {
    public let id: String
    public var links: ResourceLinks?
    public var type: String { "appInfoLocalizations" }
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
     # AppInfoLocalization.Attributes
     Attributes that describe an App Info Localizations resource.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/appinfolocalization/attributes>
     */
    public struct Attributes {
        public var locale: String?
        public var name: String?
        public var privacyChoicesUrl: String?
        public var privacyPolicyText: String?
        public var privacyPolicyUrl: String?
        public var subtitle: String?

        public init(locale: String? = nil,
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
     # AppInfoLocalization.Relationships
     The relationships you included in the request and those on which you can operate.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/appinfolocalization/relationships>
     */
    public struct Relationships {
        public var appInfo: AppInfo?

        public init(appInfo: AppInfo? = nil) {
            self.appInfo = appInfo
        }

        /**
         # AppInfoLocalization.Relationships.AppInfo
         The data and links that describe the relationship between the resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/appinfolocalization/relationships/appinfo>
         */
        public struct AppInfo {
            @NullCodable public var data: Data?
            public var links: Links?

            public init(data: Data? = nil,
                        links: Links? = nil)
            {
                self.data = data
                self.links = links
            }

            /**
             # AppInfoLocalization.Relationships.AppInfo.Data
             The type and ID of a related resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appinfolocalization/relationships/appinfo/data>
             */
            public struct Data: Identifiable {
                public let id: String
                public var type: String { "appInfos" }

                public init(id: String) {
                    self.id = id
                }
            }

            /**
             # AppInfoLocalization.Relationships.AppInfo.Links
             The links to the related data and the relationship's self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appinfolocalization/relationships/appinfo/links>
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
