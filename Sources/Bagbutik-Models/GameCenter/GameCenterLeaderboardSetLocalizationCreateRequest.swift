import Bagbutik_Core
import Foundation

/**
 # GameCenterLeaderboardSetLocalizationCreateRequest
 The request body you use to create a leaderboard set localization.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/gamecenterleaderboardsetlocalizationcreaterequest>
 */
public struct GameCenterLeaderboardSetLocalizationCreateRequest: RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    public struct Data {
        public var type: String { "gameCenterLeaderboardSetLocalizations" }
        public let attributes: Attributes
        public let relationships: Relationships

        public init(attributes: Attributes,
                    relationships: Relationships)
        {
            self.attributes = attributes
            self.relationships = relationships
        }

        public struct Attributes {
            public let locale: String
            public let name: String

            public init(locale: String,
                        name: String)
            {
                self.locale = locale
                self.name = name
            }
        }

        public struct Relationships {
            public let gameCenterLeaderboardSet: GameCenterLeaderboardSet

            public init(gameCenterLeaderboardSet: GameCenterLeaderboardSet) {
                self.gameCenterLeaderboardSet = gameCenterLeaderboardSet
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
