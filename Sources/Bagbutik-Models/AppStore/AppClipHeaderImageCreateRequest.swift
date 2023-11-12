import Bagbutik_Core
import Foundation

/**
 # AppClipHeaderImageCreateRequest
 The request body you use to reserve an image asset that appears on the App Clip card of a default App Clip experience.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/appclipheaderimagecreaterequest>
 */
public struct AppClipHeaderImageCreateRequest: RequestBody {
    /// The resource data.
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    /**
     # AppClipHeaderImageCreateRequest.Data
     The data element of the request body.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/appclipheaderimagecreaterequest/data>
     */
    public struct Data {
        /// The resource type.
        public var type: String { "appClipHeaderImages" }
        /// The attributes that describes the request that creates an App Clip Header Images resource.
        public let attributes: Attributes
        /// The navigational links to related data and included resource types and IDs.
        public let relationships: Relationships

        public init(attributes: Attributes,
                    relationships: Relationships)
        {
            self.attributes = attributes
            self.relationships = relationships
        }

        /**
         # AppClipHeaderImageCreateRequest.Data.Attributes
         The attributes you set that describe the new App Clip Header Images resource.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/appclipheaderimagecreaterequest/data/attributes>
         */
        public struct Attributes {
            /// The filename of the image asset that appears on the App Clip card for the default App Clip experience.
            public let fileName: String
            /// The size of the image asset that appears on the App Clip card for the default App Clip experience.
            public let fileSize: Int

            public init(fileName: String,
                        fileSize: Int)
            {
                self.fileName = fileName
                self.fileSize = fileSize
            }
        }

        /**
         # AppClipHeaderImageCreateRequest.Data.Relationships
         The relationships to other resources that you can set with this request.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/appclipheaderimagecreaterequest/data/relationships>
         */
        public struct Relationships {
            /// The related Default App Clip Experience Localizations resource.
            public let appClipDefaultExperienceLocalization: AppClipDefaultExperienceLocalization

            public init(appClipDefaultExperienceLocalization: AppClipDefaultExperienceLocalization) {
                self.appClipDefaultExperienceLocalization = appClipDefaultExperienceLocalization
            }

            /**
             # AppClipHeaderImageCreateRequest.Data.Relationships.AppClipDefaultExperienceLocalization
             The relationship to the Default App Clip Experience Localizations resource you set with the request that creates an App Clip Header Images resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appclipheaderimagecreaterequest/data/relationships/appclipdefaultexperiencelocalization>
             */
            public struct AppClipDefaultExperienceLocalization {
                /// The ID and type of the related Default App Clip Experience Localizations resource.
                public let data: Data

                public init(data: Data) {
                    self.data = data
                }

                /**
                 # AppClipHeaderImageCreateRequest.Data.Relationships.AppClipDefaultExperienceLocalization.Data
                 The type and ID of the Default App Clip Localizations resource that you’re relating with the App Clip Header Images resource you’re creating.

                 Full documentation:
                 <https://developer.apple.com/documentation/appstoreconnectapi/appclipheaderimagecreaterequest/data/relationships/appclipdefaultexperiencelocalization/data>
                 */
                public struct Data: Identifiable {
                    /// The opaque resource ID that uniquely identifies a Default App Clip Experience Localizations resource.
                    public let id: String
                    /// The resource type.
                    public var type: String { "appClipDefaultExperienceLocalizations" }

                    public init(id: String) {
                        self.id = id
                    }
                }
            }
        }
    }
}
