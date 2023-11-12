import Bagbutik_Core
import Foundation

public struct GameCenterAchievementLocalizationCreateRequest: RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    public struct Data {
        public var type: String { "gameCenterAchievementLocalizations" }
        public let attributes: Attributes
        public let relationships: Relationships

        public init(attributes: Attributes,
                    relationships: Relationships)
        {
            self.attributes = attributes
            self.relationships = relationships
        }

        public struct Attributes {
            public let afterEarnedDescription: String
            public let beforeEarnedDescription: String
            public let locale: String
            public let name: String

            public init(afterEarnedDescription: String,
                        beforeEarnedDescription: String,
                        locale: String,
                        name: String)
            {
                self.afterEarnedDescription = afterEarnedDescription
                self.beforeEarnedDescription = beforeEarnedDescription
                self.locale = locale
                self.name = name
            }
        }

        public struct Relationships {
            public let gameCenterAchievement: GameCenterAchievement

            public init(gameCenterAchievement: GameCenterAchievement) {
                self.gameCenterAchievement = gameCenterAchievement
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
        }
    }
}
