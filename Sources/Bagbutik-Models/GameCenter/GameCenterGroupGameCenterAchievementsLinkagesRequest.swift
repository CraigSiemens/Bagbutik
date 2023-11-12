import Bagbutik_Core
import Foundation

/**
 # GameCenterGroupGameCenterAchievementsLinkagesRequest
 The request body you use to create a relationship between a group and an achievement.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/gamecentergroupgamecenterachievementslinkagesrequest>
 */
public struct GameCenterGroupGameCenterAchievementsLinkagesRequest: RequestBody {
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
