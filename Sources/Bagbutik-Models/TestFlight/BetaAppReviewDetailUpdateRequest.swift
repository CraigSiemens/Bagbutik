import Bagbutik_Core
import Foundation

/**
 # BetaAppReviewDetailUpdateRequest
 The request body you use to update a Beta App Review Detail.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/betaappreviewdetailupdaterequest>
 */
public struct BetaAppReviewDetailUpdateRequest: RequestBody {
    /// The resource data.
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    /**
     # BetaAppReviewDetailUpdateRequest.Data
     The data element of the request body.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/betaappreviewdetailupdaterequest/data>
     */
    public struct Data: Identifiable {
        /// The opaque resource ID that uniquely identifies the resource.
        public let id: String
        /// The resource type.
        public var type: String { "betaAppReviewDetails" }
        /// The resource's attributes.
        public var attributes: Attributes?

        public init(id: String,
                    attributes: Attributes? = nil)
        {
            self.id = id
            self.attributes = attributes
        }

        /**
         # BetaAppReviewDetailUpdateRequest.Data.Attributes
         Attributes whose values you're changing as part of the update request.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/betaappreviewdetailupdaterequest/data/attributes>
         */
        public struct Attributes {
            /// Email address of contact in case communication is needed with the beta app review.
            public var contactEmail: String?
            /// First name of contact in case communication is needed with the beta app review.
            public var contactFirstName: String?
            /// Last name of contact in case communication is needed with the beta app review.
            public var contactLastName: String?
            /// Phone number of contact in case communication is needed with the beta app review.
            public var contactPhone: String?
            /// The user name to sign in to your app to review its features.
            public var demoAccountName: String?
            /// The password to sign in to your app to review its features.
            public var demoAccountPassword: String?
            /// A Boolean value that indicates if sign-in information is required to review all the features of your app. If users sign in using social media, provide information for an account for review. Credentials must be valid and active for duration of review.
            public var demoAccountRequired: Bool?
            /// Additional information about your app that can help during the review process. Do not include demo account details. Review notes have a maximum of 4,000 characters.
            public var notes: String?

            public init(contactEmail: String? = nil,
                        contactFirstName: String? = nil,
                        contactLastName: String? = nil,
                        contactPhone: String? = nil,
                        demoAccountName: String? = nil,
                        demoAccountPassword: String? = nil,
                        demoAccountRequired: Bool? = nil,
                        notes: String? = nil)
            {
                self.contactEmail = contactEmail
                self.contactFirstName = contactFirstName
                self.contactLastName = contactLastName
                self.contactPhone = contactPhone
                self.demoAccountName = demoAccountName
                self.demoAccountPassword = demoAccountPassword
                self.demoAccountRequired = demoAccountRequired
                self.notes = notes
            }
        }
    }
}
