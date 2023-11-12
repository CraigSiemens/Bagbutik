import Bagbutik_Core
import Foundation

/**
 # AppAvailabilityV2
 The data structure that represents an app availability resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/appavailabilityv2>
 */
public struct AppAvailabilityV2: Identifiable {
    public let id: String
    public var links: ResourceLinks?
    public var type: String { "appAvailabilities" }
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
        public var availableInNewTerritories: Bool?

        public init(availableInNewTerritories: Bool? = nil) {
            self.availableInNewTerritories = availableInNewTerritories
        }
    }

    public struct Relationships {
        public var territoryAvailabilities: TerritoryAvailabilities?

        public init(territoryAvailabilities: TerritoryAvailabilities? = nil) {
            self.territoryAvailabilities = territoryAvailabilities
        }

        public struct TerritoryAvailabilities {
            @NullCodable public var data: [Data]?
            public var links: Links?
            public var meta: PagingInformation?

            public init(data: [Data]? = nil,
                        links: Links? = nil,
                        meta: PagingInformation? = nil)
            {
                self.data = data
                self.links = links
                self.meta = meta
            }

            public struct Data: Identifiable {
                public let id: String
                public var type: String { "territoryAvailabilities" }

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
