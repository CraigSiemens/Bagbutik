import Bagbutik_Core
import Foundation

/**
 # GameCenterGroupGameCenterLeaderboardsLinkagesRequest
 The request body you use to create a relationship between a group and a leaderboard.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/gamecentergroupgamecenterleaderboardslinkagesrequest>
 */
public struct GameCenterGroupGameCenterLeaderboardsLinkagesRequest: RequestBody {
    public let data: [Data]

    public init(data: [Data]) {
        self.data = data
    }

    public struct Data: Identifiable {
        public let id: String
        public var type: String { "gameCenterLeaderboards" }

        public init(id: String) {
            self.id = id
        }
    }
}
