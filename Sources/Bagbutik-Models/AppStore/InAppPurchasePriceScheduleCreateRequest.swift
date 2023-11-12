import Bagbutik_Core
import Foundation

public struct InAppPurchasePriceScheduleCreateRequest: RequestBody {
    public let data: Data
    public var included: [Included]?

    public init(data: Data,
                included: [Included]? = nil)
    {
        self.data = data
        self.included = included
    }

    public struct Data {
        public var type: String { "inAppPurchasePriceSchedules" }
        public let relationships: Relationships

        public init(relationships: Relationships) {
            self.relationships = relationships
        }

        public struct Relationships {
            public var baseTerritory: BaseTerritory?
            public let inAppPurchase: InAppPurchase
            public let manualPrices: ManualPrices

            public init(baseTerritory: BaseTerritory? = nil,
                        inAppPurchase: InAppPurchase,
                        manualPrices: ManualPrices)
            {
                self.baseTerritory = baseTerritory
                self.inAppPurchase = inAppPurchase
                self.manualPrices = manualPrices
            }

            public struct BaseTerritory {
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

            public struct InAppPurchase {
                public let data: Data

                public init(data: Data) {
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

            public struct ManualPrices {
                public let data: [Data]

                public init(data: [Data]) {
                    self.data = data
                }

                public struct Data: Identifiable {
                    public let id: String
                    public var type: String { "inAppPurchasePrices" }

                    public init(id: String) {
                        self.id = id
                    }
                }
            }
        }
    }

    public enum Included {
        case inAppPurchasePriceInlineCreate(InAppPurchasePriceInlineCreate)
        case territoryInlineCreate(TerritoryInlineCreate)
    }
}
