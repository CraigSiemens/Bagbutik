import Bagbutik_Core
import Foundation

/**
 # GameCenterLeaderboardUpdateRequest
 The request body you use to update a leaderboard.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/gamecenterleaderboardupdaterequest>
 */
public struct GameCenterLeaderboardUpdateRequest: RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    public struct Data: Identifiable {
        public let id: String
        public var type: String { "gameCenterLeaderboards" }
        public var attributes: Attributes?

        public init(id: String,
                    attributes: Attributes? = nil)
        {
            self.id = id
            self.attributes = attributes
        }

        public struct Attributes {
            public var archived: Bool?
            public var defaultFormatter: GameCenterLeaderboardFormatter?
            public var recurrenceDuration: String?
            public var recurrenceRule: String?
            public var recurrenceStartDate: Date?
            public var referenceName: String?
            public var scoreRangeEnd: String?
            public var scoreRangeStart: String?
            public var scoreSortType: GameCenterLeaderboard.Attributes.ScoreSortType?
            public var submissionType: GameCenterLeaderboard.Attributes.SubmissionType?

            public init(archived: Bool? = nil,
                        defaultFormatter: GameCenterLeaderboardFormatter? = nil,
                        recurrenceDuration: String? = nil,
                        recurrenceRule: String? = nil,
                        recurrenceStartDate: Date? = nil,
                        referenceName: String? = nil,
                        scoreRangeEnd: String? = nil,
                        scoreRangeStart: String? = nil,
                        scoreSortType: GameCenterLeaderboard.Attributes.ScoreSortType? = nil,
                        submissionType: GameCenterLeaderboard.Attributes.SubmissionType? = nil)
            {
                self.archived = archived
                self.defaultFormatter = defaultFormatter
                self.recurrenceDuration = recurrenceDuration
                self.recurrenceRule = recurrenceRule
                self.recurrenceStartDate = recurrenceStartDate
                self.referenceName = referenceName
                self.scoreRangeEnd = scoreRangeEnd
                self.scoreRangeStart = scoreRangeStart
                self.scoreSortType = scoreSortType
                self.submissionType = submissionType
            }
        }
    }
}
