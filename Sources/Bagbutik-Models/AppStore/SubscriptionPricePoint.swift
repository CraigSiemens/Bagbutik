import Bagbutik_Core
import Foundation

public struct SubscriptionPricePoint: Identifiable {
    public let id: String
    public var links: ResourceLinks?
    public var type: String { "subscriptionPricePoints" }
    public var attributes: Attributes?
    public var relationships: Relationships?

    public init(id: String,
                links: ResourceLinks? = nil,
                attributes: Attributes? = nil,
                relationships: Relationships? = nil)
    {
        self.id = id
        self.links = links
        self.attributes = attributes
        self.relationships = relationships
    }

    public struct Attributes {
        public var customerPrice: String?
        public var proceeds: String?
        public var proceedsYear2: String?

        public init(customerPrice: String? = nil,
                    proceeds: String? = nil,
                    proceedsYear2: String? = nil)
        {
            self.customerPrice = customerPrice
            self.proceeds = proceeds
            self.proceedsYear2 = proceedsYear2
        }
    }

    public struct Relationships {
        public var territory: Territory?

        public init(territory: Territory? = nil) {
            self.territory = territory
        }

        public struct Territory {
            @NullCodable public var data: Data?
            public var links: Links?

            public init(data: Data? = nil,
                        links: Links? = nil)
            {
                self.data = data
                self.links = links
            }

            public struct Data: Identifiable {
                public let id: String
                public var type: String { "territories" }

                public init(id: String) {
                    self.id = id
                }
            }

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
