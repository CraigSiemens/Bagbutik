import Bagbutik_Core
import Foundation

public struct SandboxTestersClearPurchaseHistoryRequestV2Response: Codable {
    public let data: SandboxTestersClearPurchaseHistoryRequestV2
    public let links: DocumentLinks

    public init(data: SandboxTestersClearPurchaseHistoryRequestV2,
                links: DocumentLinks)
    {
        self.data = data
        self.links = links
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: AnyCodingKey.self)
        data = try container.decode(SandboxTestersClearPurchaseHistoryRequestV2.self, forKey: "data")
        links = try container.decode(DocumentLinks.self, forKey: "links")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: AnyCodingKey.self)
        try container.encode(data, forKey: "data")
        try container.encode(links, forKey: "links")
    }
}
