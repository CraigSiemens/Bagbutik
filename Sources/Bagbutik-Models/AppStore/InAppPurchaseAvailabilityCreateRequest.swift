import Bagbutik_Core
import Foundation

public struct InAppPurchaseAvailabilityCreateRequest: RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    public struct Data {
        public var type: String { "inAppPurchaseAvailabilities" }
        public let attributes: Attributes
        public let relationships: Relationships

        public init(attributes: Attributes,
                    relationships: Relationships)
        {
            self.attributes = attributes
            self.relationships = relationships
        }

        public struct Attributes {
            public let availableInNewTerritories: Bool

            public init(availableInNewTerritories: Bool) {
                self.availableInNewTerritories = availableInNewTerritories
            }
        }

        public struct Relationships {
            public let availableTerritories: AvailableTerritories
            public let inAppPurchase: InAppPurchase

            public init(availableTerritories: AvailableTerritories,
                        inAppPurchase: InAppPurchase)
            {
                self.availableTerritories = availableTerritories
                self.inAppPurchase = inAppPurchase
            }

            public struct AvailableTerritories {
                public let data: [Data]

                public init(data: [Data]) {
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
        }
    }
}
