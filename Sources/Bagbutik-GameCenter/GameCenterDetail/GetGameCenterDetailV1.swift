import Bagbutik_Core
import Bagbutik_Models

public extension Request {
    /**
     # Read Game Center details
     Read a specific Game Center detail and related information.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/read_game_center_details>

     - Parameter id: The id of the requested resource
     - Parameter fields: Fields to return for included related types
     - Parameter includes: Relationship data to include in the response
     - Parameter limits: Number of resources to return
     - Returns: A ``Request`` to send to an instance of ``BagbutikService``
     */
    static func getGameCenterDetailV1(id: String,
                                      fields: [GetGameCenterDetailV1.Field]? = nil,
                                      includes: [GetGameCenterDetailV1.Include]? = nil,
                                      limits: [GetGameCenterDetailV1.Limit]? = nil) -> Request<GameCenterDetailResponse, ErrorResponse>
    {
        .init(path: "/v1/gameCenterDetails/\(id)", method: .get, parameters: .init(fields: fields,
                                                                                   includes: includes,
                                                                                   limits: limits))
    }
}

public enum GetGameCenterDetailV1 {
    /**
     Fields to return for included related types.
     */
    public enum Field: FieldParameter {
        /// The fields to include for returned resources of type gameCenterAchievementReleases
        case gameCenterAchievementReleases([GameCenterAchievementReleases])
        /// The fields to include for returned resources of type gameCenterAchievements
        case gameCenterAchievements([GameCenterAchievements])
        /// The fields to include for returned resources of type gameCenterAppVersions
        case gameCenterAppVersions([GameCenterAppVersions])
        /// The fields to include for returned resources of type gameCenterDetails
        case gameCenterDetails([GameCenterDetails])
        /// The fields to include for returned resources of type gameCenterGroups
        case gameCenterGroups([GameCenterGroups])
        /// The fields to include for returned resources of type gameCenterLeaderboardReleases
        case gameCenterLeaderboardReleases([GameCenterLeaderboardReleases])
        /// The fields to include for returned resources of type gameCenterLeaderboardSetReleases
        case gameCenterLeaderboardSetReleases([GameCenterLeaderboardSetReleases])
        /// The fields to include for returned resources of type gameCenterLeaderboardSets
        case gameCenterLeaderboardSets([GameCenterLeaderboardSets])
        /// The fields to include for returned resources of type gameCenterLeaderboards
        case gameCenterLeaderboards([GameCenterLeaderboards])

        public enum GameCenterAchievementReleases: String, ParameterValue, CodableEnum, CaseIterable {
            case gameCenterAchievement
            case gameCenterDetail
            case live

            var allCases: [Self] {
                [
                    .gameCenterAchievement,
                    .gameCenterDetail,
                    .live,
                ]
            }
        }

        public enum GameCenterAchievements: String, ParameterValue, CodableEnum, CaseIterable {
            case archived
            case gameCenterDetail
            case gameCenterGroup
            case groupAchievement
            case localizations
            case points
            case referenceName
            case releases
            case repeatable
            case showBeforeEarned
            case vendorIdentifier

            var allCases: [Self] {
                [
                    .archived,
                    .gameCenterDetail,
                    .gameCenterGroup,
                    .groupAchievement,
                    .localizations,
                    .points,
                    .referenceName,
                    .releases,
                    .repeatable,
                    .showBeforeEarned,
                    .vendorIdentifier,
                ]
            }
        }

        public enum GameCenterAppVersions: String, ParameterValue, CodableEnum, CaseIterable {
            case appStoreVersion
            case compatibilityVersions
            case enabled

            var allCases: [Self] {
                [
                    .appStoreVersion,
                    .compatibilityVersions,
                    .enabled,
                ]
            }
        }

        public enum GameCenterDetails: String, ParameterValue, CodableEnum, CaseIterable {
            case achievementReleases
            case app
            case arcadeEnabled
            case challengeEnabled
            case defaultGroupLeaderboard
            case defaultLeaderboard
            case gameCenterAchievements
            case gameCenterAppVersions
            case gameCenterGroup
            case gameCenterLeaderboardSets
            case gameCenterLeaderboards
            case leaderboardReleases
            case leaderboardSetReleases

            var allCases: [Self] {
                [
                    .achievementReleases,
                    .app,
                    .arcadeEnabled,
                    .challengeEnabled,
                    .defaultGroupLeaderboard,
                    .defaultLeaderboard,
                    .gameCenterAchievements,
                    .gameCenterAppVersions,
                    .gameCenterGroup,
                    .gameCenterLeaderboardSets,
                    .gameCenterLeaderboards,
                    .leaderboardReleases,
                    .leaderboardSetReleases,
                ]
            }
        }

