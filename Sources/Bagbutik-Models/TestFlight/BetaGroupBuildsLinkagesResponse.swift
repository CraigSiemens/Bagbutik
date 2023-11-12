import Bagbutik_Core
import Foundation

/**
 # BetaGroupBuildsLinkagesResponse
 A response body that contains a list of related resource IDs.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/betagroupbuildslinkagesresponse>
 */
public struct BetaGroupBuildsLinkagesResponse: PagedResponse {
    /// The object types and IDs of the related resources.
    public let data: [Data]
    /// Navigational links including the self-link and links to the related data.
    public let links: PagedDocumentLinks
    /// Paging information.
    public var meta: PagingInformation?

    public init(data: [Data],
                links: PagedDocumentLinks,
                meta: PagingInformation? = nil)
    {
        self.data = data
        self.links = links
        self.meta = meta
    }

    /**
     # BetaGroupBuildsLinkagesResponse.Data
     The data element of the response body.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/betagroupbuildslinkagesresponse/data>
     */
    public struct Data: Identifiable {
        /// The opaque resource ID that uniquely identifies the resource.
        public let id: String
        /// The resource type.
        public var type: String { "builds" }

        public init(id: String) {
            self.id = id
        }
    }
}
