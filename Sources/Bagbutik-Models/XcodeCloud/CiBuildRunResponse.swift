import Bagbutik_Core
import Foundation

/**
 # CiBuildRunResponse
 A response that contains a single Build Runs resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/cibuildrunresponse>
 */
public struct CiBuildRunResponse {
    /// The resource data.
    public let data: CiBuildRun
    /// The requested relationship data.
    public var included: [Included]?
    /// The navigational links that include the self-link.
    public let links: DocumentLinks

    public init(data: CiBuildRun,
                included: [Included]? = nil,
                links: DocumentLinks)
    {
        self.data = data
        self.included = included
        self.links = links
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

    public func getDestinationBranch() -> ScmGitReference? {
        included?.compactMap { relationship -> ScmGitReference? in
            guard case let .scmGitReference(destinationBranch) = relationship else { return nil }
            return destinationBranch
        }.first { $0.id == data.relationships?.destinationBranch?.data?.id }
    }

    public func getProduct() -> CiProduct? {
        included?.compactMap { relationship -> CiProduct? in
            guard case let .ciProduct(product) = relationship else { return nil }
            return product
        }.first { $0.id == data.relationships?.product?.data?.id }
    }

    public func getPullRequest() -> ScmPullRequest? {
        included?.compactMap { relationship -> ScmPullRequest? in
            guard case let .scmPullRequest(pullRequest) = relationship else { return nil }
            return pullRequest
        }.first { $0.id == data.relationships?.pullRequest?.data?.id }
    }

    public func getSourceBranchOrTag() -> ScmGitReference? {
        included?.compactMap { relationship -> ScmGitReference? in
            guard case let .scmGitReference(sourceBranchOrTag) = relationship else { return nil }
            return sourceBranchOrTag
        }.first { $0.id == data.relationships?.sourceBranchOrTag?.data?.id }
    }

    public func getWorkflow() -> CiWorkflow? {
        included?.compactMap { relationship -> CiWorkflow? in
            guard case let .ciWorkflow(workflow) = relationship else { return nil }
            return workflow
        }.first { $0.id == data.relationships?.workflow?.data?.id }
    }

    public enum Included {
        case build(Build)
        case ciProduct(CiProduct)
        case ciWorkflow(CiWorkflow)
        case scmGitReference(ScmGitReference)
        case scmPullRequest(ScmPullRequest)
    }
}
