import Bagbutik_Core
import Foundation

/**
 # AppStoreVersionReleaseRequestCreateRequest
 The request body you use to manually release an App Store approved version of your app.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/appstoreversionreleaserequestcreaterequest>
 */
public struct AppStoreVersionReleaseRequestCreateRequest: RequestBody {
    /// The data element of the request body.
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    /**
     # AppStoreVersionReleaseRequestCreateRequest.Data
     The data element of the request body.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/appstoreversionreleaserequestcreaterequest/data>
     */
    public struct Data {
        public var type: String { "appStoreVersionReleaseRequests" }
        public let relationships: Relationships

        public init(relationships: Relationships) {
            self.relationships = relationships
        }

        /**
         # AppStoreVersionReleaseRequestCreateRequest.Data.Relationships
         The relationships to other resources that you can set with this request.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/appstoreversionreleaserequestcreaterequest/data/relationships>
         */
        public struct Relationships {
            public let appStoreVersion: AppStoreVersion

            public init(appStoreVersion: AppStoreVersion) {
                self.appStoreVersion = appStoreVersion
            }

            /**
             # AppStoreVersionReleaseRequestCreateRequest.Data.Relationships.AppStoreVersion
             The relationships to other resources that you can set with this request.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appstoreversionreleaserequestcreaterequest/data/relationships/appstoreversion>
             */
            public struct AppStoreVersion {
                public let data: Data

                public init(data: Data) {
                    self.data = data
                }

                /**
                 # AppStoreVersionReleaseRequestCreateRequest.Data.Relationships.AppStoreVersion.Data
                 The type and ID of the resource that you're relating with the resource you're creating.

                 Full documentation:
                 <https://developer.apple.com/documentation/appstoreconnectapi/appstoreversionreleaserequestcreaterequest/data/relationships/appstoreversion/data>
                 */
                public struct Data: Identifiable {
                    public let id: String
                    public var type: String { "appStoreVersions" }

                    public init(id: String) {
                        self.id = id
                    }
                }
            }
        }
    }
}
