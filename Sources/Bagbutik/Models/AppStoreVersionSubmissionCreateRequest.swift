import Foundation

/**
 The request body you use to create an App Store Version Submission.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/appstoreversionsubmissioncreaterequest>
 */
public struct AppStoreVersionSubmissionCreateRequest: Codable, RequestBody {
    /// The resource data.
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    /**
     The data element of the request body.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/appstoreversionsubmissioncreaterequest/data>
     */
    public struct Data: Codable {
        /// The resource type.
        public var type: String { "appStoreVersionSubmissions" }
        /// The relationships to other resources that you can set with this request.
        public let relationships: Relationships

        public init(relationships: Relationships) {
            self.relationships = relationships
        }

        /**
         The relationships to other resources that you can set with this request.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/appstoreversionsubmissioncreaterequest/data/relationships>
         */
        public struct Relationships: Codable {
            public let appStoreVersion: AppStoreVersion

            public init(appStoreVersion: AppStoreVersion) {
                self.appStoreVersion = appStoreVersion
            }

            public struct AppStoreVersion: Codable {
                /// The type and ID of the resource that you're relating with the resource you're creating.
                public let data: Data

                public init(data: Data) {
                    self.data = data
                }

                /**
                 The type and ID of the resource that you're relating with the resource you're creating.

                 Full documentation:
                 <https://developer.apple.com/documentation/appstoreconnectapi/appstoreversionsubmissioncreaterequest/data/relationships/appstoreversion/data>
                 */
                public struct Data: Codable {
                    /// The opaque resource ID that uniquely identifies the resource.
                    public let id: String
                    /// The resource type.
                    public var type: String { "appStoreVersions" }

                    public init(id: String) {
                        self.id = id
                    }
                }
            }
        }
    }
}
