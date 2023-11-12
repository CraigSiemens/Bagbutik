import Bagbutik_Core
import Foundation

/**
 # BuildAppEncryptionDeclarationLinkageRequest
 The request body you use to attach an app encryption declaration to a build.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/buildappencryptiondeclarationlinkagerequest>
 */
public struct BuildAppEncryptionDeclarationLinkageRequest: RequestBody {
    /// The types and IDs of related resources.
    @NullCodable public var data: Data?

    public init(data: Data? = nil) {
        self.data = data
    }

    /**
     # BuildAppEncryptionDeclarationLinkageRequest.Data
     The data element of the request body.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/buildappencryptiondeclarationlinkagerequest/data>
     */
    public struct Data: Identifiable {
        /// The opaque resource ID that uniquely identifies the resource.
        public let id: String
        /// The resource type.
        public var type: String { "appEncryptionDeclarations" }

        public init(id: String) {
            self.id = id
        }
    }
}
