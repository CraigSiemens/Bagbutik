import Bagbutik_Core
import Foundation

/**
 # GameCenterLeaderboardCreateRequest
 The request body you use to create a leaderboard.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/gamecenterleaderboardcreaterequest>
 */
public struct GameCenterLeaderboardCreateRequest: RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    public struct Data {
        public var type: String { "gameCenterLeaderboards" }
        public let attributes: Attributes
        public var relationships: Relationships?

        public init(attributes: Attributes,
                    relationships: Relationships? = nil)
        {
            self.attributes = attributes
            self.relationships = relationships
        }

        public struct Attributes {
            public let defaultFormatter: GameCenterLeaderboardFormatter
            public var recurrenceDuration: String?
            public var recurrenceRule: String?
            public var recurrenceStartDate: Date?
            public let referenceName: String
            public var scoreRangeEnd: String?
            public var scoreRangeStart: String?
            public let scoreSortType: GameCenterLeaderboard.Attributes.ScoreSortType
            public let submissionType: GameCenterLeaderboard.Attributes.SubmissionType
            public let vendorIdentifier: String

            public init(defaultFormatter: GameCenterLeaderboardFormatter,
                        recurrenceDuration: String? = nil,
                        recurrenceRule: String? = nil,
                        recurrenceStartDate: Date? = nil,
                        referenceName: String,
                        scoreRangeEnd: String? = nil,
                        scoreRangeStart: String? = nil,
                        scoreSortType: GameCenterLeaderboard.Attributes.ScoreSortType,
                        submissionType: GameCenterLeaderboard.Attributes.SubmissionType,
                        vendorIdentifier: String)
            {
                self.defaultFormatter = defaultFormatter
                self.recurrenceDuration = recurrenceDuration
                self.recurrenceRule = recurrenceRule
                self.recurrenceStartDate = recurrenceStartDate
                self.referenceName = referenceName
                self.scoreRangeEnd = scoreRangeEnd
                self.scoreRangeStart = scoreRangeStart
                self.scoreSortType = scoreSortType
                self.submissionType = submissionType
                self.vendorIdentifier = vendorIdentifier
            }
        }

        public struct Relationships {
            public var gameCenterDetail: GameCenterDetail?
            public var gameCenterGroup: GameCenterGroup?
            public var gameCenterLeaderboardSets: GameCenterLeaderboardSets?

            public init(gameCenterDetail: GameCenterDetail? = nil,
                        gameCenterGroup: GameCenterGroup? = nil,
                        gameCenterLeaderboardSets: GameCenterLeaderboardSets? = nil)
            {
                self.gameCenterDetail = gameCenterDetail
                self.gameCenterGroup = gameCenterGroup
                self.gameCenterLeaderboardSets = gameCenterLeaderboardSets
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

            public struct GameCenterLeaderboardSets {
                @NullCodable public var data: [Data]?

                public init(data: [Data]? = nil) {
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
