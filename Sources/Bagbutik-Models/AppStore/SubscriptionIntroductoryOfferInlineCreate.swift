import Bagbutik_Core
import Foundation

public struct SubscriptionIntroductoryOfferInlineCreate: Identifiable {
    public var id: String?
    public var type: String { "subscriptionIntroductoryOffers" }
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
        public var subscription: Subscription?
        public var subscriptionPricePoint: SubscriptionPricePoint?
        public var territory: Territory?

        public init(subscription: Subscription? = nil,
                    subscriptionPricePoint: SubscriptionPricePoint? = nil,
                    territory: Territory? = nil)
        {
            self.subscription = subscription
            self.subscriptionPricePoint = subscriptionPricePoint
            self.territory = territory
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
