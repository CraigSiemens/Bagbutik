import Bagbutik_Core
import Foundation

/**
 # GameCenterMatchmakingQueuesResponse
 The response body for endpoints that get multiple queues.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/gamecentermatchmakingqueuesresponse>
 */
public struct GameCenterMatchmakingQueuesResponse: Codable, PagedResponse {
    public typealias Data = GameCenterMatchmakingQueue

    /// The queues that the endpoint fetches.
    public let data: [GameCenterMatchmakingQueue]
    /// The rule sets included in the response.
    public var included: [GameCenterMatchmakingRuleSet]?
    /// The link representations of the response.
    public let links: PagedDocumentLinks
    public var meta: PagingInformation?

    public init(data: [GameCenterMatchmakingQueue],
                included: [GameCenterMatchmakingRuleSet]? = nil,
                links: PagedDocumentLinks,
                meta: PagingInformation? = nil)
    {
        self.data = data
        self.included = included
        self.links = links
        self.meta = meta
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        data = try container.decode([GameCenterMatchmakingQueue].self, forKey: .data)
        included = try container.decodeIfPresent([GameCenterMatchmakingRuleSet].self, forKey: .included)
        links = try container.decode(PagedDocumentLinks.self, forKey: .links)
        meta = try container.decodeIfPresent(PagingInformation.self, forKey: .meta)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(data, forKey: .data)
        try container.encodeIfPresent(included, forKey: .included)
        try container.encode(links, forKey: .links)
        try container.encodeIfPresent(meta, forKey: .meta)
    }

    private enum CodingKeys: String, CodingKey {
        case data
        case included
        case links
        case meta
    }
}
