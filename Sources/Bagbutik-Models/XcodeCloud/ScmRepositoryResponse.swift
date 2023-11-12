import Bagbutik_Core
import Foundation

/**
 # ScmRepositoryResponse
 A response that contains a single Repositories resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/scmrepositoryresponse>
 */
public struct ScmRepositoryResponse {
    /// The resource data.
    public let data: ScmRepository
    /// The requested relationship data.
    public var included: [Included]?
    /// The navigational links that include the self-link.
    public let links: DocumentLinks

    public init(data: ScmRepository,
                included: [Included]? = nil,
                links: DocumentLinks)
    {
        self.data = data
        self.included = included
        self.links = links
    }

    public func getDefaultBranch() -> ScmGitReference? {
        included?.compactMap { relationship -> ScmGitReference? in
            guard case let .scmGitReference(defaultBranch) = relationship else { return nil }
            return defaultBranch
        }.first { $0.id == data.relationships?.defaultBranch?.data?.id }
    }

    public func getScmProvider() -> ScmProvider? {
        included?.compactMap { relationship -> ScmProvider? in
            guard case let .scmProvider(scmProvider) = relationship else { return nil }
            return scmProvider
        }.first { $0.id == data.relationships?.scmProvider?.data?.id }
    }

    public enum Included {
        case scmGitReference(ScmGitReference)
        case scmProvider(ScmProvider)
    }
}