        public enum GameCenterGroups: String, ParameterValue, CodableEnum, CaseIterable {
            case gameCenterAchievements
            case gameCenterDetails
            case gameCenterLeaderboardSets
            case gameCenterLeaderboards
            case referenceName

            var allCases: [Self] {
                [
                    .gameCenterAchievements,
                    .gameCenterDetails,
                    .gameCenterLeaderboardSets,
                    .gameCenterLeaderboards,
                    .referenceName,
                ]
            }
        }

        public enum GameCenterLeaderboardReleases: String, ParameterValue, CodableEnum, CaseIterable {
            case gameCenterDetail
            case gameCenterLeaderboard
            case live

            var allCases: [Self] {
                [
                    .gameCenterDetail,
                    .gameCenterLeaderboard,
                    .live,
                ]
            }
        }

        public enum GameCenterLeaderboardSetReleases: String, ParameterValue, CodableEnum, CaseIterable {
            case gameCenterDetail
            case gameCenterLeaderboardSet
            case live

            var allCases: [Self] {
                [
                    .gameCenterDetail,
                    .gameCenterLeaderboardSet,
                    .live,
                ]
            }
        }

        public enum GameCenterLeaderboardSets: String, ParameterValue, CodableEnum, CaseIterable {
            case gameCenterDetail
            case gameCenterGroup
            case gameCenterLeaderboards
            case groupLeaderboardSet
            case localizations
            case referenceName
            case releases
            case vendorIdentifier

            var allCases: [Self] {
                [
                    .gameCenterDetail,
                    .gameCenterGroup,
                    .gameCenterLeaderboards,
                    .groupLeaderboardSet,
                    .localizations,
                    .referenceName,
                    .releases,
                    .vendorIdentifier,
                ]
            }
        }

        public enum GameCenterLeaderboards: String, ParameterValue, CodableEnum, CaseIterable {
            case archived
            case defaultFormatter
            case gameCenterDetail
            case gameCenterGroup
            case gameCenterLeaderboardSets
            case groupLeaderboard
            case localizations
            case recurrenceDuration
            case recurrenceRule
            case recurrenceStartDate
            case referenceName
            case releases
            case scoreRangeEnd
            case scoreRangeStart
            case scoreSortType
            case submissionType
            case vendorIdentifier

            var allCases: [Self] {
                [
                    .archived,
                    .defaultFormatter,
                    .gameCenterDetail,
                    .gameCenterGroup,
                    .gameCenterLeaderboardSets,
                    .groupLeaderboard,
                    .localizations,
                    .recurrenceDuration,
                    .recurrenceRule,
                    .recurrenceStartDate,
                    .referenceName,
                    .releases,
                    .scoreRangeEnd,
                    .scoreRangeStart,
                    .scoreSortType,
                    .submissionType,
                    .vendorIdentifier,
                ]
            }
        }
    }

    /**
     Relationship data to include in the response.
     */
    public enum Include: String, IncludeParameter, CaseIterable {
        case achievementReleases
        case app
        case defaultGroupLeaderboard
        case defaultLeaderboard
        case gameCenterAchievements
        case gameCenterAppVersions
        case gameCenterGroup
        case gameCenterLeaderboardSets
        case gameCenterLeaderboards
        case leaderboardReleases
        case leaderboardSetReleases
    }

    /**
     Number of included related resources to return.
     */
    public enum Limit: LimitParameter {
        /// Maximum number of related achievementReleases returned (when they are included) - maximum 50
        case achievementReleases(Int)
        /// Maximum number of related gameCenterAchievements returned (when they are included) - maximum 50
        case gameCenterAchievements(Int)
        /// Maximum number of related gameCenterAppVersions returned (when they are included) - maximum 50
        case gameCenterAppVersions(Int)
        /// Maximum number of related gameCenterLeaderboardSets returned (when they are included) - maximum 50
        case gameCenterLeaderboardSets(Int)
        /// Maximum number of related gameCenterLeaderboards returned (when they are included) - maximum 50
        case gameCenterLeaderboards(Int)
        /// Maximum number of related leaderboardReleases returned (when they are included) - maximum 50
        case leaderboardReleases(Int)
        /// Maximum number of related leaderboardSetReleases returned (when they are included) - maximum 50
        case leaderboardSetReleases(Int)
    }
}
