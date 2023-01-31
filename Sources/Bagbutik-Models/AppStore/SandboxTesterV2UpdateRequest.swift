import Bagbutik_Core
import Foundation

public struct SandboxTesterV2UpdateRequest: Codable, RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    public struct Data: Codable, Identifiable {
        public let id: String
        public var type: String { "sandboxTesters" }
        public var attributes: Attributes?

        public init(id: String,
                    attributes: Attributes? = nil)
        {
            self.id = id
            self.attributes = attributes
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            id = try container.decode(String.self, forKey: .id)
            attributes = try container.decodeIfPresent(Attributes.self, forKey: .attributes)
            if try container.decode(String.self, forKey: .type) != type {
                throw DecodingError.dataCorruptedError(forKey: .type, in: container, debugDescription: "Not matching \(type)")
            }
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(id, forKey: .id)
            try container.encode(type, forKey: .type)
            try container.encodeIfPresent(attributes, forKey: .attributes)
        }

        private enum CodingKeys: String, CodingKey {
            case attributes
            case id
            case type
        }

        public struct Attributes: Codable {
            public var interruptPurchases: Bool?
            public var subscriptionRenewalRate: SandboxTesterV2.Attributes.SubscriptionRenewalRate?
            public var territory: TerritoryCode?

            public init(interruptPurchases: Bool? = nil,
                        subscriptionRenewalRate: SandboxTesterV2.Attributes.SubscriptionRenewalRate? = nil,
                        territory: TerritoryCode? = nil)
            {
                self.interruptPurchases = interruptPurchases
                self.subscriptionRenewalRate = subscriptionRenewalRate
                self.territory = territory
            }
        }
    }
}