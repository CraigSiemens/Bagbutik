import Bagbutik_Core
import Foundation

/**
 # BetaLicenseAgreement
 The data structure that represents a Beta License Agreements resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/betalicenseagreement>
 */
public struct BetaLicenseAgreement: Identifiable {
    /// The opaque resource ID that uniquely identifies the resource.
    public let id: String
    /// Navigational links that include the self-link.
    public var links: ResourceLinks?
    /// The resource type.
    public var type: String { "betaLicenseAgreements" }
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
     # BetaLicenseAgreement.Attributes
     Attributes that describe a Beta License Agreements resource.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/betalicenseagreement/attributes>
     */
    public struct Attributes {
        /// The license agreement text for your beta app that displays to users.
        public var agreementText: String?

        public init(agreementText: String? = nil) {
            self.agreementText = agreementText
        }
    }

    /**
     # BetaLicenseAgreement.Relationships
     The relationships you included in the request and those on which you can operate.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/betalicenseagreement/relationships>
     */
    public struct Relationships {
        public var app: App?

        public init(app: App? = nil) {
            self.app = app
        }

        /**
         # BetaLicenseAgreement.Relationships.App
         The data and links that describe the relationship between the resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/betalicenseagreement/relationships/app>
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
             # BetaLicenseAgreement.Relationships.App.Data
             The type and ID of a related resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/betalicenseagreement/relationships/app/data>
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
             # BetaLicenseAgreement.Relationships.App.Links
             The links to the related data and the relationship's self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/betalicenseagreement/relationships/app/links>
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
