import Bagbutik_Core
import Foundation

/**
 # BetaLicenseAgreementsResponse
 A response that contains a list of Beta License Agreement resources.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/betalicenseagreementsresponse>
 */
public struct BetaLicenseAgreementsResponse: PagedResponse {
    public typealias Data = BetaLicenseAgreement

    /// The resource data.
    public let data: [BetaLicenseAgreement]
    public var included: [App]?
    /// Navigational links that include the self-link.
    public let links: PagedDocumentLinks
    /// Paging information.
    public var meta: PagingInformation?

    public init(data: [BetaLicenseAgreement],
                included: [App]? = nil,
                links: PagedDocumentLinks,
                meta: PagingInformation? = nil)
    {
        self.data = data
        self.included = included
        self.links = links
        self.meta = meta
    }
}
