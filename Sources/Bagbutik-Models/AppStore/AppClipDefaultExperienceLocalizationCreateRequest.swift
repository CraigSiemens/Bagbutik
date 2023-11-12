import Bagbutik_Core
import Foundation

/**
 # AppClipDefaultExperienceLocalizationCreateRequest
 The request body you use to create a Default App Clip Experience Localization.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/appclipdefaultexperiencelocalizationcreaterequest>
 */
public struct AppClipDefaultExperienceLocalizationCreateRequest: RequestBody {
    /// The resource data.
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    /**
     # AppClipDefaultExperienceLocalizationCreateRequest.Data
     The data element of the request body.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/appclipdefaultexperiencelocalizationcreaterequest/data>
     */
    public struct Data {
        /// The resource type.
        public var type: String { "appClipDefaultExperienceLocalizations" }
        /// The attributes that describes the request that creates a Default App Clip Experience Localizations resource.
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
         # AppClipDefaultExperienceLocalizationCreateRequest.Data.Attributes
         The attributes you set that describe the Default App Clip Experience Localizations resource.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/appclipdefaultexperiencelocalizationcreaterequest/data/attributes>
         */
        public struct Attributes {
            /// The specified locale.
            public let locale: String
            /// The subtitle that appears on the App Clip card for the default App Clip experience.
            public var subtitle: String?

            public init(locale: String,
                        subtitle: String? = nil)
            {
                self.locale = locale
                self.subtitle = subtitle
            }
        }

        /**
         # AppClipDefaultExperienceLocalizationCreateRequest.Data.Relationships
         The relationships to other resources that you can set with this request.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/appclipdefaultexperiencelocalizationcreaterequest/data/relationships>
         */
        public struct Relationships {
            /// The related Default App Clip Experiences resource.
            public let appClipDefaultExperience: AppClipDefaultExperience

            public init(appClipDefaultExperience: AppClipDefaultExperience) {
                self.appClipDefaultExperience = appClipDefaultExperience
            }

            /**
             # AppClipDefaultExperienceLocalizationCreateRequest.Data.Relationships.AppClipDefaultExperience
             The relationship to the Default App Clip Experiences resource you set with the request that creates a Default App Clip Experience Localizations resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appclipdefaultexperiencelocalizationcreaterequest/data/relationships/appclipdefaultexperience>
             */
            public struct AppClipDefaultExperience {
                /// The ID and type of the related Default App Clip Experiences resource.
                public let data: Data

                public init(data: Data) {
                    self.data = data
                }

                /**
                 # AppClipDefaultExperienceLocalizationCreateRequest.Data.Relationships.AppClipDefaultExperience.Data
                 The type and ID of the Default App Clip Experiences resource that you’re relating with the Default App Clip Experience Localizations resource you’re creating.

                 Full documentation:
                 <https://developer.apple.com/documentation/appstoreconnectapi/appclipdefaultexperiencelocalizationcreaterequest/data/relationships/appclipdefaultexperience/data>
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
