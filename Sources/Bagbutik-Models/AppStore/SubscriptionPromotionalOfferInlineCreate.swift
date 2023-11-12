import Bagbutik_Core
import Foundation

public struct SubscriptionPromotionalOfferInlineCreate: Identifiable {
    public var id: String?
    public var type: String { "subscriptionPromotionalOffers" }
    public let attributes: Attributes
    public var relationships: Relationships?

    public init(id: String? = nil,
                attributes: Attributes,
                relationships: Relationships? = nil)
    {
        self.id = id
        self.attributes = attributes
        self.relationships = relationships
    }

    public struct Attributes {
        public let duration: SubscriptionOfferDuration
        public let name: String
        public let numberOfPeriods: Int
        public let offerCode: String
        public let offerMode: SubscriptionOfferMode

        public init(duration: SubscriptionOfferDuration,
                    name: String,
                    numberOfPeriods: Int,
                    offerCode: String,
                    offerMode: SubscriptionOfferMode)
        {
            self.duration = duration
            self.name = name
            self.numberOfPeriods = numberOfPeriods
            self.offerCode = offerCode
            self.offerMode = offerMode
        }
    }

    public struct Relationships {
        public var prices: Prices?
        public var subscription: Subscription?

        public init(prices: Prices? = nil,
                    subscription: Subscription? = nil)
        {
            self.prices = prices
            self.subscription = subscription
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

        public struct Subscription {
            @NullCodable public var data: Data?

            public init(data: Data? = nil) {
                self.data = data
            }

            public struct Data: Identifiable {
                public let id: String
                public var type: String { "subscriptions" }

                public init(id: String) {
                    self.id = id
                }
            }
        }
    }
}
