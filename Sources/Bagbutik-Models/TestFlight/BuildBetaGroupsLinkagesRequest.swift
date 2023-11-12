import Bagbutik_Core
import Foundation

/**
 # BuildBetaGroupsLinkagesRequest
 A request body you use to add or remove beta groups from a build.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/buildbetagroupslinkagesrequest>
 */
public struct BuildBetaGroupsLinkagesRequest: RequestBody {
    /// The types and IDs of related resources.
    public let data: [Data]

    public init(data: [Data]) {
        self.data = data
    }

    /**
     # BuildBetaGroupsLinkagesRequest.Data
     The data element of the request body.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/buildbetagroupslinkagesrequest/data>
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
