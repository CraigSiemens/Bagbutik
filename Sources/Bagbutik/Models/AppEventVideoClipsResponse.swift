import Foundation

public struct AppEventVideoClipsResponse: Codable, PagedResponse {
    public typealias Data = AppEventVideoClip
    /// The resource data.
    public let data: [AppEventVideoClip]
    /// The included related resources.
    public var included: [AppEventLocalization]?
    /// Navigational links that include the self-link.
    public let links: PagedDocumentLinks
    /// Paging information.
    public var meta: PagingInformation?

    public init(data: [AppEventVideoClip], included: [AppEventLocalization]? = nil, links: PagedDocumentLinks, meta: PagingInformation? = nil) {
        self.data = data
        self.included = included
        self.links = links
        self.meta = meta
    }
}
