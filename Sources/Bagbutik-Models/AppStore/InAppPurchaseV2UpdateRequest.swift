import Bagbutik_Core
import Foundation

public struct InAppPurchaseV2UpdateRequest: Codable, RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    public struct Data: Codable, Identifiable {
        public let id: String
        public var type: String { "inAppPurchases" }
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
            @available(*, deprecated, message: "Apple has marked this property deprecated and it will be removed sometime in the future.")
            public var availableInAllTerritories: Bool? = nil
            public var familySharable: Bool?
            public var name: String?
            public var reviewNote: String?

            @available(*, deprecated, message: "This uses a property Apple has marked as deprecated.")
            public init(availableInAllTerritories: Bool? = nil,
                        familySharable: Bool? = nil,
                        name: String? = nil,
                        reviewNote: String? = nil)
            {
                self.availableInAllTerritories = availableInAllTerritories
                self.familySharable = familySharable
                self.name = name
                self.reviewNote = reviewNote
            }

            public init(familySharable: Bool? = nil,
                        name: String? = nil,
                        reviewNote: String? = nil)
            {
                self.familySharable = familySharable
                self.name = name
                self.reviewNote = reviewNote
            }
        }
    }
}
