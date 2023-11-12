import Bagbutik_Core
import Foundation

/**
 # GameCenterAchievementRelease
 The data structure that represent an achievements release resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/gamecenterachievementrelease>
 */
public struct GameCenterAchievementRelease: Identifiable {
    public let id: String
    public var links: ResourceLinks?
    public var type: String { "gameCenterAchievementReleases" }
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
        public var live: Bool?

        public init(live: Bool? = nil) {
            self.live = live
        }
    }

    public struct Relationships {
        public var gameCenterAchievement: GameCenterAchievement?
        public var gameCenterDetail: GameCenterDetail?

        public init(gameCenterAchievement: GameCenterAchievement? = nil,
                    gameCenterDetail: GameCenterDetail? = nil)
        {
            self.gameCenterAchievement = gameCenterAchievement
            self.gameCenterDetail = gameCenterDetail
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

        public struct GameCenterDetail {
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
                public var type: String { "gameCenterDetails" }

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
