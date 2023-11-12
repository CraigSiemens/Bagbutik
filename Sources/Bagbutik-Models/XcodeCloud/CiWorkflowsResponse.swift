import Bagbutik_Core
import Foundation

/**
 # CiWorkflowsResponse
 A response that contains a list of Workflows resources.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/ciworkflowsresponse>
 */
public struct CiWorkflowsResponse: PagedResponse {
    public typealias Data = CiWorkflow

    /// The resource data.
    public let data: [CiWorkflow]
    /// The requested relationship data.
    public var included: [Included]?
    /// The navigational links that include the self-link.
    public let links: PagedDocumentLinks
    /// The paging information.
    public var meta: PagingInformation?

    public init(data: [CiWorkflow],
                included: [Included]? = nil,
                links: PagedDocumentLinks,
                meta: PagingInformation? = nil)
    {
        self.data = data
        self.included = included
        self.links = links
        self.meta = meta
    }

    public func getMacOsVersion(for ciWorkflow: CiWorkflow) -> CiMacOsVersion? {
        included?.compactMap { relationship -> CiMacOsVersion? in
            guard case let .ciMacOsVersion(macOsVersion) = relationship else { return nil }
            return macOsVersion
        }.first { $0.id == ciWorkflow.relationships?.macOsVersion?.data?.id }
    }

    public func getProduct(for ciWorkflow: CiWorkflow) -> CiProduct? {
        included?.compactMap { relationship -> CiProduct? in
            guard case let .ciProduct(product) = relationship else { return nil }
            return product
        }.first { $0.id == ciWorkflow.relationships?.product?.data?.id }
    }

    public func getRepository(for ciWorkflow: CiWorkflow) -> ScmRepository? {
        included?.compactMap { relationship -> ScmRepository? in
            guard case let .scmRepository(repository) = relationship else { return nil }
            return repository
        }.first { $0.id == ciWorkflow.relationships?.repository?.data?.id }
    }

    public func getXcodeVersion(for ciWorkflow: CiWorkflow) -> CiXcodeVersion? {
        included?.compactMap { relationship -> CiXcodeVersion? in
            guard case let .ciXcodeVersion(xcodeVersion) = relationship else { return nil }
            return xcodeVersion
        }.first { $0.id == ciWorkflow.relationships?.xcodeVersion?.data?.id }
    }

    public enum Included {
        case ciMacOsVersion(CiMacOsVersion)
        case ciProduct(CiProduct)
        case ciXcodeVersion(CiXcodeVersion)
        case scmRepository(ScmRepository)
    }
}
