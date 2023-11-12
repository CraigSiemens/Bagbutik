import Bagbutik_Core
import Foundation

/**
 # GameCenterLeaderboard
 The data structure that represent a leaderboard resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/gamecenterleaderboard>
 */
public struct GameCenterLeaderboard: Identifiable {
    public let id: String
    public var links: ResourceLinks?
    public var type: String { "gameCenterLeaderboards" }
    public var attributes: Attributes?
    public var relationships: Relationships?

    public init(id: String,
                links: ResourceLinks? = nil,
                attributes: Attributes? = nil,
                relationships: Relationships? = nil)
    {
        self.id = id
        self.links = links
        self.attributes = attributes
        self.relationships = relationships
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
        public var scoreSortType: ScoreSortType?
        public var submissionType: SubmissionType?
        public var vendorIdentifier: String?

        public init(archived: Bool? = nil,
                    defaultFormatter: GameCenterLeaderboardFormatter? = nil,
                    recurrenceDuration: String? = nil,
                    recurrenceRule: String? = nil,
                    recurrenceStartDate: Date? = nil,
                    referenceName: String? = nil,
                    scoreRangeEnd: String? = nil,
                    scoreRangeStart: String? = nil,
                    scoreSortType: ScoreSortType? = nil,
                    submissionType: SubmissionType? = nil,
                    vendorIdentifier: String? = nil)
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
            self.vendorIdentifier = vendorIdentifier
        }

        public enum ScoreSortType: String {
            case asc = "ASC"
            case desc = "DESC"
        }

        public enum SubmissionType: String {
            case bestScore = "BEST_SCORE"
            case mostRecentScore = "MOST_RECENT_SCORE"
        }
    }

    public struct Relationships {
        public var gameCenterDetail: GameCenterDetail?
        public var gameCenterGroup: GameCenterGroup?
        public var gameCenterLeaderboardSets: GameCenterLeaderboardSets?
        public var groupLeaderboard: GroupLeaderboard?
        public var localizations: Localizations?
        public var releases: Releases?

        public init(gameCenterDetail: GameCenterDetail? = nil,
                    gameCenterGroup: GameCenterGroup? = nil,
                    gameCenterLeaderboardSets: GameCenterLeaderboardSets? = nil,
                    groupLeaderboard: GroupLeaderboard? = nil,
                    localizations: Localizations? = nil,
                    releases: Releases? = nil)
        {
            self.gameCenterDetail = gameCenterDetail
            self.gameCenterGroup = gameCenterGroup
            self.gameCenterLeaderboardSets = gameCenterLeaderboardSets
            self.groupLeaderboard = groupLeaderboard
            self.localizations = localizations
            self.releases = releases
        }

        public struct GameCenterDetail {
            @NullCodable public var data: Data?
            public var links: Links?

            public init(data: Data? = nil,
                        links: Links? = nil)
            {
                self.data = data
                self.links = links
            }

            public struct Data: Identifiable {
                public let id: String
                public var type: String { "gameCenterDetails" }

                public init(id: String) {
                    self.id = id
                }
            }

            public struct Links {
                public var related: String?
                public var itself: String?

                public init(related: String? = nil,
                            self itself: String? = nil)
                {
                    self.related = related
                    self.itself = itself
                }
            }
        }

        public struct GameCenterGroup {
            @NullCodable public var data: Data?
            public var links: Links?

            public init(data: Data? = nil,
                        links: Links? = nil)
            {
                self.data = data
                self.links = links
            }

            public struct Data: Identifiable {
                public let id: String
                public var type: String { "gameCenterGroups" }

                public init(id: String) {
                    self.id = id
                }
            }

            public struct Links {
                public var related: String?
                public var itself: String?

                public init(related: String? = nil,
                            self itself: String? = nil)
                {
                    self.related = related
                    self.itself = itself
                }
            }
        }

        public struct GameCenterLeaderboardSets {
            @NullCodable public var data: [Data]?
            public var links: Links?
            public var meta: PagingInformation?

            public init(data: [Data]? = nil,
                        links: Links? = nil,
                        meta: PagingInformation? = nil)
            {
                self.data = data
                self.links = links
                self.meta = meta
            }

            public struct Data: Identifiable {
                public let id: String
                public var type: String { "gameCenterLeaderboardSets" }

                public init(id: String) {
                    self.id = id
                }
            }

            public struct Links {
                public var related: String?
                public var itself: String?

                public init(related: String? = nil,
                            self itself: String? = nil)
                {
                    self.related = related
                    self.itself = itself
                }
            }
        }

        public struct GroupLeaderboard {
            @NullCodable public var data: Data?
            public var links: Links?

            public init(data: Data? = nil,
                        links: Links? = nil)
            {
                self.data = data
                self.links = links
            }

            public struct Data: Identifiable {
                public let id: String
                public var type: String { "gameCenterLeaderboards" }

                public init(id: String) {
                    self.id = id
                }
            }

            public struct Links {
                public var related: String?
                public var itself: String?

                public init(related: String? = nil,
                            self itself: String? = nil)
                {
                    self.related = related
                    self.itself = itself
                }
            }
        }

        public struct Localizations {
            @NullCodable public var data: [Data]?
            public var links: Links?
            public var meta: PagingInformation?

            public init(data: [Data]? = nil,
                        links: Links? = nil,
                        meta: PagingInformation? = nil)
            {
                self.data = data
                self.links = links
                self.meta = meta
            }

            public struct Data: Identifiable {
                public let id: String
                public var type: String { "gameCenterLeaderboardLocalizations" }

                public init(id: String) {
                    self.id = id
                }
            }

            public struct Links {
                public var related: String?
                public var itself: String?

                public init(related: String? = nil,
                            self itself: String? = nil)
                {
                    self.related = related
                    self.itself = itself
                }
            }
        }

        public struct Releases {
            @NullCodable public var data: [Data]?
            public var links: Links?
            public var meta: PagingInformation?

            public init(data: [Data]? = nil,
                        links: Links? = nil,
                        meta: PagingInformation? = nil)
            {
                self.data = data
                self.links = links
                self.meta = meta
            }

            public struct Data: Identifiable {
                public let id: String
                public var type: String { "gameCenterLeaderboardReleases" }

                public init(id: String) {
                    self.id = id
                }
            }

            public struct Links {
                public var related: String?
                public var itself: String?

                public init(related: String? = nil,
                            self itself: String? = nil)
                {
                    self.related = related
                    self.itself = itself
                }
            }
        }
    }
}
