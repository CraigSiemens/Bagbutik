import Bagbutik_Core
import Foundation

/**
 # GameCenterLeaderboardSetRelease
 The data structure that represent a leaderboard set release.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/gamecenterleaderboardsetrelease>
 */
public struct GameCenterLeaderboardSetRelease: Identifiable {
    public let id: String
    public var links: ResourceLinks?
    public var type: String { "gameCenterLeaderboardSetReleases" }
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
        public var gameCenterDetail: GameCenterDetail?
        public var gameCenterLeaderboardSet: GameCenterLeaderboardSet?

        public init(gameCenterDetail: GameCenterDetail? = nil,
                    gameCenterLeaderboardSet: GameCenterLeaderboardSet? = nil)
        {
            self.gameCenterDetail = gameCenterDetail
            self.gameCenterLeaderboardSet = gameCenterLeaderboardSet
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

        public struct GameCenterLeaderboardSet {
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
    }
}
