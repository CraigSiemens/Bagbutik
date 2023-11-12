import Bagbutik_Core
import Foundation

/**
 # GameCenterLeaderboardSetCreateRequest
 The request body you use to create a leaderboard set.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/gamecenterleaderboardsetcreaterequest>
 */
public struct GameCenterLeaderboardSetCreateRequest: RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    public struct Data {
        public var type: String { "gameCenterLeaderboardSets" }
        public let attributes: Attributes
        public var relationships: Relationships?

        public init(attributes: Attributes,
                    relationships: Relationships? = nil)
        {
            self.attributes = attributes
            self.relationships = relationships
        }

        public struct Attributes {
            public let referenceName: String
            public let vendorIdentifier: String

            public init(referenceName: String,
                        vendorIdentifier: String)
            {
                self.referenceName = referenceName
                self.vendorIdentifier = vendorIdentifier
            }
        }

        public struct Relationships {
            public var gameCenterDetail: GameCenterDetail?
            public var gameCenterGroup: GameCenterGroup?
            public var gameCenterLeaderboards: GameCenterLeaderboards?

            public init(gameCenterDetail: GameCenterDetail? = nil,
                        gameCenterGroup: GameCenterGroup? = nil,
                        gameCenterLeaderboards: GameCenterLeaderboards? = nil)
            {
                self.gameCenterDetail = gameCenterDetail
                self.gameCenterGroup = gameCenterGroup
                self.gameCenterLeaderboards = gameCenterLeaderboards
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

            public struct GameCenterLeaderboards {
                @NullCodable public var data: [Data]?

                public init(data: [Data]? = nil) {
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
