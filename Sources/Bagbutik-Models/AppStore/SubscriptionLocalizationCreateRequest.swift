import Bagbutik_Core
import Foundation

public struct SubscriptionLocalizationCreateRequest: RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    public struct Data {
        public var type: String { "subscriptionLocalizations" }
        public let attributes: Attributes
        public let relationships: Relationships

        public init(attributes: Attributes,
                    relationships: Relationships)
        {
            self.attributes = attributes
            self.relationships = relationships
        }

        public struct Attributes {
            public var description: String?
            public let locale: String
            public let name: String

            public init(description: String? = nil,
                        locale: String,
                        name: String)
            {
                self.description = description
                self.locale = locale
                self.name = name
            }
        }

        public struct Relationships {
            public let subscription: Subscription

            public init(subscription: Subscription) {
                self.subscription = subscription
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
