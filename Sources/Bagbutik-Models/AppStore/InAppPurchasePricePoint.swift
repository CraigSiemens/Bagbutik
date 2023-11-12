import Bagbutik_Core
import Foundation

public struct InAppPurchasePricePoint: Identifiable {
    public let id: String
    public var links: ResourceLinks?
    public var type: String { "inAppPurchasePricePoints" }
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
        @available(*, deprecated, message: "Apple has marked this property deprecated and it will be removed sometime in the future.")
        public var priceTier: String? = nil
        public var proceeds: String?

        @available(*, deprecated, message: "This uses a property Apple has marked as deprecated.")
        public init(customerPrice: String? = nil,
                    priceTier: String? = nil,
                    proceeds: String? = nil)
        {
            self.customerPrice = customerPrice
            self.priceTier = priceTier
            self.proceeds = proceeds
        }

        public init(customerPrice: String? = nil,
                    proceeds: String? = nil)
        {
            self.customerPrice = customerPrice
            self.proceeds = proceeds
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
