import Bagbutik_Core
import Foundation

/**
 # BetaTesterAppsLinkagesRequest
 A request body you use to remove an app from a beta tester.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/betatesterappslinkagesrequest>
 */
public struct BetaTesterAppsLinkagesRequest: RequestBody {
    /// The types and IDs of related resources.
    public let data: [Data]

    public init(data: [Data]) {
        self.data = data
    }

    /**
     # BetaTesterAppsLinkagesRequest.Data
     The data element of the request body.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/betatesterappslinkagesrequest/data>
     */
    public struct Data: Identifiable {
        /// The opaque resource ID that uniquely identifies the resource.
        public let id: String
        /// The resource type.
        public var type: String { "apps" }

        public init(id: String) {
            self.id = id
        }
    }
}
