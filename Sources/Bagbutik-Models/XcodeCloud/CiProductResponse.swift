import Bagbutik_Core
import Foundation

/**
 # CiProductResponse
 A response that contains a single Products resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/ciproductresponse>
 */
public struct CiProductResponse {
    /// The resource data.
    public let data: CiProduct
    /// The requested relationship data.
    public var included: [Included]?
    /// The navigational links that include the self-link.
    public let links: DocumentLinks

    public init(data: CiProduct,
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

    public func getBundleId() -> BundleId? {
        included?.compactMap { relationship -> BundleId? in
            guard case let .bundleId(bundleId) = relationship else { return nil }
            return bundleId
        }.first { $0.id == data.relationships?.bundleId?.data?.id }
    }

    public func getPrimaryRepositories() -> [ScmRepository] {
        guard let primaryRepositoryIds = data.relationships?.primaryRepositories?.data?.map(\.id),
              let primaryRepositories = included?.compactMap({ relationship -> ScmRepository? in
                  guard case let .scmRepository(primaryRepository) = relationship else { return nil }
                  return primaryRepositoryIds.contains(primaryRepository.id) ? primaryRepository : nil
              })
        else {
            return []
        }
        return primaryRepositories
    }

    public enum Included {
        case app(App)
        case bundleId(BundleId)
        case scmRepository(ScmRepository)
    }
}
