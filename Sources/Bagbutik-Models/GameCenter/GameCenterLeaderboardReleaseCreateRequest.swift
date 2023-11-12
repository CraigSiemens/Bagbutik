import Bagbutik_Core
import Foundation

/**
 # GameCenterLeaderboardReleaseCreateRequest
 The request body you use to create a leaderboard release.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/gamecenterleaderboardreleasecreaterequest>
 */
public struct GameCenterLeaderboardReleaseCreateRequest: RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    public struct Data {
        public var type: String { "gameCenterLeaderboardReleases" }
        public let relationships: Relationships

        public init(relationships: Relationships) {
            self.relationships = relationships
        }

        public struct Relationships {
            public let gameCenterDetail: GameCenterDetail
            public let gameCenterLeaderboard: GameCenterLeaderboard

            public init(gameCenterDetail: GameCenterDetail,
                        gameCenterLeaderboard: GameCenterLeaderboard)
            {
                self.gameCenterDetail = gameCenterDetail
                self.gameCenterLeaderboard = gameCenterLeaderboard
            }

            public struct GameCenterDetail {
                public let data: Data

                public init(data: Data) {
                    self.data = data
                }

                public struct Data: Identifiable {
                    public let id: String
                    public var type: String { "gameCenterDetails" }

                    public init(id: String) {
                        self.id = id
                    }
                }
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
