import Bagbutik_Core
import Foundation

/**
 # EndAppAvailabilityPreOrderCreateRequest
 The request body you use to end an app’s preorder availability.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/endappavailabilitypreordercreaterequest>
 */
public struct EndAppAvailabilityPreOrderCreateRequest: RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    public struct Data {
        public var type: String { "endAppAvailabilityPreOrders" }
        public let relationships: Relationships

        public init(relationships: Relationships) {
            self.relationships = relationships
        }

        public struct Relationships {
            public let territoryAvailabilities: TerritoryAvailabilities

            public init(territoryAvailabilities: TerritoryAvailabilities) {
                self.territoryAvailabilities = territoryAvailabilities
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
