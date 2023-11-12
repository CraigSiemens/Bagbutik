import Bagbutik_Core
import Foundation

/**
 # AppEncryptionDeclarationBuildsLinkagesRequest
 A request body you use to add builds to an app encryption declaration.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/appencryptiondeclarationbuildslinkagesrequest>
 */
public struct AppEncryptionDeclarationBuildsLinkagesRequest: RequestBody {
    /// The object types and IDs of the related resources.
    public let data: [Data]

    public init(data: [Data]) {
        self.data = data
    }

    /**
     # AppEncryptionDeclarationBuildsLinkagesRequest.Data
     The data element of the request body.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/appencryptiondeclarationbuildslinkagesrequest/data>
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
