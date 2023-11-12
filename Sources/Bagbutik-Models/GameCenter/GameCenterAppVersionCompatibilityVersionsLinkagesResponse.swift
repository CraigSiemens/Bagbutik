import Bagbutik_Core
import Foundation

/**
 # GameCenterAppVersionCompatibilityVersionsLinkagesResponse
 A response that confirms a relationship between an app version and a compatilibty version.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/gamecenterappversioncompatibilityversionslinkagesresponse>
 */
public struct GameCenterAppVersionCompatibilityVersionsLinkagesResponse: PagedResponse {
    public let data: [Data]
    public let links: PagedDocumentLinks
    public var meta: PagingInformation?

    public init(data: [Data],
                links: PagedDocumentLinks,
                meta: PagingInformation? = nil)
    {
        self.data = data
        self.links = links
        self.meta = meta
    }

    public struct Data: Identifiable {
        public let id: String
        public var type: String { "gameCenterAppVersions" }

        public init(id: String) {
            self.id = id
        }
    }
}
