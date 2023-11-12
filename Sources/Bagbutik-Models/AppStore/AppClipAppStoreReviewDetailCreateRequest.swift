import Bagbutik_Core
import Foundation

/**
 # AppClipAppStoreReviewDetailCreateRequest
 The request body you use to create an App Clip App Store Review Detail.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/appclipappstorereviewdetailcreaterequest>
 */
public struct AppClipAppStoreReviewDetailCreateRequest: RequestBody {
    /// The resource data.
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    /**
     # AppClipAppStoreReviewDetailCreateRequest.Data
     The data element of the request body.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/appclipappstorereviewdetailcreaterequest/data>
     */
    public struct Data {
        /// The resource type.
        public var type: String { "appClipAppStoreReviewDetails" }
        /// The attributes that describe the request that creates an App Clip App Store Review Details resource.
        public var attributes: Attributes?
        /// The navigational links to related data and included resource types and IDs.
        public let relationships: Relationships

        public init(attributes: Attributes? = nil,
                    relationships: Relationships)
        {
            self.attributes = attributes
            self.relationships = relationships
        }

        /**
         # AppClipAppStoreReviewDetailCreateRequest.Data.Attributes
         The attributes you set that describe the new App Clip App Store Review Details resource.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/appclipappstorereviewdetailcreaterequest/data/attributes>
         */
        public struct Attributes {
            /// An array of invocation URLs for your App Clip.
            public var invocationUrls: [String]?

            public init(invocationUrls: [String]? = nil) {
                self.invocationUrls = invocationUrls
            }
        }

        /**
         # AppClipAppStoreReviewDetailCreateRequest.Data.Relationships
         The relationships to other resources that you can set with this request.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/appclipappstorereviewdetailcreaterequest/data/relationships>
         */
        public struct Relationships {
            /// The related Default App Clip Experiences resource.
            public let appClipDefaultExperience: AppClipDefaultExperience

            public init(appClipDefaultExperience: AppClipDefaultExperience) {
                self.appClipDefaultExperience = appClipDefaultExperience
            }

            /**
             # AppClipAppStoreReviewDetailCreateRequest.Data.Relationships.AppClipDefaultExperience
             The relationship to the Default App Clip Experiences resource you set with the request that creates an App Clip App Store Review Details resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appclipappstorereviewdetailcreaterequest/data/relationships/appclipdefaultexperience>
             */
            public struct AppClipDefaultExperience {
                /// The ID and type of the related Default App Clip Experiences resource.
                public let data: Data

                public init(data: Data) {
                    self.data = data
                }

                /**
                 # AppClipAppStoreReviewDetailCreateRequest.Data.Relationships.AppClipDefaultExperience.Data
                 The type and ID of the Default App Clip Experiences resource that you’re relating with the App Clip App Store Review Details resource you’re creating.

                 Full documentation:
                 <https://developer.apple.com/documentation/appstoreconnectapi/appclipappstorereviewdetailcreaterequest/data/relationships/appclipdefaultexperience/data>
                 */
                public struct Data: Identifiable {
                    /// The opaque resource ID that uniquely identifies the related Default App Clip Experiences resource.
                    public let id: String
                    /// The resource type.
                    public var type: String { "appClipDefaultExperiences" }

                    public init(id: String) {
                        self.id = id
                    }
                }
            }
        }
    }
}
