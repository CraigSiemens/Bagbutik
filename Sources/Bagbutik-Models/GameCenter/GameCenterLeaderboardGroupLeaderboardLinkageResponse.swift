import Bagbutik_Core
import Foundation

/**
 # GameCenterLeaderboardGroupLeaderboardLinkageResponse
 A response confriming a relationship between a leaderboard and group leaderboard.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/gamecenterleaderboardgroupleaderboardlinkageresponse>
 */
public struct GameCenterLeaderboardGroupLeaderboardLinkageResponse {
    public let data: Data
    public let links: DocumentLinks

    public init(data: Data,
                links: DocumentLinks)
    {
        self.data = data
        self.links = links
    }

    public struct Data: Identifiable {
        public let id: String
        public var type: String { "gameCenterLeaderboards" }

        public init(id: String) {
            self.id = id
        }
    }
}
