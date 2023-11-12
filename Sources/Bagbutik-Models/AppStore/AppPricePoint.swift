import Bagbutik_Core
import Foundation

/**
 # AppPricePoint
 The data structure that represents an App Price Points resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/apppricepoint>
 */
public struct AppPricePoint: Identifiable {
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
     # AppPricePoint.Attributes
     Attributes that describe an App Price Points resource.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/apppricepoint/attributes>
     */
    public struct Attributes {
        public var customerPrice: String?
        public var proceeds: String?

        public init(customerPrice: String? = nil,
                    proceeds: String? = nil)
        {
            self.customerPrice = customerPrice
            self.proceeds = proceeds
        }
    }

    /**
     # AppPricePoint.Relationships
     The relationships you included in the request and those on which you can operate.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/apppricepoint/relationships>
     */
    public struct Relationships {
        public var priceTier: PriceTier?
        public var territory: Territory?

        public init(priceTier: PriceTier? = nil,
                    territory: Territory? = nil)
        {
            self.priceTier = priceTier
            self.territory = territory
        }

        /**
         # AppPricePoint.Relationships.PriceTier
         The data and links that describe the relationship between the resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/apppricepoint/relationships/pricetier>
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
             # AppPricePoint.Relationships.PriceTier.Data
             The type and ID of a related resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/apppricepoint/relationships/pricetier/data>
             */
            public struct Data: Identifiable {
                public let id: String
                public var type: String { "appPriceTiers" }

                public init(id: String) {
                    self.id = id
                }
            }

            /**
             # AppPricePoint.Relationships.PriceTier.Links
             The links to the related data and the relationship's self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/apppricepoint/relationships/pricetier/links>
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
         # AppPricePoint.Relationships.Territory
         The data and links that describe the relationship between the resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/apppricepoint/relationships/territory>
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
             # AppPricePoint.Relationships.Territory.Data
             The type and ID of a related resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/apppricepoint/relationships/territory/data>
             */
            public struct Data: Identifiable {
                public let id: String
                public var type: String { "territories" }

                public init(id: String) {
                    self.id = id
                }
            }

            /**
             # AppPricePoint.Relationships.Territory.Links
             The links to the related data and the relationship's self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/apppricepoint/relationships/territory/links>
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
