import Bagbutik_Core
import Foundation

/**
 # GameCenterLeaderboardSetImageCreateRequest
 The request body you use to create a leaderboard set image.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/gamecenterleaderboardsetimagecreaterequest>
 */
public struct GameCenterLeaderboardSetImageCreateRequest: RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    public struct Data {
        public var type: String { "gameCenterLeaderboardSetImages" }
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
            public let gameCenterLeaderboardSetLocalization: GameCenterLeaderboardSetLocalization

            public init(gameCenterLeaderboardSetLocalization: GameCenterLeaderboardSetLocalization) {
                self.gameCenterLeaderboardSetLocalization = gameCenterLeaderboardSetLocalization
            }

            public struct GameCenterLeaderboardSetLocalization {
                public let data: Data

                public init(data: Data) {
                    self.data = data
                }

                public struct Data: Identifiable {
                    public let id: String
                    public var type: String { "gameCenterLeaderboardSetLocalizations" }

                    public init(id: String) {
                        self.id = id
                    }
                }
            }
        }
    }
}
