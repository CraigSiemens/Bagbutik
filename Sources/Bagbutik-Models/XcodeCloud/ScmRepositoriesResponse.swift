import Bagbutik_Core
import Foundation

/**
 # ScmRepositoriesResponse
 A response that contains a list of Repositories resources.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/scmrepositoriesresponse>
 */
public struct ScmRepositoriesResponse: PagedResponse {
    public typealias Data = ScmRepository

    /// The resource data.
    public let data: [ScmRepository]
    /// The requested relationship data.
    public var included: [Included]?
    /// The navigational links that include the self-link.
    public let links: PagedDocumentLinks
    /// The paging information.
    public var meta: PagingInformation?

    public init(data: [ScmRepository],
                included: [Included]? = nil,
                links: PagedDocumentLinks,
                meta: PagingInformation? = nil)
    {
        self.data = data
        self.included = included
        self.links = links
        self.meta = meta
    }

    public func getDefaultBranch(for scmRepository: ScmRepository) -> ScmGitReference? {
        included?.compactMap { relationship -> ScmGitReference? in
            guard case let .scmGitReference(defaultBranch) = relationship else { return nil }
            return defaultBranch
        }.first { $0.id == scmRepository.relationships?.defaultBranch?.data?.id }
    }

    public func getScmProvider(for scmRepository: ScmRepository) -> ScmProvider? {
        included?.compactMap { relationship -> ScmProvider? in
            guard case let .scmProvider(scmProvider) = relationship else { return nil }
            return scmProvider
        }.first { $0.id == scmRepository.relationships?.scmProvider?.data?.id }
    }

    public enum Included {
        case scmGitReference(ScmGitReference)
        case scmProvider(ScmProvider)
    }
}
