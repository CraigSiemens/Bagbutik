import Bagbutik_Core
import Foundation

/**
 # GameCenterLeaderboardSetMemberLocalization
 The data structure that represent a leaderboard set member localization.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/gamecenterleaderboardsetmemberlocalization>
 */
public struct GameCenterLeaderboardSetMemberLocalization: Identifiable {
    public let id: String
    public var links: ResourceLinks?
    public var type: String { "gameCenterLeaderboardSetMemberLocalizations" }
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
        public var locale: String?
        public var name: String?

        public init(locale: String? = nil,
                    name: String? = nil)
        {
            self.locale = locale
            self.name = name
        }
    }

    public struct Relationships {
        public var gameCenterLeaderboard: GameCenterLeaderboard?
        public var gameCenterLeaderboardSet: GameCenterLeaderboardSet?

        public init(gameCenterLeaderboard: GameCenterLeaderboard? = nil,
                    gameCenterLeaderboardSet: GameCenterLeaderboardSet? = nil)
        {
            self.gameCenterLeaderboard = gameCenterLeaderboard
            self.gameCenterLeaderboardSet = gameCenterLeaderboardSet
        }

        public struct GameCenterLeaderboard {
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
