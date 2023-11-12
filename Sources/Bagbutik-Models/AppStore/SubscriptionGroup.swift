import Bagbutik_Core
import Foundation

public struct SubscriptionGroup: Identifiable {
    public let id: String
    public var links: ResourceLinks?
    public var type: String { "subscriptionGroups" }
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
        public var referenceName: String?

        public init(referenceName: String? = nil) {
            self.referenceName = referenceName
        }
    }

    public struct Relationships {
        public var subscriptionGroupLocalizations: SubscriptionGroupLocalizations?
        public var subscriptions: Subscriptions?

        public init(subscriptionGroupLocalizations: SubscriptionGroupLocalizations? = nil,
                    subscriptions: Subscriptions? = nil)
        {
            self.subscriptionGroupLocalizations = subscriptionGroupLocalizations
            self.subscriptions = subscriptions
        }

        public struct SubscriptionGroupLocalizations {
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
                public var type: String { "subscriptionGroupLocalizations" }

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

        public struct Subscriptions {
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
