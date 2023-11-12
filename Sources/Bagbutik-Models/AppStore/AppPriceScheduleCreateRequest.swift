import Bagbutik_Core
import Foundation

public struct AppPriceScheduleCreateRequest: RequestBody {
    public let data: Data
    public var included: [Included]?

    public init(data: Data,
                included: [Included]? = nil)
    {
        self.data = data
        self.included = included
    }

    public struct Data {
        public var type: String { "appPriceSchedules" }
        public let relationships: Relationships

        public init(relationships: Relationships) {
            self.relationships = relationships
        }

        public struct Relationships {
            public let app: App
            public let baseTerritory: BaseTerritory
            public let manualPrices: ManualPrices

            public init(app: App,
                        baseTerritory: BaseTerritory,
                        manualPrices: ManualPrices)
            {
                self.app = app
                self.baseTerritory = baseTerritory
                self.manualPrices = manualPrices
            }

            public struct App {
                public let data: Data

                public init(data: Data) {
                    self.data = data
                }

                public struct Data: Identifiable {
                    public let id: String
                    public var type: String { "apps" }

                    public init(id: String) {
                        self.id = id
                    }
                }
            }

            public struct BaseTerritory {
                public let data: Data

                public init(data: Data) {
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

            public struct ManualPrices {
                public let data: [Data]

                public init(data: [Data]) {
                    self.data = data
                }

                public struct Data: Identifiable {
                    public let id: String
                    public var type: String { "appPrices" }

                    public init(id: String) {
                        self.id = id
                    }
                }
            }
        }
    }

    public enum Included {
        case appPriceV2InlineCreate(AppPriceV2InlineCreate)
        case territoryInlineCreate(TerritoryInlineCreate)
    }
}
