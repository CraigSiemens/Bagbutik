import Bagbutik_Core
import Foundation

public struct PromotedPurchaseCreateRequest: RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    public struct Data {
        public var type: String { "promotedPurchases" }
        public let attributes: Attributes
        public let relationships: Relationships

        public init(attributes: Attributes,
                    relationships: Relationships)
        {
            self.attributes = attributes
            self.relationships = relationships
        }

        public struct Attributes {
            public var enabled: Bool?
            public let visibleForAllUsers: Bool

            public init(enabled: Bool? = nil,
                        visibleForAllUsers: Bool)
            {
                self.enabled = enabled
                self.visibleForAllUsers = visibleForAllUsers
            }
        }

        public struct Relationships {
            public let app: App
            public var inAppPurchaseV2: InAppPurchaseV2?
            public var subscription: Subscription?

            public init(app: App,
                        inAppPurchaseV2: InAppPurchaseV2? = nil,
                        subscription: Subscription? = nil)
            {
                self.app = app
                self.inAppPurchaseV2 = inAppPurchaseV2
                self.subscription = subscription
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

            public struct Subscription {
                @NullCodable public var data: Data?

                public init(data: Data? = nil) {
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
