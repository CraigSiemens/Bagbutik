import Bagbutik_Core
import Foundation

/**
 # BetaAppClipInvocationLocalizationUpdateRequest
 The request body you use to update localized text that appears on the App Clip card for testers.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/betaappclipinvocationlocalizationupdaterequest>
 */
public struct BetaAppClipInvocationLocalizationUpdateRequest: RequestBody {
    /// The resource data.
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    /**
     # BetaAppClipInvocationLocalizationUpdateRequest.Data
     The data element of the request body.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/betaappclipinvocationlocalizationupdaterequest/data>
     */
    public struct Data: Identifiable {
        /// The opaque resource ID that uniquely identifies the request.
        public let id: String
        /// The resource type.
        public var type: String { "betaAppClipInvocationLocalizations" }
        /// The attributes that describe the request that updates a Beta App Clip Localizations resource.
        public var attributes: Attributes?

        public init(id: String,
                    attributes: Attributes? = nil)
        {
            self.id = id
            self.attributes = attributes
        }

        /**
         # BetaAppClipInvocationLocalizationUpdateRequest.Data.Attributes
         The attributes you set that describe the updated Beta App Clip Invocation Localizations resource.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/betaappclipinvocationlocalizationupdaterequest/data/attributes>
         */
        public struct Attributes {
            /// The title that appears on the App Clip card for an App Clip experience you configure for testers who launch the App Clip using the TestFlight app.
            public var title: String?

            public init(title: String? = nil) {
                self.title = title
            }
        }
    }
}
