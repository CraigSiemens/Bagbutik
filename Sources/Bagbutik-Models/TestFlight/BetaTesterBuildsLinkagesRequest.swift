import Bagbutik_Core
import Foundation

/**
 # BetaTesterBuildsLinkagesRequest
 A request body you use to add or remove builds from a beta tester.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/betatesterbuildslinkagesrequest>
 */
public struct BetaTesterBuildsLinkagesRequest: RequestBody {
    /// The types and IDs of related resources.
    public let data: [Data]

    public init(data: [Data]) {
        self.data = data
    }

    /**
     # BetaTesterBuildsLinkagesRequest.Data
     The data element of the request body.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/betatesterbuildslinkagesrequest/data>
     */
    public struct Data: Identifiable {
        /// The opaque resource ID that uniquely identifies the resource.
        public let id: String
        /// The resource type.
        public var type: String { "builds" }

        public init(id: String) {
            self.id = id
        }
    }
}
