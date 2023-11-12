import Bagbutik_Core
import Foundation

/**
 # BetaTesterBetaGroupsLinkagesRequest
 A request body you use to add or remove beta groups from a beta tester.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/betatesterbetagroupslinkagesrequest>
 */
public struct BetaTesterBetaGroupsLinkagesRequest: RequestBody {
    /// The types and IDs of related resources.
    public let data: [Data]

    public init(data: [Data]) {
        self.data = data
    }

    /**
     # BetaTesterBetaGroupsLinkagesRequest.Data
     The data element of the request body.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/betatesterbetagroupslinkagesrequest/data>
     */
    public struct Data: Identifiable {
        /// The opaque resource ID that uniquely identifies the resource.
        public let id: String
        /// The resource type.
        public var type: String { "betaGroups" }

        public init(id: String) {
            self.id = id
        }
    }
}
