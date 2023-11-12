import Bagbutik_Core
import Foundation

public struct AppEncryptionDeclarationDocumentResponse {
    public let data: AppEncryptionDeclarationDocument
    public let links: DocumentLinks

    public init(data: AppEncryptionDeclarationDocument,
                links: DocumentLinks)
    {
        self.data = data
        self.links = links
    }
}
