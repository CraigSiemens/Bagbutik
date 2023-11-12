import Bagbutik_Core
import Foundation

/**
 # GameCenterLeaderboardLocalization
 The data structure that represent a leaderboard localization.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/gamecenterleaderboardlocalization>
 */
public struct GameCenterLeaderboardLocalization: Identifiable {
    public let id: String
    public var links: ResourceLinks?
    public var type: String { "gameCenterLeaderboardLocalizations" }
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
        public var formatterOverride: GameCenterLeaderboardFormatter?
        public var formatterSuffix: String?
        public var formatterSuffixSingular: String?
        public var locale: String?
        public var name: String?

        public init(formatterOverride: GameCenterLeaderboardFormatter? = nil,
                    formatterSuffix: String? = nil,
                    formatterSuffixSingular: String? = nil,
                    locale: String? = nil,
                    name: String? = nil)
        {
            self.formatterOverride = formatterOverride
            self.formatterSuffix = formatterSuffix
            self.formatterSuffixSingular = formatterSuffixSingular
            self.locale = locale
            self.name = name
        }
    }

    public struct Relationships {
        public var gameCenterLeaderboard: GameCenterLeaderboard?
        public var gameCenterLeaderboardImage: GameCenterLeaderboardImage?

        public init(gameCenterLeaderboard: GameCenterLeaderboard? = nil,
                    gameCenterLeaderboardImage: GameCenterLeaderboardImage? = nil)
        {
            self.gameCenterLeaderboard = gameCenterLeaderboard
            self.gameCenterLeaderboardImage = gameCenterLeaderboardImage
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

        public struct GameCenterLeaderboardImage {
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
                public var type: String { "gameCenterLeaderboardImages" }

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
