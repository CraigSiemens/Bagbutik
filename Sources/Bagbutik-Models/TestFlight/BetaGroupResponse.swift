import Bagbutik_Core
import Foundation

/**
 # BetaGroupResponse
 A response that contains a single Beta Groups resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/betagroupresponse>
 */
public struct BetaGroupResponse {
    /// The resource data.
    public let data: BetaGroup
    public var included: [Included]?
    /// Navigational links that include the self-link.
    public let links: DocumentLinks

    public init(data: BetaGroup,
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

    public func getBetaTesters() -> [BetaTester] {
        guard let betaTesterIds = data.relationships?.betaTesters?.data?.map(\.id),
              let betaTesters = included?.compactMap({ relationship -> BetaTester? in
                  guard case let .betaTester(betaTester) = relationship else { return nil }
                  return betaTesterIds.contains(betaTester.id) ? betaTester : nil
              })
        else {
            return []
        }
        return betaTesters
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
        case betaTester(BetaTester)
        case build(Build)
    }
}
