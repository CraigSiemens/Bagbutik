import Bagbutik_Core
import Foundation

public struct SubscriptionPromotionalOfferCreateRequest: RequestBody {
    public let data: Data
    public var included: [SubscriptionPromotionalOfferPriceInlineCreate]?

    public init(data: Data,
                included: [SubscriptionPromotionalOfferPriceInlineCreate]? = nil)
    {
        self.data = data
        self.included = included
    }

    public struct Data {
        public var type: String { "subscriptionPromotionalOffers" }
        public let attributes: Attributes
        public let relationships: Relationships

        public init(attributes: Attributes,
                    relationships: Relationships)
        {
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
            public let prices: Prices
            public let subscription: Subscription

            public init(prices: Prices,
                        subscription: Subscription)
            {
                self.prices = prices
                self.subscription = subscription
            }

            public struct Prices {
                public let data: [Data]

                public init(data: [Data]) {
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
                public let data: Data

                public init(data: Data) {
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
}
