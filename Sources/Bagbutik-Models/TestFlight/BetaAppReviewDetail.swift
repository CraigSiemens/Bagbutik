import Bagbutik_Core
import Foundation

/**
 # BetaAppReviewDetail
 The data structure that represents a Beta App Review Details resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/betaappreviewdetail>
 */
public struct BetaAppReviewDetail: Identifiable {
    /// The opaque resource ID that uniquely identifies the resource.
    public let id: String
    /// Navigational links that include the self-link.
    public var links: ResourceLinks?
    /// The resource type.
    public var type: String { "betaAppReviewDetails" }
    /// The resource's attributes.
    public var attributes: Attributes?
    /// Navigational links to related data and included resource types and IDs.
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
     # BetaAppReviewDetail.Attributes
     Attributes that describe a Beta App Review Details resource.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/betaappreviewdetail/attributes>
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

    /**
     # BetaAppReviewDetail.Relationships
     The relationships you included in the request and those on which you can operate.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/betaappreviewdetail/relationships>
     */
    public struct Relationships {
        public var app: App?

        public init(app: App? = nil) {
            self.app = app
        }

        /**
         # BetaAppReviewDetail.Relationships.App
         The data and links that describe the relationship between the resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/betaappreviewdetail/relationships/app>
         */
        public struct App {
            @NullCodable public var data: Data?
            public var links: Links?

            public init(data: Data? = nil,
                        links: Links? = nil)
            {
                self.data = data
                self.links = links
            }

            /**
             # BetaAppReviewDetail.Relationships.App.Data
             The type and ID of a related resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/betaappreviewdetail/relationships/app/data>
             */
            public struct Data: Identifiable {
                /// The opaque resource ID that uniquely identifies the resource.
                public let id: String
                /// The resource type.
                public var type: String { "apps" }

                public init(id: String) {
                    self.id = id
                }
            }

            /**
             # BetaAppReviewDetail.Relationships.App.Links
             The links to the related data and the relationship's self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/betaappreviewdetail/relationships/app/links>
             */
            public struct Links {
                public var related: String?
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
