import Bagbutik_Core
import Foundation

/**
 # GameCenterDetailUpdateRequest
 The request body you use to update a Game Center detail.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/gamecenterdetailupdaterequest>
 */
public struct GameCenterDetailUpdateRequest: RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    public struct Data: Identifiable {
        public let id: String
        public var type: String { "gameCenterDetails" }
        public var attributes: Attributes?
        public var relationships: Relationships?

        public init(id: String,
                    attributes: Attributes? = nil,
                    relationships: Relationships? = nil)
        {
            self.id = id
            self.attributes = attributes
            self.relationships = relationships
        }

        public struct Attributes {
            public var challengeEnabled: Bool?

            public init(challengeEnabled: Bool? = nil) {
                self.challengeEnabled = challengeEnabled
            }
        }

        public struct Relationships {
            public var defaultGroupLeaderboard: DefaultGroupLeaderboard?
            public var defaultLeaderboard: DefaultLeaderboard?
            public var gameCenterGroup: GameCenterGroup?

            public init(defaultGroupLeaderboard: DefaultGroupLeaderboard? = nil,
                        defaultLeaderboard: DefaultLeaderboard? = nil,
                        gameCenterGroup: GameCenterGroup? = nil)
            {
                self.defaultGroupLeaderboard = defaultGroupLeaderboard
                self.defaultLeaderboard = defaultLeaderboard
                self.gameCenterGroup = gameCenterGroup
            }

            public struct DefaultGroupLeaderboard {
                @NullCodable public var data: Data?

                public init(data: Data? = nil) {
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

            public struct DefaultLeaderboard {
                @NullCodable public var data: Data?

                public init(data: Data? = nil) {
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
