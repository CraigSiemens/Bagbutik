import Bagbutik_Core
import Foundation

public struct SubscriptionSubmissionCreateRequest: RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    public struct Data {
        public var type: String { "subscriptionSubmissions" }
        public let relationships: Relationships

        public init(relationships: Relationships) {
            self.relationships = relationships
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
