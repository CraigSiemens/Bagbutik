import Bagbutik_Core
import Foundation

/**
 # GameCenterDetailGameCenterLeaderboardsLinkagesResponse
 A response that confirms a relationship between a Game Center detail and a leaderboard.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/gamecenterdetailgamecenterleaderboardslinkagesresponse>
 */
public struct GameCenterDetailGameCenterLeaderboardsLinkagesResponse: PagedResponse {
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
        public var type: String { "gameCenterLeaderboards" }

        public init(id: String) {
            self.id = id
        }
    }
}
