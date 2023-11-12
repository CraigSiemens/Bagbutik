import Bagbutik_Core
import Foundation

public struct SubscriptionUpdateRequest: RequestBody {
    public let data: Data
    public var included: [Included]?

    public init(data: Data,
                included: [Included]? = nil)
    {
        self.data = data
        self.included = included
    }

    public struct Data: Identifiable {
        public let id: String
        public var type: String { "subscriptions" }
        public var attributes: Attributes?
        public var relationships: Relationships?

        public init(id: String,
                    attributes: Attributes? = nil,
                    relationships: Relationships? = nil)
        {
            self.id = id
            self.attributes = attributes
            self.relationships = relationships
        }

        public struct Attributes {
            @available(*, deprecated, message: "Apple has marked this property deprecated and it will be removed sometime in the future.")
            public var availableInAllTerritories: Bool? = nil
            public var familySharable: Bool?
            public var groupLevel: Int?
            public var name: String?
            public var reviewNote: String?
            public var subscriptionPeriod: Subscription.Attributes.SubscriptionPeriod?

            @available(*, deprecated, message: "This uses a property Apple has marked as deprecated.")
            public init(availableInAllTerritories: Bool? = nil,
                        familySharable: Bool? = nil,
                        groupLevel: Int? = nil,
                        name: String? = nil,
                        reviewNote: String? = nil,
                        subscriptionPeriod: Subscription.Attributes.SubscriptionPeriod? = nil)
            {
                self.availableInAllTerritories = availableInAllTerritories
                self.familySharable = familySharable
                self.groupLevel = groupLevel
                self.name = name
                self.reviewNote = reviewNote
                self.subscriptionPeriod = subscriptionPeriod
            }

            public init(familySharable: Bool? = nil,
                        groupLevel: Int? = nil,
                        name: String? = nil,
                        reviewNote: String? = nil,
                        subscriptionPeriod: Subscription.Attributes.SubscriptionPeriod? = nil)
            {
                self.familySharable = familySharable
                self.groupLevel = groupLevel
                self.name = name
                self.reviewNote = reviewNote
                self.subscriptionPeriod = subscriptionPeriod
            }
        }

        public struct Relationships {
            public var introductoryOffers: IntroductoryOffers?
            public var prices: Prices?
            public var promotionalOffers: PromotionalOffers?

            public init(introductoryOffers: IntroductoryOffers? = nil,
                        prices: Prices? = nil,
                        promotionalOffers: PromotionalOffers? = nil)
            {
                self.introductoryOffers = introductoryOffers
                self.prices = prices
                self.promotionalOffers = promotionalOffers
            }

            public struct IntroductoryOffers {
                @NullCodable public var data: [Data]?

                public init(data: [Data]? = nil) {
                    self.data = data
                }

                public struct Data: Identifiable {
                    public let id: String
                    public var type: String { "subscriptionIntroductoryOffers" }

                    public init(id: String) {
                        self.id = id
                    }
                }
            }

            public struct Prices {
                @NullCodable public var data: [Data]?

                public init(data: [Data]? = nil) {
                    self.data = data
                }

                public struct Data: Identifiable {
                    public let id: String
                    public var type: String { "subscriptionPrices" }

                    public init(id: String) {
                        self.id = id
                    }
                }
            }

            public struct PromotionalOffers {
                @NullCodable public var data: [Data]?

                public init(data: [Data]? = nil) {
                    self.data = data
                }

                public struct Data: Identifiable {
                    public let id: String
                    public var type: String { "subscriptionPromotionalOffers" }

                    public init(id: String) {
                        self.id = id
                    }
                }
            }
        }
    }

    public enum Included {
        case subscriptionIntroductoryOfferInlineCreate(SubscriptionIntroductoryOfferInlineCreate)
        case subscriptionPriceInlineCreate(SubscriptionPriceInlineCreate)
        case subscriptionPromotionalOfferInlineCreate(SubscriptionPromotionalOfferInlineCreate)
    }
}
