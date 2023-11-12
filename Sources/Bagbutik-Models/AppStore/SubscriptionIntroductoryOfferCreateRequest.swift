import Bagbutik_Core
import Foundation

public struct SubscriptionIntroductoryOfferCreateRequest: RequestBody {
    public let data: Data
    public var included: [SubscriptionPricePointInlineCreate]?

    public init(data: Data,
                included: [SubscriptionPricePointInlineCreate]? = nil)
    {
        self.data = data
        self.included = included
    }

    public struct Data {
        public var type: String { "subscriptionIntroductoryOffers" }
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
            public var endDate: String?
            public let numberOfPeriods: Int
            public let offerMode: SubscriptionOfferMode
            public var startDate: String?

            public init(duration: SubscriptionOfferDuration,
                        endDate: String? = nil,
                        numberOfPeriods: Int,
                        offerMode: SubscriptionOfferMode,
                        startDate: String? = nil)
            {
                self.duration = duration
                self.endDate = endDate
                self.numberOfPeriods = numberOfPeriods
                self.offerMode = offerMode
                self.startDate = startDate
            }
        }

        public struct Relationships {
            public let subscription: Subscription
            public var subscriptionPricePoint: SubscriptionPricePoint?
            public var territory: Territory?

            public init(subscription: Subscription,
                        subscriptionPricePoint: SubscriptionPricePoint? = nil,
                        territory: Territory? = nil)
            {
                self.subscription = subscription
                self.subscriptionPricePoint = subscriptionPricePoint
                self.territory = territory
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

            public struct SubscriptionPricePoint {
                @NullCodable public var data: Data?

                public init(data: Data? = nil) {
                    self.data = data
                }

                public struct Data: Identifiable {
                    public let id: String
                    public var type: String { "subscriptionPricePoints" }

                    public init(id: String) {
                        self.id = id
                    }
                }
            }

            public struct Territory {
                @NullCodable public var data: Data?

                public init(data: Data? = nil) {
                    self.data = data
                }

                public struct Data: Identifiable {
                    public let id: String
                    public var type: String { "territories" }

                    public init(id: String) {
                        self.id = id
                    }
                }
            }
        }
    }
}
