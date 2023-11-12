import Bagbutik_Core
import Foundation

/**
 # AppStoreVersionSubmission
 The data structure that represents an App Store Version Submissions resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/appstoreversionsubmission>
 */
public struct AppStoreVersionSubmission: Identifiable {
    public let id: String
    public var links: ResourceLinks?
    public var type: String { "appStoreVersionSubmissions" }
    public var relationships: Relationships?

    public init(id: String,
                links: ResourceLinks? = nil,
                relationships: Relationships? = nil)
    {
        self.id = id
        self.links = links
        self.relationships = relationships
    }

    /**
     # AppStoreVersionSubmission.Relationships
     The relationships you included in the request and those on which you can operate.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/appstoreversionsubmission/relationships>
     */
    public struct Relationships {
        public var appStoreVersion: AppStoreVersion?

        public init(appStoreVersion: AppStoreVersion? = nil) {
            self.appStoreVersion = appStoreVersion
        }

        /**
         # AppStoreVersionSubmission.Relationships.AppStoreVersion
         The data and links that describe the relationship between the resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/appstoreversionsubmission/relationships/appstoreversion>
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
             # AppStoreVersionSubmission.Relationships.AppStoreVersion.Data
             The type and ID of a related resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appstoreversionsubmission/relationships/appstoreversion/data>
             */
            public struct Data: Identifiable {
                public let id: String
                public var type: String { "appStoreVersions" }

                public init(id: String) {
                    self.id = id
                }
            }

            /**
             # AppStoreVersionSubmission.Relationships.AppStoreVersion.Links
             The links to the related data and the relationship's self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appstoreversionsubmission/relationships/appstoreversion/links>
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
