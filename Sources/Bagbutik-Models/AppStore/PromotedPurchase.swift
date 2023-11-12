import Bagbutik_Core
import Foundation

public struct PromotedPurchase: Identifiable {
    public let id: String
    public var links: ResourceLinks?
    public var type: String { "promotedPurchases" }
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
        public var enabled: Bool?
        public var state: State?
        public var visibleForAllUsers: Bool?

        public init(enabled: Bool? = nil,
                    state: State? = nil,
                    visibleForAllUsers: Bool? = nil)
        {
            self.enabled = enabled
            self.state = state
            self.visibleForAllUsers = visibleForAllUsers
        }

        public enum State: String {
            case approved = "APPROVED"
            case inReview = "IN_REVIEW"
            case prepareForSubmission = "PREPARE_FOR_SUBMISSION"
            case rejected = "REJECTED"
        }
    }

    public struct Relationships {
        public var inAppPurchaseV2: InAppPurchaseV2?
        public var promotionImages: PromotionImages?
        public var subscription: Subscription?

        public init(inAppPurchaseV2: InAppPurchaseV2? = nil,
                    promotionImages: PromotionImages? = nil,
                    subscription: Subscription? = nil)
        {
            self.inAppPurchaseV2 = inAppPurchaseV2
            self.promotionImages = promotionImages
            self.subscription = subscription
        }

        public struct InAppPurchaseV2 {
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
                public var type: String { "inAppPurchases" }

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

        public struct PromotionImages {
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
                public var type: String { "promotedPurchaseImages" }

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
