import Bagbutik_Core
import Foundation

/**
 # GameCenterLeaderboardImageCreateRequest
 The request body you use to create a leaderboard image.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/gamecenterleaderboardimagecreaterequest>
 */
public struct GameCenterLeaderboardImageCreateRequest: RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    public struct Data {
        public var type: String { "gameCenterLeaderboardImages" }
        public let attributes: Attributes
        public let relationships: Relationships

        public init(attributes: Attributes,
                    relationships: Relationships)
        {
            self.attributes = attributes
            self.relationships = relationships
        }

        public struct Attributes {
            public let fileName: String
            public let fileSize: Int

            public init(fileName: String,
                        fileSize: Int)
            {
                self.fileName = fileName
                self.fileSize = fileSize
            }
        }

        public struct Relationships {
            public let gameCenterLeaderboardLocalization: GameCenterLeaderboardLocalization

            public init(gameCenterLeaderboardLocalization: GameCenterLeaderboardLocalization) {
                self.gameCenterLeaderboardLocalization = gameCenterLeaderboardLocalization
            }

            public struct GameCenterLeaderboardLocalization {
                public let data: Data

                public init(data: Data) {
                    self.data = data
                }

                public struct Data: Identifiable {
                    public let id: String
                    public var type: String { "gameCenterLeaderboardLocalizations" }

                    public init(id: String) {
                        self.id = id
                    }
                }
            }
        }
    }
}
