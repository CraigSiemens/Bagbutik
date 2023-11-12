import Bagbutik_Core
import Foundation

public struct SubscriptionOfferCode: Identifiable {
    public let id: String
    public var links: ResourceLinks?
    public var type: String { "subscriptionOfferCodes" }
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
        public var active: Bool?
        public var customerEligibilities: [SubscriptionCustomerEligibility]?
        public var duration: SubscriptionOfferDuration?
        public var name: String?
        public var numberOfPeriods: Int?
        public var offerEligibility: SubscriptionOfferEligibility?
        public var offerMode: SubscriptionOfferMode?
        public var totalNumberOfCodes: Int?

        public init(active: Bool? = nil,
                    customerEligibilities: [SubscriptionCustomerEligibility]? = nil,
                    duration: SubscriptionOfferDuration? = nil,
                    name: String? = nil,
                    numberOfPeriods: Int? = nil,
                    offerEligibility: SubscriptionOfferEligibility? = nil,
                    offerMode: SubscriptionOfferMode? = nil,
                    totalNumberOfCodes: Int? = nil)
        {
            self.active = active
            self.customerEligibilities = customerEligibilities
            self.duration = duration
            self.name = name
            self.numberOfPeriods = numberOfPeriods
            self.offerEligibility = offerEligibility
            self.offerMode = offerMode
            self.totalNumberOfCodes = totalNumberOfCodes
        }
    }

    public struct Relationships {
        public var customCodes: CustomCodes?
        public var oneTimeUseCodes: OneTimeUseCodes?
        public var prices: Prices?
        public var subscription: Subscription?

        public init(customCodes: CustomCodes? = nil,
                    oneTimeUseCodes: OneTimeUseCodes? = nil,
                    prices: Prices? = nil,
                    subscription: Subscription? = nil)
        {
            self.customCodes = customCodes
            self.oneTimeUseCodes = oneTimeUseCodes
            self.prices = prices
            self.subscription = subscription
        }

        public struct CustomCodes {
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
                public var type: String { "subscriptionOfferCodeCustomCodes" }

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

        public struct OneTimeUseCodes {
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
                public var type: String { "subscriptionOfferCodeOneTimeUseCodes" }

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

        public struct Prices {
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
                public var type: String { "subscriptionOfferCodePrices" }

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
