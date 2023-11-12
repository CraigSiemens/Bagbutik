import Bagbutik_Core
import Foundation

public struct SubscriptionOfferCodePriceInlineCreate: Identifiable {
    public var id: String?
    public var type: String { "subscriptionOfferCodePrices" }
    public var relationships: Relationships?

    public init(id: String? = nil,
                relationships: Relationships? = nil)
    {
        self.id = id
        self.relationships = relationships
    }

    public struct Relationships {
        public var subscriptionPricePoint: SubscriptionPricePoint?
        public var territory: Territory?

        public init(subscriptionPricePoint: SubscriptionPricePoint? = nil,
                    territory: Territory? = nil)
        {
            self.subscriptionPricePoint = subscriptionPricePoint
            self.territory = territory
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
