import Foundation

/**
 The request body you use to create a Beta App Review Submission.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/betaappreviewsubmissioncreaterequest>
 */
public struct BetaAppReviewSubmissionCreateRequest: Codable, RequestBody {
    /// The resource data.
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    /**
     The data element of the request body.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/betaappreviewsubmissioncreaterequest/data>
     */
    public struct Data: Codable {
        /// The resource type.
        public var type: String { "betaAppReviewSubmissions" }
        /// The relationships to other resources that you can set with this request.
        public let relationships: Relationships

        public init(relationships: Relationships) {
            self.relationships = relationships
        }

        /**
         The relationships to other resources that you can set with this request.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/betaappreviewsubmissioncreaterequest/data/relationships>
         */
        public struct Relationships: Codable {
            public let build: Build

            public init(build: Build) {
                self.build = build
            }

            public struct Build: Codable {
                /// The type and ID of the resource that you're relating with the resource you're creating.
                public let data: Data

                public init(data: Data) {
                    self.data = data
                }

                /**
                 The type and ID of the resource that you're relating with the resource you're creating.

                 Full documentation:
                 <https://developer.apple.com/documentation/appstoreconnectapi/betaappreviewsubmissioncreaterequest/data/relationships/build/data>
                 */
                public struct Data: Codable {
                    /// The opaque resource ID that uniquely identifies the resource.
                    public let id: String
                    /// The resource type.
                    public var type: String { "builds" }

                    public init(id: String) {
                        self.id = id
                    }
                }
            }
        }
    }
}
