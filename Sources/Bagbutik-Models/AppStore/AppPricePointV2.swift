import Bagbutik_Core
import Foundation

/**
 # AppPricePointV2
 The data structure that represents an App Price Point V2 resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/apppricepointv2>
 */
public struct AppPricePointV2: Identifiable {
    /// The opaque resource ID that uniquely identifies the resource.
    public let id: String
    /// Navigational links that include the self-link.
    public var links: ResourceLinks?
    /// The resource type.
    public var type: String { "appPricePoints" }
    /// The resource’s attributes.
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
     # AppPricePointV2.Attributes
     Attributes that describe an App Price Point V2 resource.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/apppricepointv2/attributes>
     */
    public struct Attributes {
        /// The price to the customer.
        public var customerPrice: String?
        /// The proceeds that go to the developer.
        public var proceeds: String?

        public init(customerPrice: String? = nil,
                    proceeds: String? = nil)
        {
            self.customerPrice = customerPrice
            self.proceeds = proceeds
        }
    }

    /**
     # AppPricePointV2.Relationships
     The relationships you included in a request and those on which you can operate.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/apppricepointv2/relationships>
     */
    public struct Relationships {
        public var app: App?
        public var priceTier: PriceTier?
        public var territory: Territory?

        public init(app: App? = nil,
                    priceTier: PriceTier? = nil,
                    territory: Territory? = nil)
        {
            self.app = app
            self.priceTier = priceTier
            self.territory = territory
        }

        /**
         # AppPricePointV2.Relationships.App
         The data and links that describe the relationship between the resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/apppricepointv2/relationships/app>
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
             # AppPricePointV2.Relationships.App.Data
             The type and ID of a related resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/apppricepointv2/relationships/app/data>
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
             # AppPricePointV2.Relationships.App.Links
             The links to the related data and the relationship’s self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/apppricepointv2/relationships/app/links>
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

        /**
         # AppPricePointV2.Relationships.PriceTier
         The data and links that describe the relationship between the resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/apppricepointv2/relationships/pricetier>
         */
        public struct PriceTier {
            @NullCodable public var data: Data?
            public var links: Links?

            public init(data: Data? = nil,
                        links: Links? = nil)
            {
                self.data = data
                self.links = links
            }

            /**
             # AppPricePointV2.Relationships.PriceTier.Data
             The type and ID of a related resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/apppricepointv2/relationships/pricetier/data>
             */
            public struct Data: Identifiable {
                public let id: String
                public var type: String { "appPriceTiers" }

                public init(id: String) {
                    self.id = id
                }
            }

            /**
             # AppPricePointV2.Relationships.PriceTier.Links
             The links to the related data and the relationship’s self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/apppricepointv2/relationships/pricetier/links>
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

        /**
         # AppPricePointV2.Relationships.Territory
         The data and links that describe the relationship between the resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/apppricepointv2/relationships/territory>
         */
        public struct Territory {
            @NullCodable public var data: Data?
            public var links: Links?

            public init(data: Data? = nil,
                        links: Links? = nil)
            {
                self.data = data
                self.links = links
            }

            /**
             # AppPricePointV2.Relationships.Territory.Data
             The type and ID of a related resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/apppricepointv2/relationships/territory/data>
             */
            public struct Data: Identifiable {
                public let id: String
                public var type: String { "territories" }

                public init(id: String) {
                    self.id = id
                }
            }

            /**
             # AppPricePointV2.Relationships.Territory.Links
             The links to the related data and the relationship’s self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/apppricepointv2/relationships/territory/links>
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
