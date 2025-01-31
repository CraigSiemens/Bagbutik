import Bagbutik_Core
import Foundation

public struct SubscriptionUpdateRequest: Codable, RequestBody {
    public let data: Data
    public var included: [Included]?

    public init(data: Data,
                included: [Included]? = nil)
    {
        self.data = data
        self.included = included
    }

    public struct Data: Codable, Identifiable {
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

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            id = try container.decode(String.self, forKey: .id)
            attributes = try container.decodeIfPresent(Attributes.self, forKey: .attributes)
            relationships = try container.decodeIfPresent(Relationships.self, forKey: .relationships)
            if try container.decode(String.self, forKey: .type) != type {
                throw DecodingError.dataCorruptedError(forKey: .type, in: container, debugDescription: "Not matching \(type)")
            }
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(id, forKey: .id)
            try container.encode(type, forKey: .type)
            try container.encodeIfPresent(attributes, forKey: .attributes)
            try container.encodeIfPresent(relationships, forKey: .relationships)
        }

        private enum CodingKeys: String, CodingKey {
            case attributes
            case id
            case relationships
            case type
        }

        public struct Attributes: Codable {
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

        public struct Relationships: Codable {
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

            public struct IntroductoryOffers: Codable {
                @NullCodable public var data: [Data]?

                public init(data: [Data]? = nil) {
                    self.data = data
                }

                public init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: CodingKeys.self)
                    data = try container.decodeIfPresent([Data].self, forKey: .data)
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: CodingKeys.self)
                    try container.encode(data, forKey: .data)
                }

                private enum CodingKeys: String, CodingKey {
                    case data
                }

                public struct Data: Codable, Identifiable {
                    public let id: String
                    public var type: String { "subscriptionIntroductoryOffers" }

                    public init(id: String) {
                        self.id = id
                    }

                    public init(from decoder: Decoder) throws {
                        let container = try decoder.container(keyedBy: CodingKeys.self)
                        id = try container.decode(String.self, forKey: .id)
                        if try container.decode(String.self, forKey: .type) != type {
                            throw DecodingError.dataCorruptedError(forKey: .type, in: container, debugDescription: "Not matching \(type)")
                        }
                    }

                    public func encode(to encoder: Encoder) throws {
                        var container = encoder.container(keyedBy: CodingKeys.self)
                        try container.encode(id, forKey: .id)
                        try container.encode(type, forKey: .type)
                    }

                    private enum CodingKeys: String, CodingKey {
                        case id
                        case type
                    }
                }
            }

            public struct Prices: Codable {
                @NullCodable public var data: [Data]?

                public init(data: [Data]? = nil) {
                    self.data = data
                }

                public init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: CodingKeys.self)
                    data = try container.decodeIfPresent([Data].self, forKey: .data)
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: CodingKeys.self)
                    try container.encode(data, forKey: .data)
                }

                private enum CodingKeys: String, CodingKey {
                    case data
                }

                public struct Data: Codable, Identifiable {
                    public let id: String
                    public var type: String { "subscriptionPrices" }

                    public init(id: String) {
                        self.id = id
                    }

                    public init(from decoder: Decoder) throws {
                        let container = try decoder.container(keyedBy: CodingKeys.self)
                        id = try container.decode(String.self, forKey: .id)
                        if try container.decode(String.self, forKey: .type) != type {
                            throw DecodingError.dataCorruptedError(forKey: .type, in: container, debugDescription: "Not matching \(type)")
                        }
                    }

                    public func encode(to encoder: Encoder) throws {
                        var container = encoder.container(keyedBy: CodingKeys.self)
                        try container.encode(id, forKey: .id)
                        try container.encode(type, forKey: .type)
                    }

                    private enum CodingKeys: String, CodingKey {
                        case id
                        case type
                    }
                }
            }

            public struct PromotionalOffers: Codable {
                @NullCodable public var data: [Data]?

                public init(data: [Data]? = nil) {
                    self.data = data
                }

                public init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: CodingKeys.self)
                    data = try container.decodeIfPresent([Data].self, forKey: .data)
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: CodingKeys.self)
                    try container.encode(data, forKey: .data)
                }

                private enum CodingKeys: String, CodingKey {
                    case data
                }

                public struct Data: Codable, Identifiable {
                    public let id: String
                    public var type: String { "subscriptionPromotionalOffers" }

                    public init(id: String) {
                        self.id = id
                    }

                    public init(from decoder: Decoder) throws {
                        let container = try decoder.container(keyedBy: CodingKeys.self)
                        id = try container.decode(String.self, forKey: .id)
                        if try container.decode(String.self, forKey: .type) != type {
                            throw DecodingError.dataCorruptedError(forKey: .type, in: container, debugDescription: "Not matching \(type)")
                        }
                    }

                    public func encode(to encoder: Encoder) throws {
                        var container = encoder.container(keyedBy: CodingKeys.self)
                        try container.encode(id, forKey: .id)
                        try container.encode(type, forKey: .type)
                    }

                    private enum CodingKeys: String, CodingKey {
                        case id
                        case type
                    }
                }
            }
        }
    }

    public enum Included: Codable {
        case subscriptionIntroductoryOfferInlineCreate(SubscriptionIntroductoryOfferInlineCreate)
        case subscriptionPriceInlineCreate(SubscriptionPriceInlineCreate)
        case subscriptionPromotionalOfferInlineCreate(SubscriptionPromotionalOfferInlineCreate)

        public init(from decoder: Decoder) throws {
            if let subscriptionIntroductoryOfferInlineCreate = try? SubscriptionIntroductoryOfferInlineCreate(from: decoder) {
                self = .subscriptionIntroductoryOfferInlineCreate(subscriptionIntroductoryOfferInlineCreate)
            } else if let subscriptionPriceInlineCreate = try? SubscriptionPriceInlineCreate(from: decoder) {
                self = .subscriptionPriceInlineCreate(subscriptionPriceInlineCreate)
            } else if let subscriptionPromotionalOfferInlineCreate = try? SubscriptionPromotionalOfferInlineCreate(from: decoder) {
                self = .subscriptionPromotionalOfferInlineCreate(subscriptionPromotionalOfferInlineCreate)
            } else {
                throw DecodingError.typeMismatch(Included.self, DecodingError.Context(codingPath: decoder.codingPath,
                                                                                      debugDescription: "Unknown Included"))
            }
        }

        public func encode(to encoder: Encoder) throws {
            switch self {
            case let .subscriptionIntroductoryOfferInlineCreate(value):
                try value.encode(to: encoder)
            case let .subscriptionPriceInlineCreate(value):
                try value.encode(to: encoder)
            case let .subscriptionPromotionalOfferInlineCreate(value):
                try value.encode(to: encoder)
            }
        }

        private enum CodingKeys: String, CodingKey {
            case type
        }
    }
}
