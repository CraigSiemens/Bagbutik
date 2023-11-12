import Bagbutik_Core
import Foundation

/**
 # GameCenterAchievementImageCreateRequest
 The request body you use to create an achievement image.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/gamecenterachievementimagecreaterequest>
 */
public struct GameCenterAchievementImageCreateRequest: RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    public struct Data {
        public var type: String { "gameCenterAchievementImages" }
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
            public let gameCenterAchievementLocalization: GameCenterAchievementLocalization

            public init(gameCenterAchievementLocalization: GameCenterAchievementLocalization) {
                self.gameCenterAchievementLocalization = gameCenterAchievementLocalization
            }

            public struct GameCenterAchievementLocalization {
                public let data: Data

                public init(data: Data) {
                    self.data = data
                }

                public struct Data: Identifiable {
                    public let id: String
                    public var type: String { "gameCenterAchievementLocalizations" }

                    public init(id: String) {
                        self.id = id
                    }
                }
            }
        }
    }
}
