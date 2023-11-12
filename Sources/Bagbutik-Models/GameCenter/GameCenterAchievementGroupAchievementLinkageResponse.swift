import Bagbutik_Core
import Foundation

/**
 # GameCenterAchievementGroupAchievementLinkageResponse
 A response body that contains the ID of a single related resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/gamecenterachievementgroupachievementlinkageresponse>
 */
public struct GameCenterAchievementGroupAchievementLinkageResponse {
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
        public var type: String { "gameCenterAchievements" }

        public init(id: String) {
            self.id = id
        }
    }
}
