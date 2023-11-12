import Bagbutik_Core
import Foundation

/**
 # AppClipDefaultExperienceLocalizationUpdateRequest
 The request body you use to update a Default App Clip Experiences resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/appclipdefaultexperiencelocalizationupdaterequest>
 */
public struct AppClipDefaultExperienceLocalizationUpdateRequest: RequestBody {
    /// The resource data.
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    /**
     # AppClipDefaultExperienceLocalizationUpdateRequest.Data
     The data element of the request body.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/appclipdefaultexperiencelocalizationupdaterequest/data>
     */
    public struct Data: Identifiable {
        /// The opaque resource ID that uniquely identifies the request.
        public let id: String
        /// The resource type.
        public var type: String { "appClipDefaultExperienceLocalizations" }
        /// The attributes that describes the request that updates a Default App Clip Experience Localizations resource.
        public var attributes: Attributes?

        public init(id: String,
                    attributes: Attributes? = nil)
        {
            self.id = id
            self.attributes = attributes
        }

        /**
         # AppClipDefaultExperienceLocalizationUpdateRequest.Data.Attributes
         The attributes you set that describe the Default App Clip Experience Localizations resource.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/appclipdefaultexperiencelocalizationupdaterequest/data/attributes>
         */
        public struct Attributes {
            /// The subtitle that appears on the App Clip card for the default App Clip experience.
            public var subtitle: String?

            public init(subtitle: String? = nil) {
                self.subtitle = subtitle
            }
        }
    }
}
