import Bagbutik_Core
import Foundation

/**
 # AppPriceInlineCreate
 The data structure that represents a App Price Inline Create resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/apppriceinlinecreate>
 */
public struct AppPriceInlineCreate: Codable, Identifiable {
    public var id: String?
    public var type: String { "appPrices" }

    public init(id: String? = nil) {
        self.id = id
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: AnyCodingKey.self)
        id = try container.decodeIfPresent(String.self, forKey: "id")
        if try container.decode(String.self, forKey: "type") != type {
            throw DecodingError.dataCorruptedError(forKey: "type", in: container, debugDescription: "Not matching \(type)")
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: AnyCodingKey.self)
        try container.encodeIfPresent(id, forKey: "id")
        try container.encode(type, forKey: "type")
    }
}
