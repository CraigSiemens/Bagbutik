import Bagbutik_Core
import Foundation

/**
 # GameCenterDetailGameCenterLeaderboardSetsLinkagesResponse
 A response that confirms a relationship between a Game Center detail and leaderboard set.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/gamecenterdetailgamecenterleaderboardsetslinkagesresponse>
 */
public struct GameCenterDetailGameCenterLeaderboardSetsLinkagesResponse: PagedResponse {
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
        public var type: String { "gameCenterLeaderboardSets" }

        public init(id: String) {
            self.id = id
        }
    }
}
