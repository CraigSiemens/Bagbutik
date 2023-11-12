import Bagbutik_Core
import Foundation

/**
 # GameCenterGroup
 The data structure that represents a group resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/gamecentergroup>
 */
public struct GameCenterGroup: Identifiable {
    public let id: String
    public var links: ResourceLinks?
    public var type: String { "gameCenterGroups" }
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
        public var referenceName: String?

        public init(referenceName: String? = nil) {
            self.referenceName = referenceName
        }
    }

    public struct Relationships {
        public var gameCenterAchievements: GameCenterAchievements?
        public var gameCenterDetails: GameCenterDetails?
        public var gameCenterLeaderboardSets: GameCenterLeaderboardSets?
        public var gameCenterLeaderboards: GameCenterLeaderboards?

        public init(gameCenterAchievements: GameCenterAchievements? = nil,
                    gameCenterDetails: GameCenterDetails? = nil,
                    gameCenterLeaderboardSets: GameCenterLeaderboardSets? = nil,
                    gameCenterLeaderboards: GameCenterLeaderboards? = nil)
        {
            self.gameCenterAchievements = gameCenterAchievements
            self.gameCenterDetails = gameCenterDetails
            self.gameCenterLeaderboardSets = gameCenterLeaderboardSets
            self.gameCenterLeaderboards = gameCenterLeaderboards
        }

        public struct GameCenterAchievements {
            @NullCodable public var data: [Data]?
            public var links: Links?
            public var meta: PagingInformation?

            public init(data: [Data]? = nil,
                        links: Links? = nil,
                        meta: PagingInformation? = nil)
            {
                self.data = data
                self.links = links
                self.meta = meta
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

        public struct GameCenterDetails {
            @NullCodable public var data: [Data]?
            public var links: Links?
            public var meta: PagingInformation?

            public init(data: [Data]? = nil,
                        links: Links? = nil,
                        meta: PagingInformation? = nil)
            {
                self.data = data
                self.links = links
                self.meta = meta
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

        public struct GameCenterLeaderboardSets {
            @NullCodable public var data: [Data]?
            public var links: Links?
            public var meta: PagingInformation?

            public init(data: [Data]? = nil,
                        links: Links? = nil,
                        meta: PagingInformation? = nil)
            {
                self.data = data
                self.links = links
                self.meta = meta
            }

            public struct Data: Identifiable {
                public let id: String
                public var type: String { "gameCenterLeaderboardSets" }

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

        public struct GameCenterLeaderboards {
            @NullCodable public var data: [Data]?
            public var links: Links?
            public var meta: PagingInformation?

            public init(data: [Data]? = nil,
                        links: Links? = nil,
                        meta: PagingInformation? = nil)
            {
                self.data = data
                self.links = links
                self.meta = meta
            }

            public struct Data: Identifiable {
                public let id: String
                public var type: String { "gameCenterLeaderboards" }

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
