import Bagbutik_Core
import Foundation

/**
 # BuildAppEncryptionDeclarationLinkageResponse
 A response body that contains the ID of a single related resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/buildappencryptiondeclarationlinkageresponse>
 */
public struct BuildAppEncryptionDeclarationLinkageResponse {
    /// The object types and IDs of the related resources.
    public let data: Data
    /// Navigational links including the self-link and links to the related data.
    public let links: DocumentLinks

    public init(data: Data,
                links: DocumentLinks)
    {
        self.data = data
        self.links = links
    }

    /**
     # BuildAppEncryptionDeclarationLinkageResponse.Data
     The data element of the response body.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/buildappencryptiondeclarationlinkageresponse/data>
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
