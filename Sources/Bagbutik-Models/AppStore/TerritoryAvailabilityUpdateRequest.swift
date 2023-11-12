import Bagbutik_Core
import Foundation

/**
 # TerritoryAvailabilityUpdateRequest
 The request body you use to update a single territory availability resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/territoryavailabilityupdaterequest>
 */
public struct TerritoryAvailabilityUpdateRequest: RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    public struct Data: Identifiable {
        public let id: String
        public var type: String { "territoryAvailabilities" }
        public var attributes: Attributes?

        public init(id: String,
                    attributes: Attributes? = nil)
        {
            self.id = id
            self.attributes = attributes
        }

        public struct Attributes {
            public var available: Bool?
            public var preOrderEnabled: Bool?
            public var releaseDate: String?

            public init(available: Bool? = nil,
                        preOrderEnabled: Bool? = nil,
                        releaseDate: String? = nil)
            {
                self.available = available
                self.preOrderEnabled = preOrderEnabled
                self.releaseDate = releaseDate
            }
        }
    }
}
