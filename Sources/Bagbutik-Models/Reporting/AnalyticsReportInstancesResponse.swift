import Bagbutik_Core
import Foundation

/**
 # AnalyticsReportInstancesResponse
 A response that contains a list of analytics report instance resources.

 Use this object with [Read a list of instances of a report](https://developer.apple.com/documentation/appstoreconnectapi/read_a_list_of_instances_of_a_report).

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/analyticsreportinstancesresponse>
 */
public struct AnalyticsReportInstancesResponse: Codable, PagedResponse {
    public typealias Data = AnalyticsReportInstance

    public let data: [AnalyticsReportInstance]
    public let links: PagedDocumentLinks
    public var meta: PagingInformation?

    public init(data: [AnalyticsReportInstance],
                links: PagedDocumentLinks,
                meta: PagingInformation? = nil)
    {
        self.data = data
        self.links = links
        self.meta = meta
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        data = try container.decode([AnalyticsReportInstance].self, forKey: .data)
        links = try container.decode(PagedDocumentLinks.self, forKey: .links)
        meta = try container.decodeIfPresent(PagingInformation.self, forKey: .meta)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(data, forKey: .data)
        try container.encode(links, forKey: .links)
        try container.encodeIfPresent(meta, forKey: .meta)
    }

    private enum CodingKeys: String, CodingKey {
        case data
        case links
        case meta
    }
}
