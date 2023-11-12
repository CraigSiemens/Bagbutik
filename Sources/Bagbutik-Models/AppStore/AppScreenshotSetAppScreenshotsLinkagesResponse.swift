import Bagbutik_Core
import Foundation

/**
 # AppScreenshotSetAppScreenshotsLinkagesResponse
 A response body that contains a list of related resource IDs.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/appscreenshotsetappscreenshotslinkagesresponse>
 */
public struct AppScreenshotSetAppScreenshotsLinkagesResponse: PagedResponse {
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
     # AppScreenshotSetAppScreenshotsLinkagesResponse.Data
     The data element of the response body.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/appscreenshotsetappscreenshotslinkagesresponse/data>
     */
    public struct Data: Identifiable {
        public let id: String
        public var type: String { "appScreenshots" }

        public init(id: String) {
            self.id = id
        }
    }
}
