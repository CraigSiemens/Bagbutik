import Bagbutik_Core
import Foundation

public struct AppAvailabilityCreateRequest: RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    public struct Data {
        public var type: String { "appAvailabilities" }
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
            public let app: App
            public let availableTerritories: AvailableTerritories

            public init(app: App,
                        availableTerritories: AvailableTerritories)
            {
                self.app = app
                self.availableTerritories = availableTerritories
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
        }
    }
}
