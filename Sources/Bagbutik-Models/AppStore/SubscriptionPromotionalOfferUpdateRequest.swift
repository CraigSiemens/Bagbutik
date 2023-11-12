import Bagbutik_Core
import Foundation

public struct SubscriptionPromotionalOfferUpdateRequest: RequestBody {
    public let data: Data
    public var included: [SubscriptionPromotionalOfferPriceInlineCreate]?

    public init(data: Data,
                included: [SubscriptionPromotionalOfferPriceInlineCreate]? = nil)
    {
        self.data = data
        self.included = included
    }

    public struct Data: Identifiable {
        public let id: String
        public var type: String { "subscriptionPromotionalOffers" }
        public var relationships: Relationships?

        public init(id: String,
                    relationships: Relationships? = nil)
        {
            self.id = id
            self.relationships = relationships
        }

        public struct Relationships {
            public var prices: Prices?

            public init(prices: Prices? = nil) {
                self.prices = prices
            }

            public struct Prices {
                @NullCodable public var data: [Data]?

                public init(data: [Data]? = nil) {
                    self.data = data
                }

                public struct Data: Identifiable {
                    public let id: String
                    public var type: String { "subscriptionPromotionalOfferPrices" }

                    public init(id: String) {
                        self.id = id
                    }
                }
            }
        }
    }
}
