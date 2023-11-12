import Bagbutik_Core
import Foundation

public struct GameCenterAchievementLocalization: Identifiable {
    public let id: String
    public var links: ResourceLinks?
    public var type: String { "gameCenterAchievementLocalizations" }
    public var attributes: Attributes?
    public var relationships: Relationships?

    public init(id: String,
                links: ResourceLinks? = nil,
                attributes: Attributes? = nil,
                relationships: Relationships? = nil)
    {
        self.id = id
        self.links = links
        self.attributes = attributes
        self.relationships = relationships
    }

    public struct Attributes {
        public var afterEarnedDescription: String?
        public var beforeEarnedDescription: String?
        public var locale: String?
        public var name: String?

        public init(afterEarnedDescription: String? = nil,
                    beforeEarnedDescription: String? = nil,
                    locale: String? = nil,
                    name: String? = nil)
        {
            self.afterEarnedDescription = afterEarnedDescription
            self.beforeEarnedDescription = beforeEarnedDescription
            self.locale = locale
            self.name = name
        }
    }

    public struct Relationships {
        public var gameCenterAchievement: GameCenterAchievement?
        public var gameCenterAchievementImage: GameCenterAchievementImage?

        public init(gameCenterAchievement: GameCenterAchievement? = nil,
                    gameCenterAchievementImage: GameCenterAchievementImage? = nil)
        {
            self.gameCenterAchievement = gameCenterAchievement
            self.gameCenterAchievementImage = gameCenterAchievementImage
        }

        public struct GameCenterAchievement {
            @NullCodable public var data: Data?
            public var links: Links?

            public init(data: Data? = nil,
                        links: Links? = nil)
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

            public struct Links {
                public var related: String?
                public var itself: String?

                public init(related: String? = nil,
                            self itself: String? = nil)
                {
                    self.related = related
                    self.itself = itself
                }
            }
        }

        public struct GameCenterAchievementImage {
            @NullCodable public var data: Data?
            public var links: Links?

            public init(data: Data? = nil,
                        links: Links? = nil)
            {
                self.data = data
                self.links = links
            }

            public struct Data: Identifiable {
                public let id: String
                public var type: String { "gameCenterAchievementImages" }

                public init(id: String) {
                    self.id = id
                }
            }

            public struct Links {
                public var related: String?
                public var itself: String?

                public init(related: String? = nil,
                            self itself: String? = nil)
                {
                    self.related = related
                    self.itself = itself
                }
            }
        }
    }
}
