import Bagbutik_Core
import Foundation

public struct InAppPurchasePriceInlineCreate: Identifiable {
    public var id: String?
    public var type: String { "inAppPurchasePrices" }
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
        public var endDate: String?
        public var startDate: String?

        public init(endDate: String? = nil,
                    startDate: String? = nil)
        {
            self.endDate = endDate
            self.startDate = startDate
        }
    }

    public struct Relationships {
        public var inAppPurchasePricePoint: InAppPurchasePricePoint?
        public var inAppPurchaseV2: InAppPurchaseV2?

        public init(inAppPurchasePricePoint: InAppPurchasePricePoint? = nil,
                    inAppPurchaseV2: InAppPurchaseV2? = nil)
        {
            self.inAppPurchasePricePoint = inAppPurchasePricePoint
            self.inAppPurchaseV2 = inAppPurchaseV2
        }

        public struct InAppPurchasePricePoint {
            @NullCodable public var data: Data?

            public init(data: Data? = nil) {
                self.data = data
            }

            public struct Data: Identifiable {
                public let id: String
                public var type: String { "inAppPurchasePricePoints" }

                public init(id: String) {
                    self.id = id
                }
            }
        }

        public struct InAppPurchaseV2 {
            @NullCodable public var data: Data?

            public init(data: Data? = nil) {
                self.data = data
            }

            public struct Data: Identifiable {
                public let id: String
                public var type: String { "inAppPurchases" }

                public init(id: String) {
                    self.id = id
                }
            }
        }
    }
}
