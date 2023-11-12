import Bagbutik_Core
import Foundation

public struct SubscriptionIntroductoryOffer: Identifiable {
    public let id: String
    public var links: ResourceLinks?
    public var type: String { "subscriptionIntroductoryOffers" }
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
        public var duration: SubscriptionOfferDuration?
        public var endDate: String?
        public var numberOfPeriods: Int?
        public var offerMode: SubscriptionOfferMode?
        public var startDate: String?

        public init(duration: SubscriptionOfferDuration? = nil,
                    endDate: String? = nil,
                    numberOfPeriods: Int? = nil,
                    offerMode: SubscriptionOfferMode? = nil,
                    startDate: String? = nil)
        {
            self.duration = duration
            self.endDate = endDate
            self.numberOfPeriods = numberOfPeriods
            self.offerMode = offerMode
            self.startDate = startDate
        }
    }

    public struct Relationships {
        public var subscription: Subscription?
        public var subscriptionPricePoint: SubscriptionPricePoint?
        public var territory: Territory?

        public init(subscription: Subscription? = nil,
                    subscriptionPricePoint: SubscriptionPricePoint? = nil,
                    territory: Territory? = nil)
        {
            self.subscription = subscription
            self.subscriptionPricePoint = subscriptionPricePoint
            self.territory = territory
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

        public struct SubscriptionPricePoint {
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
                public var type: String { "subscriptionPricePoints" }

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

        public struct Territory {
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
                public var type: String { "territories" }

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
