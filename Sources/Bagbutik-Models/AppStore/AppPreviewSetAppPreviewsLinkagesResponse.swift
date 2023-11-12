import Bagbutik_Core
import Foundation

/**
 # AppPreviewSetAppPreviewsLinkagesResponse
 A response body that contains a list of related resource IDs.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/apppreviewsetapppreviewslinkagesresponse>
 */
public struct AppPreviewSetAppPreviewsLinkagesResponse: PagedResponse {
    public let data: [Data]
    public let links: PagedDocumentLinks
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
     # AppPreviewSetAppPreviewsLinkagesResponse.Data
     The data element of the response body.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/apppreviewsetapppreviewslinkagesresponse/data>
     */
    public struct Data: Identifiable {
        public let id: String
        public var type: String { "appPreviews" }

        public init(id: String) {
            self.id = id
        }
    }
}
