import Bagbutik_Core
import Foundation

/**
 # AppBetaTestersLinkagesRequest
 A request body you use to remove beta testers from an app.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/appbetatesterslinkagesrequest>
 */
public struct AppBetaTestersLinkagesRequest: RequestBody {
    /// The types and IDs of related resources.
    public let data: [Data]

    public init(data: [Data]) {
        self.data = data
    }

    /**
     # AppBetaTestersLinkagesRequest.Data
     The data element of the request body.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/appbetatesterslinkagesrequest/data>
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
