import Bagbutik_Core
import Foundation

public struct SubscriptionGroupLocalization: Identifiable {
    public let id: String
    public var links: ResourceLinks?
    public var type: String { "subscriptionGroupLocalizations" }
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
        public var customAppName: String?
        public var locale: String?
        public var name: String?
        public var state: State?

        public init(customAppName: String? = nil,
                    locale: String? = nil,
                    name: String? = nil,
                    state: State? = nil)
        {
            self.customAppName = customAppName
            self.locale = locale
            self.name = name
            self.state = state
        }

        public enum State: String {
            case prepareForSubmission = "PREPARE_FOR_SUBMISSION"
            case waitingForReview = "WAITING_FOR_REVIEW"
            case approved = "APPROVED"
            case rejected = "REJECTED"
        }
    }

    public struct Relationships {
        public var subscriptionGroup: SubscriptionGroup?

        public init(subscriptionGroup: SubscriptionGroup? = nil) {
            self.subscriptionGroup = subscriptionGroup
        }

        public struct SubscriptionGroup {
            @NullCodable public var data: Data?
            public var links: Links?

            public init(data: Data? = nil,
                        links: Links? = nil)
            {
                self.data = data
                self.links = links
            }

            public struct Data: Identifiable {
                public let id: String
                public var type: String { "subscriptionGroups" }

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
