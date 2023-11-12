import Bagbutik_Core
import Foundation

/**
 # GameCenterLeaderboardSetReleaseCreateRequest
 The request body you use to create a leaderboard set release.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/gamecenterleaderboardsetreleasecreaterequest>
 */
public struct GameCenterLeaderboardSetReleaseCreateRequest: RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    public struct Data {
        public var type: String { "gameCenterLeaderboardSetReleases" }
        public let relationships: Relationships

        public init(relationships: Relationships) {
            self.relationships = relationships
        }

        public struct Relationships {
            public let gameCenterDetail: GameCenterDetail
            public let gameCenterLeaderboardSet: GameCenterLeaderboardSet

            public init(gameCenterDetail: GameCenterDetail,
                        gameCenterLeaderboardSet: GameCenterLeaderboardSet)
            {
                self.gameCenterDetail = gameCenterDetail
                self.gameCenterLeaderboardSet = gameCenterLeaderboardSet
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
