import Bagbutik_Core
import Foundation

/**
 # GameCenterDetailGameCenterLeaderboardsLinkagesRequest
 The request body you use to create a relationship between a Game Center detail and a leaderboard.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/gamecenterdetailgamecenterleaderboardslinkagesrequest>
 */
public struct GameCenterDetailGameCenterLeaderboardsLinkagesRequest: RequestBody {
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
