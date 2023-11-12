import Bagbutik_Core
import Foundation

public struct SubscriptionGroupLocalizationCreateRequest: RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    public struct Data {
        public var type: String { "subscriptionGroupLocalizations" }
        public let attributes: Attributes
        public let relationships: Relationships

        public init(attributes: Attributes,
                    relationships: Relationships)
        {
            self.attributes = attributes
            self.relationships = relationships
        }

        public struct Attributes {
            public var customAppName: String?
            public let locale: String
            public let name: String

            public init(customAppName: String? = nil,
                        locale: String,
                        name: String)
            {
                self.customAppName = customAppName
                self.locale = locale
                self.name = name
            }
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
