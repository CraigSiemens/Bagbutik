import Bagbutik_Core
import Foundation

/**
 # GameCenterLeaderboardSetGroupLeaderboardSetLinkageResponse
 A response that confirms a relationship between a leaderboard set and a group leaderboard set.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/gamecenterleaderboardsetgroupleaderboardsetlinkageresponse>
 */
public struct GameCenterLeaderboardSetGroupLeaderboardSetLinkageResponse {
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
        public var type: String { "gameCenterLeaderboardSets" }

        public init(id: String) {
            self.id = id
        }
    }
}
