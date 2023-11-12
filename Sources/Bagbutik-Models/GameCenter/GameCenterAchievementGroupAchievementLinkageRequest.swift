import Bagbutik_Core
import Foundation

/**
 # GameCenterAchievementGroupAchievementLinkageRequest
 The request body you use to attach an achievement to an achievement group.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/gamecenterachievementgroupachievementlinkagerequest>
 */
public struct GameCenterAchievementGroupAchievementLinkageRequest: RequestBody {
    @NullCodable public var data: Data?

    public init(data: Data? = nil) {
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
