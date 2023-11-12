import Bagbutik_Core
import Foundation

/**
 # AppAvailabilityV2CreateRequest
 The request body you use to create an app availability.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/appavailabilityv2createrequest>
 */
public struct AppAvailabilityV2CreateRequest: RequestBody {
    public let data: Data
    public var included: [TerritoryAvailabilityInlineCreate]?

    public init(data: Data,
                included: [TerritoryAvailabilityInlineCreate]? = nil)
    {
        self.data = data
        self.included = included
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
            public let territoryAvailabilities: TerritoryAvailabilities

            public init(app: App,
                        territoryAvailabilities: TerritoryAvailabilities)
            {
                self.app = app
                self.territoryAvailabilities = territoryAvailabilities
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

            public struct TerritoryAvailabilities {
                public let data: [Data]

                public init(data: [Data]) {
                    self.data = data
                }

                public struct Data: Identifiable {
                    public let id: String
                    public var type: String { "territoryAvailabilities" }

                    public init(id: String) {
                        self.id = id
                    }
                }
            }
        }
    }
}
