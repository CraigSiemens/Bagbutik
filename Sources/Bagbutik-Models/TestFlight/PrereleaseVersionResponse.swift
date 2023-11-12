import Bagbutik_Core
import Foundation

/**
 # PrereleaseVersionResponse
 A response that contains a single Prerelease Versions resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/prereleaseversionresponse>
 */
public struct PrereleaseVersionResponse {
    /// The resource data.
    public let data: PrereleaseVersion
    public var included: [Included]?
    /// Navigational links that include the self-link.
    public let links: DocumentLinks

    public init(data: PrereleaseVersion,
                included: [Included]? = nil,
                links: DocumentLinks)
    {
        self.data = data
        self.included = included
        self.links = links
    }

    public func getApp() -> App? {
        included?.compactMap { relationship -> App? in
            guard case let .app(app) = relationship else { return nil }
            return app
        }.first { $0.id == data.relationships?.app?.data?.id }
    }

    public func getBuilds() -> [Build] {
        guard let buildIds = data.relationships?.builds?.data?.map(\.id),
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
