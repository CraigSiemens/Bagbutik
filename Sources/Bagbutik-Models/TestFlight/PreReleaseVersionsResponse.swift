import Bagbutik_Core
import Foundation

/**
 # PreReleaseVersionsResponse
 A response that contains a list of Pre-Release Version resources.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/prereleaseversionsresponse>
 */
public struct PreReleaseVersionsResponse: PagedResponse {
    public typealias Data = PrereleaseVersion

    /// The resource data.
    public let data: [PrereleaseVersion]
    public var included: [Included]?
    /// Navigational links that include the self-link.
    public let links: PagedDocumentLinks
    /// Paging information.
    public var meta: PagingInformation?

    public init(data: [PrereleaseVersion],
                included: [Included]? = nil,
                links: PagedDocumentLinks,
                meta: PagingInformation? = nil)
    {
        self.data = data
        self.included = included
        self.links = links
        self.meta = meta
    }

    public func getApp(for prereleaseVersion: PrereleaseVersion) -> App? {
        included?.compactMap { relationship -> App? in
            guard case let .app(app) = relationship else { return nil }
            return app
        }.first { $0.id == prereleaseVersion.relationships?.app?.data?.id }
    }

    public func getBuilds(for prereleaseVersion: PrereleaseVersion) -> [Build] {
        guard let buildIds = prereleaseVersion.relationships?.builds?.data?.map(\.id),
              let builds = included?.compactMap({ relationship -> Build? in
                  guard case let .build(build) = relationship else { return nil }
                  return buildIds.contains(build.id) ? build : nil
              })
        else {
            return []
        }
        return builds
    }

    public enum Included {
        case app(App)
        case build(Build)
    }
}
