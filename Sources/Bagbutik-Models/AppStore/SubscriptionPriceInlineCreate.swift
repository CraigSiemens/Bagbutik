import Bagbutik_Core
import Foundation

public struct SubscriptionPriceInlineCreate: Identifiable {
    public var id: String?
    public var type: String { "subscriptionPrices" }
    public var attributes: Attributes?
    public var relationships: Relationships?

    public init(id: String? = nil,
                attributes: Attributes? = nil,
                relationships: Relationships? = nil)
    {
        self.id = id
        self.attributes = attributes
        self.relationships = relationships
    }

    public struct Attributes {
        public var preserveCurrentPrice: Bool?
        public var startDate: String?

        public init(preserveCurrentPrice: Bool? = nil,
                    startDate: String? = nil)
        {
            self.preserveCurrentPrice = preserveCurrentPrice
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
