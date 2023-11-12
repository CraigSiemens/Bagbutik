import Bagbutik_Core
import Foundation

public struct SubscriptionLocalization: Identifiable {
    public let id: String
    public var links: ResourceLinks?
    public var type: String { "subscriptionLocalizations" }
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
        public var description: String?
        public var locale: String?
        public var name: String?
        public var state: State?

        public init(description: String? = nil,
                    locale: String? = nil,
                    name: String? = nil,
                    state: State? = nil)
        {
            self.description = description
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
        public var subscription: Subscription?

        public init(subscription: Subscription? = nil) {
            self.subscription = subscription
        }

        public struct Subscription {
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
                public var type: String { "subscriptions" }

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
