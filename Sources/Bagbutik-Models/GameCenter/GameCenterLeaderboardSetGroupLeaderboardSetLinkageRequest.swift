import Bagbutik_Core
import Foundation

/**
 # GameCenterLeaderboardSetGroupLeaderboardSetLinkageRequest
 The request body you use to create a relationship between a leaderboard set and a group leaderboard set.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/gamecenterleaderboardsetgroupleaderboardsetlinkagerequest>
 */
public struct GameCenterLeaderboardSetGroupLeaderboardSetLinkageRequest: RequestBody {
    @NullCodable public var data: Data?

    public init(data: Data? = nil) {
        self.data = data
    }

    public struct Data: Identifiable {
        public let id: String
        public var type: String { "gameCenterLeaderboardSets" }

        public init(id: String) {
            self.id = id
        }
    }
}
