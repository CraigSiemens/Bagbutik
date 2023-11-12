import Bagbutik_Core
import Foundation

/**
 # GameCenterLeaderboardSetMemberLocalizationCreateRequest
 The request body you use to create a leaderboard set localization.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/gamecenterleaderboardsetmemberlocalizationcreaterequest>
 */
public struct GameCenterLeaderboardSetMemberLocalizationCreateRequest: RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    public struct Data {
        public var type: String { "gameCenterLeaderboardSetMemberLocalizations" }
        public var attributes: Attributes?
        public let relationships: Relationships

        public init(attributes: Attributes? = nil,
                    relationships: Relationships)
        {
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
            public let gameCenterLeaderboard: GameCenterLeaderboard
            public let gameCenterLeaderboardSet: GameCenterLeaderboardSet

            public init(gameCenterLeaderboard: GameCenterLeaderboard,
                        gameCenterLeaderboardSet: GameCenterLeaderboardSet)
            {
                self.gameCenterLeaderboard = gameCenterLeaderboard
                self.gameCenterLeaderboardSet = gameCenterLeaderboardSet
            }

            public struct GameCenterLeaderboard {
                public let data: Data

                public init(data: Data) {
                    self.data = data
                }

                public struct Data: Identifiable {
                    public let id: String
                    public var type: String { "gameCenterLeaderboards" }

                    public init(id: String) {
                        self.id = id
                    }
                }
            }

            public struct GameCenterLeaderboardSet {
                public let data: Data

                public init(data: Data) {
                    self.data = data
                }

                public struct Data: Identifiable {
                    public let id: String
                    public var type: String { "gameCenterLeaderboardSets" }

                    public init(id: String) {
                        self.id = id
                    }
                }
            }
        }
    }
}
