import Bagbutik_Core
import Foundation

/**
 # AppClipDefaultExperienceUpdateRequest
 The request body you use to update a default App Clip experience.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/appclipdefaultexperienceupdaterequest>
 */
public struct AppClipDefaultExperienceUpdateRequest: RequestBody {
    /// The resource data.
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    /**
     # AppClipDefaultExperienceUpdateRequest.Data
     The data element of the request body.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/appclipdefaultexperienceupdaterequest/data>
     */
    public struct Data: Identifiable {
        /// The opaque resource ID that uniquely identifies the request.
        public let id: String
        /// The resource type.
        public var type: String { "appClipDefaultExperiences" }
        /// The attributes that describe the request that updates a Default App Clip Experiences resource.
        public var attributes: Attributes?
        /// The navigational links to related data and included resource types and IDs.
        public var relationships: Relationships?

        public init(id: String,
                    attributes: Attributes? = nil,
                    relationships: Relationships? = nil)
        {
            self.id = id
            self.attributes = attributes
            self.relationships = relationships
        }

        /**
         # AppClipDefaultExperienceUpdateRequest.Data.Attributes
         The attributes you set that describe the new Default App Clip Experiences resource.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/appclipdefaultexperienceupdaterequest/data/attributes>
         */
        public struct Attributes {
            /// The call-to-action verb that appears on the App Clip card.
            public var action: AppClipAction?

            public init(action: AppClipAction? = nil) {
                self.action = action
            }
        }

        /**
         # AppClipDefaultExperienceUpdateRequest.Data.Relationships
         The relationships to other resources that you can set with this request.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/appclipdefaultexperienceupdaterequest/data/relationships>
         */
        public struct Relationships {
            /// The related App Store Versions resource.
            public var releaseWithAppStoreVersion: ReleaseWithAppStoreVersion?

            public init(releaseWithAppStoreVersion: ReleaseWithAppStoreVersion? = nil) {
                self.releaseWithAppStoreVersion = releaseWithAppStoreVersion
            }

            /**
             # AppClipDefaultExperienceUpdateRequest.Data.Relationships.ReleaseWithAppStoreVersion
             The relationship to the App Store Versions resource you set with the request that updates a Default App Clip Experiences resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appclipdefaultexperienceupdaterequest/data/relationships/releasewithappstoreversion>
             */
            public struct ReleaseWithAppStoreVersion {
                /// The ID and type of the related App Store Versions resource.
                @NullCodable public var data: Data?

                public init(data: Data? = nil) {
                    self.data = data
                }

                /**
                 # AppClipDefaultExperienceUpdateRequest.Data.Relationships.ReleaseWithAppStoreVersion.Data
                 The type and ID of the App Store Versions resource that you’re relating with the Default App Clip Experiences resource you’re updating.

                 Full documentation:
                 <https://developer.apple.com/documentation/appstoreconnectapi/appclipdefaultexperienceupdaterequest/data/relationships/releasewithappstoreversion/data>
                 */
                public struct Data: Identifiable {
                    /// The opaque resource ID that uniquely identifies the related App Store Versions resource.
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
