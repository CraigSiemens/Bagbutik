import Bagbutik_Core
import Foundation

/**
 # GameCenterLeaderboardLocalizationCreateRequest
 The request body you use to create a leaderboard localization.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/gamecenterleaderboardlocalizationcreaterequest>
 */
public struct GameCenterLeaderboardLocalizationCreateRequest: RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    public struct Data {
        public var type: String { "gameCenterLeaderboardLocalizations" }
        public let attributes: Attributes
        public let relationships: Relationships

        public init(attributes: Attributes,
                    relationships: Relationships)
        {
            self.attributes = attributes
            self.relationships = relationships
        }

        public struct Attributes {
            public var formatterOverride: GameCenterLeaderboardFormatter?
            public var formatterSuffix: String?
            public var formatterSuffixSingular: String?
            public let locale: String
            public let name: String

            public init(formatterOverride: GameCenterLeaderboardFormatter? = nil,
                        formatterSuffix: String? = nil,
                        formatterSuffixSingular: String? = nil,
                        locale: String,
                        name: String)
            {
                self.formatterOverride = formatterOverride
                self.formatterSuffix = formatterSuffix
                self.formatterSuffixSingular = formatterSuffixSingular
                self.locale = locale
                self.name = name
            }
        }

        public struct Relationships {
            public let gameCenterLeaderboard: GameCenterLeaderboard

            public init(gameCenterLeaderboard: GameCenterLeaderboard) {
                self.gameCenterLeaderboard = gameCenterLeaderboard
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
        }
    }
}
