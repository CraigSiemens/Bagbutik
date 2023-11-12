import Bagbutik_Core
import Foundation

public struct SubscriptionGroupSubmissionCreateRequest: RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    public struct Data {
        public var type: String { "subscriptionGroupSubmissions" }
        public let relationships: Relationships

        public init(relationships: Relationships) {
            self.relationships = relationships
        }

        public struct Relationships {
            public let subscriptionGroup: SubscriptionGroup

            public init(subscriptionGroup: SubscriptionGroup) {
                self.subscriptionGroup = subscriptionGroup
            }

            public struct SubscriptionGroup {
                public let data: Data

                public init(data: Data) {
                    self.data = data
                }

                public struct Data: Identifiable {
                    public let id: String
                    public var type: String { "subscriptionGroups" }

                    public init(id: String) {
                        self.id = id
                    }
                }
            }
        }
    }
}
