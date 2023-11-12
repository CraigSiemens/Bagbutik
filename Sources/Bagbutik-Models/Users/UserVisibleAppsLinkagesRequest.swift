import Bagbutik_Core
import Foundation

/**
 # UserVisibleAppsLinkagesRequest
 A request body you use to add or remove visible apps from a user.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/uservisibleappslinkagesrequest>
 */
public struct UserVisibleAppsLinkagesRequest: RequestBody {
    /// The object types and IDs of the related resources.
    public let data: [Data]

    public init(data: [Data]) {
        self.data = data
    }

    /**
     # UserVisibleAppsLinkagesRequest.Data
     The data element of the request body.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/uservisibleappslinkagesrequest/data>
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
