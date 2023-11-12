import Bagbutik_Core
import Foundation

/**
 # GameCenterLeaderboardSetGameCenterLeaderboardsLinkagesResponse
 A response that confirms a relationship between a leaderboard set and a leaderboard.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/gamecenterleaderboardsetgamecenterleaderboardslinkagesresponse>
 */
public struct GameCenterLeaderboardSetGameCenterLeaderboardsLinkagesResponse: PagedResponse {
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
