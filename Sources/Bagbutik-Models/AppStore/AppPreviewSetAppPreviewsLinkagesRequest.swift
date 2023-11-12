import Bagbutik_Core
import Foundation

/**
 # AppPreviewSetAppPreviewsLinkagesRequest
 A request body you use to reorder the app previews in a preview set.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/apppreviewsetapppreviewslinkagesrequest>
 */
public struct AppPreviewSetAppPreviewsLinkagesRequest: RequestBody {
    public let data: [Data]

    public init(data: [Data]) {
        self.data = data
    }

    /**
     # AppPreviewSetAppPreviewsLinkagesRequest.Data
     The data element of the request body.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/apppreviewsetapppreviewslinkagesrequest/data>
     */
    public struct Data: Identifiable {
        public let id: String
        public var type: String { "appPreviews" }

        public init(id: String) {
            self.id = id
        }
    }
}
