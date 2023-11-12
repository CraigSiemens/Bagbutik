import Bagbutik_Core
import Foundation

public struct SubscriptionPriceCreateRequest: RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    public struct Data {
        public var type: String { "subscriptionPrices" }
        public var attributes: Attributes?
        public let relationships: Relationships

        public init(attributes: Attributes? = nil,
                    relationships: Relationships)
        {
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
            public let subscription: Subscription
            public let subscriptionPricePoint: SubscriptionPricePoint
            public var territory: Territory?

            public init(subscription: Subscription,
                        subscriptionPricePoint: SubscriptionPricePoint,
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
                public let data: Data

                public init(data: Data) {
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
