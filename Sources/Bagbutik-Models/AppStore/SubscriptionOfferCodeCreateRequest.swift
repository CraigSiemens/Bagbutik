import Bagbutik_Core
import Foundation

public struct SubscriptionOfferCodeCreateRequest: RequestBody {
    public let data: Data
    public var included: [SubscriptionOfferCodePriceInlineCreate]?

    public init(data: Data,
                included: [SubscriptionOfferCodePriceInlineCreate]? = nil)
    {
        self.data = data
        self.included = included
    }

    public struct Data {
        public var type: String { "subscriptionOfferCodes" }
        public let attributes: Attributes
        public let relationships: Relationships

        public init(attributes: Attributes,
                    relationships: Relationships)
        {
            self.attributes = attributes
            self.relationships = relationships
        }

        public struct Attributes {
            public let customerEligibilities: [SubscriptionCustomerEligibility]
            public let duration: SubscriptionOfferDuration
            public let name: String
            public let numberOfPeriods: Int
            public let offerEligibility: SubscriptionOfferEligibility
            public let offerMode: SubscriptionOfferMode

            public init(customerEligibilities: [SubscriptionCustomerEligibility],
                        duration: SubscriptionOfferDuration,
                        name: String,
                        numberOfPeriods: Int,
                        offerEligibility: SubscriptionOfferEligibility,
                        offerMode: SubscriptionOfferMode)
            {
                self.customerEligibilities = customerEligibilities
                self.duration = duration
                self.name = name
                self.numberOfPeriods = numberOfPeriods
                self.offerEligibility = offerEligibility
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
                    public var type: String { "subscriptionOfferCodePrices" }

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
