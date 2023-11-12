import Bagbutik_Core
import Foundation

/**
 # CiBuildRunsResponse
 A response that contains a list of Build Runs resources.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/cibuildrunsresponse>
 */
public struct CiBuildRunsResponse: PagedResponse {
    public typealias Data = CiBuildRun

    /// The resource data.
    public let data: [CiBuildRun]
    /// The requested relationship data.
    public var included: [Included]?
    /// The navigational links that include the self-link.
    public let links: PagedDocumentLinks
    /// The paging information.
    public var meta: PagingInformation?

    public init(data: [CiBuildRun],
                included: [Included]? = nil,
                links: PagedDocumentLinks,
                meta: PagingInformation? = nil)
    {
        self.data = data
        self.included = included
        self.links = links
        self.meta = meta
    }

    public func getBuilds(for ciBuildRun: CiBuildRun) -> [Build] {
        guard let buildIds = ciBuildRun.relationships?.builds?.data?.map(\.id),
              let builds = included?.compactMap({ relationship -> Build? in
                  guard case let .build(build) = relationship else { return nil }
                  return buildIds.contains(build.id) ? build : nil
              })
        else {
            return []
        }
        return builds
    }

    public func getDestinationBranch(for ciBuildRun: CiBuildRun) -> ScmGitReference? {
        included?.compactMap { relationship -> ScmGitReference? in
            guard case let .scmGitReference(destinationBranch) = relationship else { return nil }
            return destinationBranch
        }.first { $0.id == ciBuildRun.relationships?.destinationBranch?.data?.id }
    }

    public func getProduct(for ciBuildRun: CiBuildRun) -> CiProduct? {
        included?.compactMap { relationship -> CiProduct? in
            guard case let .ciProduct(product) = relationship else { return nil }
            return product
        }.first { $0.id == ciBuildRun.relationships?.product?.data?.id }
    }

    public func getPullRequest(for ciBuildRun: CiBuildRun) -> ScmPullRequest? {
        included?.compactMap { relationship -> ScmPullRequest? in
            guard case let .scmPullRequest(pullRequest) = relationship else { return nil }
            return pullRequest
        }.first { $0.id == ciBuildRun.relationships?.pullRequest?.data?.id }
    }

    public func getSourceBranchOrTag(for ciBuildRun: CiBuildRun) -> ScmGitReference? {
        included?.compactMap { relationship -> ScmGitReference? in
            guard case let .scmGitReference(sourceBranchOrTag) = relationship else { return nil }
            return sourceBranchOrTag
        }.first { $0.id == ciBuildRun.relationships?.sourceBranchOrTag?.data?.id }
    }

    public func getWorkflow(for ciBuildRun: CiBuildRun) -> CiWorkflow? {
        included?.compactMap { relationship -> CiWorkflow? in
            guard case let .ciWorkflow(workflow) = relationship else { return nil }
            return workflow
        }.first { $0.id == ciBuildRun.relationships?.workflow?.data?.id }
    }

    public enum Included {
        case build(Build)
        case ciProduct(CiProduct)
        case ciWorkflow(CiWorkflow)
        case scmGitReference(ScmGitReference)
        case scmPullRequest(ScmPullRequest)
    }
}
