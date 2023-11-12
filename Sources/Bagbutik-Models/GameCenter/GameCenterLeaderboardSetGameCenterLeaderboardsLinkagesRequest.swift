import Bagbutik_Core
import Foundation

/**
 # GameCenterLeaderboardSetGameCenterLeaderboardsLinkagesRequest
 The request body you use to create a relationship between a leaderboard set and a leaderboard.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/gamecenterleaderboardsetgamecenterleaderboardslinkagesrequest>
 */
public struct GameCenterLeaderboardSetGameCenterLeaderboardsLinkagesRequest: RequestBody {
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
