import Bagbutik_Core
import Foundation

/**
 # AppScreenshotSetAppScreenshotsLinkagesRequest
 A request body you use to reorder the screenshots in a screenshot set.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/appscreenshotsetappscreenshotslinkagesrequest>
 */
public struct AppScreenshotSetAppScreenshotsLinkagesRequest: RequestBody {
    public let data: [Data]

    public init(data: [Data]) {
        self.data = data
    }

    /**
     # AppScreenshotSetAppScreenshotsLinkagesRequest.Data
     The data element of the request body.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/appscreenshotsetappscreenshotslinkagesrequest/data>
     */
    public struct Data: Identifiable {
        public let id: String
        public var type: String { "appScreenshots" }

        public init(id: String) {
            self.id = id
        }
    }
}
