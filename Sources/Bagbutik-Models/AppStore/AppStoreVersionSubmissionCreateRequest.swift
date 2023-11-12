import Bagbutik_Core
import Foundation

/**
 # AppStoreVersionSubmissionCreateRequest
 The request body you use to create an App Store Version Submission.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/appstoreversionsubmissioncreaterequest>
 */
public struct AppStoreVersionSubmissionCreateRequest: RequestBody {
    /// The data element of the request body.
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    /**
     # AppStoreVersionSubmissionCreateRequest.Data
     The data element of the request body.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/appstoreversionsubmissioncreaterequest/data>
     */
    public struct Data {
        /// The resource type.
        public var type: String { "appStoreVersionSubmissions" }
        /// The relationships to other resources that you can set with this request.
        public let relationships: Relationships

        public init(relationships: Relationships) {
            self.relationships = relationships
        }

        /**
         # AppStoreVersionSubmissionCreateRequest.Data.Relationships
         The relationships to other resources that you can set with this request.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/appstoreversionsubmissioncreaterequest/data/relationships>
         */
        public struct Relationships {
            public let appStoreVersion: AppStoreVersion

            public init(appStoreVersion: AppStoreVersion) {
                self.appStoreVersion = appStoreVersion
            }

            /**
             # AppStoreVersionSubmissionCreateRequest.Data.Relationships.AppStoreVersion
             The relationships to other resources that you can set with this request.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appstoreversionsubmissioncreaterequest/data/relationships/appstoreversion>
             */
            public struct AppStoreVersion {
                public let data: Data

                public init(data: Data) {
                    self.data = data
                }

                /**
                 # AppStoreVersionSubmissionCreateRequest.Data.Relationships.AppStoreVersion.Data
                 The type and ID of the resource that you're relating with the resource you're creating.

                 Full documentation:
                 <https://developer.apple.com/documentation/appstoreconnectapi/appstoreversionsubmissioncreaterequest/data/relationships/appstoreversion/data>
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
