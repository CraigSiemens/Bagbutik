import Bagbutik_Core
import Foundation

/**
 # AppPriceTier
 The data structure that represent an App Price Tiers resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/apppricetier>
 */
public struct AppPriceTier: Identifiable {
    /// The opaque resource ID that uniquely identifies the resource.
    public let id: String
    /// Navigational links that include the self-link.
    public var links: ResourceLinks?
    /// The resource type.
    public var type: String { "appPriceTiers" }
    /// Navigational links to related data and included resource types and IDs.
    public var relationships: Relationships?

    public init(id: String,
                links: ResourceLinks? = nil,
                relationships: Relationships? = nil)
    {
        self.id = id
        self.links = links
        self.relationships = relationships
    }

    /**
     # AppPriceTier.Relationships
     The relationships you included in the request and those on which you can operate.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/apppricetier/relationships>
     */
    public struct Relationships {
        @available(*, deprecated, message: "Apple has marked this property deprecated and it will be removed sometime in the future.")
        public var pricePoints: PricePoints? = nil

        @available(*, deprecated, message: "This uses a property Apple has marked as deprecated.")
        public init(pricePoints: PricePoints? = nil) {
            self.pricePoints = pricePoints
        }

        public init() {}

        /**
         # AppPriceTier.Relationships.PricePoints
         The data and links that describe the relationship between the resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/apppricetier/relationships/pricepoints>
         */
        public struct PricePoints {
            @NullCodable public var data: [Data]?
            public var links: Links?
            public var meta: PagingInformation?

            public init(data: [Data]? = nil,
                        links: Links? = nil,
                        meta: PagingInformation? = nil)
            {
                self.data = data
                self.links = links
                self.meta = meta
            }

            /**
             # AppPriceTier.Relationships.PricePoints.Data
             The type and ID of a related resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/apppricetier/relationships/pricepoints/data>
             */
            public struct Data: Identifiable {
                public let id: String
                public var type: String { "appPricePoints" }

                public init(id: String) {
                    self.id = id
                }
            }

            /**
             # AppPriceTier.Relationships.PricePoints.Links
             The links to the related data and the relationship's self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/apppricetier/relationships/pricepoints/links>
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
