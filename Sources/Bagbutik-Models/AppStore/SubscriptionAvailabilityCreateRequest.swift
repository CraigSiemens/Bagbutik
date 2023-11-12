import Bagbutik_Core
import Foundation

public struct SubscriptionAvailabilityCreateRequest: RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    public struct Data {
        public var type: String { "subscriptionAvailabilities" }
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
            public let subscription: Subscription

            public init(availableTerritories: AvailableTerritories,
                        subscription: Subscription)
            {
                self.availableTerritories = availableTerritories
                self.subscription = subscription
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

            public struct Subscription {
                public let data: Data

                public init(data: Data) {
                    self.data = data
                }

                public struct Data: Identifiable {
                    public let id: String
                    public var type: String { "subscriptions" }

                    public init(id: String) {
                        self.id = id
                    }
                }
            }
        }
    }
}
