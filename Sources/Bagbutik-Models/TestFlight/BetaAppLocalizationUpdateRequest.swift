import Bagbutik_Core
import Foundation

/**
 # BetaAppLocalizationUpdateRequest
 The request body you use to update a Beta App Localization.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/betaapplocalizationupdaterequest>
 */
public struct BetaAppLocalizationUpdateRequest: RequestBody {
    /// The resource data.
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    /**
     # BetaAppLocalizationUpdateRequest.Data
     The data element of the request body.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/betaapplocalizationupdaterequest/data>
     */
    public struct Data: Identifiable {
        /// The opaque resource ID that uniquely identifies the resource.
        public let id: String
        /// The resource type.
        public var type: String { "betaAppLocalizations" }
        /// The resource's attributes.
        public var attributes: Attributes?

        public init(id: String,
                    attributes: Attributes? = nil)
        {
            self.id = id
            self.attributes = attributes
        }

        /**
         # BetaAppLocalizationUpdateRequest.Data.Attributes
         Attributes whose values you're changing as part of the update request.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/betaapplocalizationupdaterequest/data/attributes>
         */
        public struct Attributes {
            /// A description of your app that highlights features and functionality.
            public var description: String?
            /// An email address to which beta testers can send feedback. Also appears as the reply-to address for TestFlight invitation emails.
            public var feedbackEmail: String?
            /// A URL with information about your app. This URL is visible to testers in the TestFlight app
            public var marketingUrl: String?
            /// A URL that links to your company’s privacy policy. Privacy policies are recommended for all apps that collect user or device-related data or as otherwise required by law.
            public var privacyPolicyUrl: String?
            /// Your company’s privacy policy. Privacy policies are recommended for all apps that collect user or device-related data, or as otherwise required by law.
            public var tvOsPrivacyPolicy: String?

            public init(description: String? = nil,
                        feedbackEmail: String? = nil,
                        marketingUrl: String? = nil,
                        privacyPolicyUrl: String? = nil,
                        tvOsPrivacyPolicy: String? = nil)
            {
                self.description = description
                self.feedbackEmail = feedbackEmail
                self.marketingUrl = marketingUrl
                self.privacyPolicyUrl = privacyPolicyUrl
                self.tvOsPrivacyPolicy = tvOsPrivacyPolicy
            }
        }
    }
}
