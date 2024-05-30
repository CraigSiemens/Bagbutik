import Bagbutik_Core
import Foundation

public struct SubscriptionPricePoint: Codable, Identifiable {
    public let id: String
    public var links: ResourceLinks?
    public var type: String { "subscriptionPricePoints" }
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

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decode(String.self, forKey: .id)
        links = try container.decodeIfPresent(ResourceLinks.self, forKey: .links)
        attributes = try container.decodeIfPresent(Attributes.self, forKey: .attributes)
        relationships = try container.decodeIfPresent(Relationships.self, forKey: .relationships)
        if try container.decode(String.self, forKey: .type) != type {
            throw DecodingError.dataCorruptedError(forKey: .type, in: container, debugDescription: "Not matching \(type)")
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encodeIfPresent(links, forKey: .links)
        try container.encode(type, forKey: .type)
        try container.encodeIfPresent(attributes, forKey: .attributes)
        try container.encodeIfPresent(relationships, forKey: .relationships)
    }

    private enum CodingKeys: String, CodingKey {
        case attributes
        case id
        case links
        case relationships
        case type
    }

    public struct Attributes: Codable {
        public var customerPrice: String?
        public var proceeds: String?
        public var proceedsYear2: String?

        public init(customerPrice: String? = nil,
                    proceeds: String? = nil,
                    proceedsYear2: String? = nil)
        {
            self.customerPrice = customerPrice
            self.proceeds = proceeds
            self.proceedsYear2 = proceedsYear2
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            customerPrice = try container.decodeIfPresent(String.self, forKey: .customerPrice)
            proceeds = try container.decodeIfPresent(String.self, forKey: .proceeds)
            proceedsYear2 = try container.decodeIfPresent(String.self, forKey: .proceedsYear2)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encodeIfPresent(customerPrice, forKey: .customerPrice)
            try container.encodeIfPresent(proceeds, forKey: .proceeds)
            try container.encodeIfPresent(proceedsYear2, forKey: .proceedsYear2)
        }

        private enum CodingKeys: String, CodingKey {
            case customerPrice
            case proceeds
            case proceedsYear2
        }
    }

    public struct Relationships: Codable {
        public var territory: Territory?

        public init(territory: Territory? = nil) {
            self.territory = territory
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            territory = try container.decodeIfPresent(Territory.self, forKey: .territory)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encodeIfPresent(territory, forKey: .territory)
        }

        private enum CodingKeys: String, CodingKey {
            case territory
        }

        public struct Territory: Codable {
            @NullCodable public var data: Data?
            public var links: Links?

            public init(data: Data? = nil,
                        links: Links? = nil)
            {
                self.data = data
                self.links = links
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                data = try container.decodeIfPresent(Data.self, forKey: .data)
                links = try container.decodeIfPresent(Links.self, forKey: .links)
            }

            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                try container.encode(data, forKey: .data)
                try container.encodeIfPresent(links, forKey: .links)
            }

            private enum CodingKeys: String, CodingKey {
                case data
                case links
            }

            public struct Data: Codable, Identifiable {
                public let id: String
                public var type: String { "territories" }

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

            public struct Links: Codable {
                public var related: String?
                public var itself: String?

                public init(related: String? = nil,
                            self itself: String? = nil)
                {
                    self.related = related
                    self.itself = itself
                }

                public init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: CodingKeys.self)
                    related = try container.decodeIfPresent(String.self, forKey: .related)
                    itself = try container.decodeIfPresent(String.self, forKey: .itself)
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: CodingKeys.self)
                    try container.encodeIfPresent(related, forKey: .related)
                    try container.encodeIfPresent(itself, forKey: .itself)
                }

                private enum CodingKeys: String, CodingKey {
                    case itself = "self"
                    case related
                }
            }
        }
    }
}
