import Bagbutik_Core
import Foundation

/**
 # GameCenterAchievementCreateRequest
 A request body you use to create a Game Center achievement.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/gamecenterachievementcreaterequest>
 */
public struct GameCenterAchievementCreateRequest: RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    public struct Data {
        public var type: String { "gameCenterAchievements" }
        public let attributes: Attributes
        public var relationships: Relationships?

        public init(attributes: Attributes,
                    relationships: Relationships? = nil)
        {
            self.attributes = attributes
            self.relationships = relationships
        }

        public struct Attributes {
            public let points: Int
            public let referenceName: String
            public let repeatable: Bool
            public let showBeforeEarned: Bool
            public let vendorIdentifier: String

            public init(points: Int,
                        referenceName: String,
                        repeatable: Bool,
                        showBeforeEarned: Bool,
                        vendorIdentifier: String)
            {
                self.points = points
                self.referenceName = referenceName
                self.repeatable = repeatable
                self.showBeforeEarned = showBeforeEarned
                self.vendorIdentifier = vendorIdentifier
            }
        }

        public struct Relationships {
            public var gameCenterDetail: GameCenterDetail?
            public var gameCenterGroup: GameCenterGroup?

            public init(gameCenterDetail: GameCenterDetail? = nil,
                        gameCenterGroup: GameCenterGroup? = nil)
            {
                self.gameCenterDetail = gameCenterDetail
                self.gameCenterGroup = gameCenterGroup
            }

            public struct GameCenterDetail {
                @NullCodable public var data: Data?

                public init(data: Data? = nil) {
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

            public struct GameCenterGroup {
                @NullCodable public var data: Data?

                public init(data: Data? = nil) {
                    self.data = data
                }

                public struct Data: Identifiable {
                    public let id: String
                    public var type: String { "gameCenterGroups" }

                    public init(id: String) {
                        self.id = id
                    }
                }
            }
        }
    }
}
