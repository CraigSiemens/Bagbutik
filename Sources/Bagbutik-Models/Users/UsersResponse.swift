import Bagbutik_Core
import Foundation

/**
 # UsersResponse
 A response that contains a list of Users resources.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/usersresponse>
 */
public struct UsersResponse: Codable, PagedResponse {
    public typealias Data = User

    /// The resource data.
    public let data: [User]
    public var included: [App]?
    /// Navigational links that include the self-link.
    public let links: PagedDocumentLinks
    /// Paging information.
    public var meta: PagingInformation?

    public init(data: [User],
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