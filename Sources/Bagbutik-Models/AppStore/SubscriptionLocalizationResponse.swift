import Bagbutik_Core
import Foundation

public struct SubscriptionLocalizationResponse: Codable {
    public let data: SubscriptionLocalization
    public var included: [Subscription]?
    public let links: DocumentLinks

    public init(data: SubscriptionLocalization,
                included: [Subscription]? = nil,
                links: DocumentLinks)
    {
        self.data = data
        self.included = included
        self.links = links
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: AnyCodingKey.self)
        data = try container.decode(SubscriptionLocalization.self, forKey: "data")
        included = try container.decodeIfPresent([Subscription].self, forKey: "included")
        links = try container.decode(DocumentLinks.self, forKey: "links")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: AnyCodingKey.self)
        try container.encode(data, forKey: "data")
        try container.encodeIfPresent(included, forKey: "included")
        try container.encode(links, forKey: "links")
    }
}
