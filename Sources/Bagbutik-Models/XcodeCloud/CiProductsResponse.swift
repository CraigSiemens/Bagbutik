import Bagbutik_Core
import Foundation

/**
 # CiProductsResponse
 A response that contains a list of Products resources.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/ciproductsresponse>
 */
public struct CiProductsResponse: PagedResponse {
    public typealias Data = CiProduct

    /// The resource data.
    public let data: [CiProduct]
    /// The requested relationship data.
    public var included: [Included]?
    /// The navigational links that include the self-link.
    public let links: PagedDocumentLinks
    /// The paging information.
    public var meta: PagingInformation?

    public init(data: [CiProduct],
                included: [Included]? = nil,
                links: PagedDocumentLinks,
                meta: PagingInformation? = nil)
    {
        self.data = data
        self.included = included
        self.links = links
        self.meta = meta
    }

    public func getApp(for ciProduct: CiProduct) -> App? {
        included?.compactMap { relationship -> App? in
            guard case let .app(app) = relationship else { return nil }
            return app
        }.first { $0.id == ciProduct.relationships?.app?.data?.id }
    }

    public func getBundleId(for ciProduct: CiProduct) -> BundleId? {
        included?.compactMap { relationship -> BundleId? in
            guard case let .bundleId(bundleId) = relationship else { return nil }
            return bundleId
        }.first { $0.id == ciProduct.relationships?.bundleId?.data?.id }
    }

    public func getPrimaryRepositories(for ciProduct: CiProduct) -> [ScmRepository] {
        guard let primaryRepositoryIds = ciProduct.relationships?.primaryRepositories?.data?.map(\.id),
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
