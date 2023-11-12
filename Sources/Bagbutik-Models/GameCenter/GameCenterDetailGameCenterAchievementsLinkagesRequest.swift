import Bagbutik_Core
import Foundation

/**
 # GameCenterDetailGameCenterAchievementsLinkagesRequest
 The request body you use to create a relationship between a Game Center detail and an achievement.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/gamecenterdetailgamecenterachievementslinkagesrequest>
 */
public struct GameCenterDetailGameCenterAchievementsLinkagesRequest: RequestBody {
    public let data: [Data]

    public init(data: [Data]) {
        self.data = data
    }

    public struct Data: Identifiable {
        public let id: String
        public var type: String { "gameCenterAchievements" }

        public init(id: String) {
            self.id = id
        }
    }
}
