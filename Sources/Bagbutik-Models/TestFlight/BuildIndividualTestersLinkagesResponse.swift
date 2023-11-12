import Bagbutik_Core
import Foundation

/**
 # BuildIndividualTestersLinkagesResponse
 A response body that contains a list of related resource IDs.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/buildindividualtesterslinkagesresponse>
 */
public struct BuildIndividualTestersLinkagesResponse: PagedResponse {
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
     # BuildIndividualTestersLinkagesResponse.Data
     The data element of the response body.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/buildindividualtesterslinkagesresponse/data>
     */
    public struct Data: Identifiable {
        /// The opaque resource ID that uniquely identifies the resource.
        public let id: String
        /// The resource type.
        public var type: String { "betaTesters" }

        public init(id: String) {
            self.id = id
        }
    }
}
