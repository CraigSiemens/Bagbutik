import Bagbutik_Core
import Foundation

/**
 # GameCenterGroupGameCenterLeaderboardSetsLinkagesRequest
 The request body you use to create a relationship between a group and a leaderboard set.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/gamecentergroupgamecenterleaderboardsetslinkagesrequest>
 */
public struct GameCenterGroupGameCenterLeaderboardSetsLinkagesRequest: RequestBody {
    public let data: [Data]

    public init(data: [Data]) {
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
