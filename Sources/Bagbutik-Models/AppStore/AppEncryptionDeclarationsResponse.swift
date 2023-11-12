import Bagbutik_Core
import Foundation

/**
 # AppEncryptionDeclarationsResponse
 A response that contains a list of App Encryption Declaration resources.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/appencryptiondeclarationsresponse>
 */
public struct AppEncryptionDeclarationsResponse: PagedResponse {
    public typealias Data = AppEncryptionDeclaration

    /// The resource data.
    public let data: [AppEncryptionDeclaration]
    public var included: [Included]?
    /// Navigational links that include the self-link.
    public let links: PagedDocumentLinks
    /// Paging information.
    public var meta: PagingInformation?

    public init(data: [AppEncryptionDeclaration],
                included: [Included]? = nil,
                links: PagedDocumentLinks,
                meta: PagingInformation? = nil)
    {
        self.data = data
        self.included = included
        self.links = links
        self.meta = meta
    }

    public func getApp(for appEncryptionDeclaration: AppEncryptionDeclaration) -> App? {
        included?.compactMap { relationship -> App? in
            guard case let .app(app) = relationship else { return nil }
            return app
        }.first { $0.id == appEncryptionDeclaration.relationships?.app?.data?.id }
    }

    public func getAppEncryptionDeclarationDocument(for appEncryptionDeclaration: AppEncryptionDeclaration) -> AppEncryptionDeclarationDocument? {
        included?.compactMap { relationship -> AppEncryptionDeclarationDocument? in
            guard case let .appEncryptionDeclarationDocument(appEncryptionDeclarationDocument) = relationship else { return nil }
            return appEncryptionDeclarationDocument
        }.first { $0.id == appEncryptionDeclaration.relationships?.appEncryptionDeclarationDocument?.data?.id }
    }

    public enum Included {
        case app(App)
        case appEncryptionDeclarationDocument(AppEncryptionDeclarationDocument)
        case build(Build)
    }
}
