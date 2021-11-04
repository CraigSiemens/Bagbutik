import Foundation

/**
 A response body that contains a list of related resource IDs.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/buildappencryptiondeclarationlinkageresponse>
 */
public struct BuildAppEncryptionDeclarationLinkageResponse: Codable {
    /// The resource data.
    public let data: Data
    /// Navigational links that include the self-link.
    public let links: DocumentLinks

    public init(data: Data, links: DocumentLinks) {
        self.data = data
        self.links = links
    }

    public struct Data: Codable {
        public let id: String
        public var type: String { "appEncryptionDeclarations" }

        public init(id: String) {
            self.id = id
        }
    }
}
