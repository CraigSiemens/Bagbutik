import Bagbutik_Core
import Foundation

/**
 # GameCenterAchievementReleaseCreateRequest
 The request body you use to create an achievement release.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/gamecenterachievementreleasecreaterequest>
 */
public struct GameCenterAchievementReleaseCreateRequest: RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    public struct Data {
        public var type: String { "gameCenterAchievementReleases" }
        public let relationships: Relationships

        public init(relationships: Relationships) {
            self.relationships = relationships
        }

        public struct Relationships {
            public let gameCenterAchievement: GameCenterAchievement
            public let gameCenterDetail: GameCenterDetail

            public init(gameCenterAchievement: GameCenterAchievement,
                        gameCenterDetail: GameCenterDetail)
            {
                self.gameCenterAchievement = gameCenterAchievement
                self.gameCenterDetail = gameCenterDetail
            }

            public struct GameCenterAchievement {
                public let data: Data

                public init(data: Data) {
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

            public struct GameCenterDetail {
                public let data: Data

                public init(data: Data) {
                    self.data = data
                }

                public struct Data: Identifiable {
                    public let id: String
                    public var type: String { "gameCenterDetails" }

                    public init(id: String) {
                        self.id = id
                    }
                }
            }
        }
    }
}
