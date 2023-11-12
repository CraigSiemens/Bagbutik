import Bagbutik_Core
import Foundation

/**
 # AppClipAppStoreReviewDetail
 The data structure that represents an App Clip App Store Review Details resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/appclipappstorereviewdetail>
 */
public struct AppClipAppStoreReviewDetail: Identifiable {
    /// The opaque resource ID that uniquely identifies an App Clip App Store Review Details resource.
    public let id: String
    /// Navigational links that include the self-link.
    public var links: ResourceLinks?
    /// The resource type.
    public var type: String { "appClipAppStoreReviewDetails" }
    /// The attributes that describe the App Clip App Store Review Details resource.
    public var attributes: Attributes?
    /// The navigational links to related data and included resource types and IDs.
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
     # AppClipAppStoreReviewDetail.Attributes
     The attributes that describe the App Clip App Store Review Details resource.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/appclipappstorereviewdetail/attributes>
     */
    public struct Attributes {
        /// An array of invocation URLs for your App Clip.
        public var invocationUrls: [String]?

        public init(invocationUrls: [String]? = nil) {
            self.invocationUrls = invocationUrls
        }
    }

    /**
     # AppClipAppStoreReviewDetail.Relationships
     The relationships of the App Clip App Store Details resource you included in the request and those on which you can operate.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/appclipappstorereviewdetail/relationships>
     */
    public struct Relationships {
        /// The related Default App Clip Experiences resource.
        public var appClipDefaultExperience: AppClipDefaultExperience?

        public init(appClipDefaultExperience: AppClipDefaultExperience? = nil) {
            self.appClipDefaultExperience = appClipDefaultExperience
        }

        /**
         # AppClipAppStoreReviewDetail.Relationships.AppClipDefaultExperience
         The data and links that describe the relationship between the App Clip App Store Review Details and the Default App Clip Experiences resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/appclipappstorereviewdetail/relationships/appclipdefaultexperience>
         */
        public struct AppClipDefaultExperience {
            /// The ID and type of the related Default App Clip Experiences resource.
            @NullCodable public var data: Data?
            /// Navigational links that include the self-link.
            public var links: Links?

            public init(data: Data? = nil,
                        links: Links? = nil)
            {
                self.data = data
                self.links = links
            }

            /**
             # AppClipAppStoreReviewDetail.Relationships.AppClipDefaultExperience.Data
             The links to the related Default App Clip Experiences resource and the relationship’s self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appclipappstorereviewdetail/relationships/appclipdefaultexperience/data>
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

            /**
             # AppClipAppStoreReviewDetail.Relationships.AppClipDefaultExperience.Links
             The type and ID of a related Default App Clip Experiences resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appclipappstorereviewdetail/relationships/appclipdefaultexperience/links>
             */
            public struct Links {
                /// The link to related data.
                public var related: String?
                /// The link to the resource.
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
