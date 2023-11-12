import Bagbutik_Core
import Foundation

/**
 # CiBuildActionResponse
 A response that contains a single Build Actions resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/cibuildactionresponse>
 */
public struct CiBuildActionResponse: Codable {
    /// The resource data.
    public let data: CiBuildAction
    /// The requested relationship data.
    public var included: [CiBuildRun]?
    /// The navigational links that include the self-link.
    public let links: DocumentLinks

    public init(data: CiBuildAction,
                included: [CiBuildRun]? = nil,
                links: DocumentLinks)
    {
        self.data = data
        self.included = included
        self.links = links
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        data = try container.decode(CiBuildAction.self, forKey: .data)
        included = try container.decodeIfPresent([CiBuildRun].self, forKey: .included)
        links = try container.decode(DocumentLinks.self, forKey: .links)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(data, forKey: .data)
        try container.encodeIfPresent(included, forKey: .included)
        try container.encode(links, forKey: .links)
    }

    private enum CodingKeys: String, CodingKey {
        case data
        case included
        case links
    }
}
