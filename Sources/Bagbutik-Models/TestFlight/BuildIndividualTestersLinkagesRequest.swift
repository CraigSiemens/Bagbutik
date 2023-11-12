import Bagbutik_Core
import Foundation

/**
 # BuildIndividualTestersLinkagesRequest
 A request body you use to add or remove a build from multiple beta groups.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/buildindividualtesterslinkagesrequest>
 */
public struct BuildIndividualTestersLinkagesRequest: RequestBody {
    /// The types and IDs of related resources.
    public let data: [Data]

    public init(data: [Data]) {
        self.data = data
    }

    /**
     # BuildIndividualTestersLinkagesRequest.Data
     The data element of the request body.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/buildindividualtesterslinkagesrequest/data>
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
