import Bagbutik_Core
import Foundation

/**
 # GameCenterEnabledVersionCompatibleVersionsLinkagesResponse
 A response body that contains a list of related resource IDs.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/gamecenterenabledversioncompatibleversionslinkagesresponse>
 */
public struct GameCenterEnabledVersionCompatibleVersionsLinkagesResponse: PagedResponse {
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

    /**
     # GameCenterEnabledVersionCompatibleVersionsLinkagesResponse.Data
     The data element of the response body.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/gamecenterenabledversioncompatibleversionslinkagesresponse/data>
     */
    public struct Data: Identifiable {
        public let id: String
        public var type: String { "gameCenterEnabledVersions" }

        public init(id: String) {
            self.id = id
        }
    }
}
