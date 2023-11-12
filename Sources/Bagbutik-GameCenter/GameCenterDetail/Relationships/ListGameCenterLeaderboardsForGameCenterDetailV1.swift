import Bagbutik_Core
import Bagbutik_Models

public extension Request {
    /**
     # Read leaderboard information
     Get all leaderboards and related information for a Game Center detail.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/read_leaderboard_information>

     - Parameter id: The id of the requested resource
     - Parameter fields: Fields to return for included related types
     - Parameter filters: Attributes, relationships, and IDs by which to filter
     - Parameter includes: Relationship data to include in the response
     - Parameter limits: Number of resources to return
     - Returns: A ``Request`` to send to an instance of ``BagbutikService``
     */
    static func listGameCenterLeaderboardsForGameCenterDetailV1(id: String,
                                                                fields: [ListGameCenterLeaderboardsForGameCenterDetailV1.Field]? = nil,
                                                                filters: [ListGameCenterLeaderboardsForGameCenterDetailV1.Filter]? = nil,
                                                                includes: [ListGameCenterLeaderboardsForGameCenterDetailV1.Include]? = nil,
                                                                limits: [ListGameCenterLeaderboardsForGameCenterDetailV1.Limit]? = nil) -> Request<GameCenterLeaderboardsResponse, ErrorResponse>
    {
        .init(path: "/v1/gameCenterDetails/\(id)/gameCenterLeaderboards", method: .get, parameters: .init(fields: fields,
                                                                                                          filters: filters,
                                                                                                          includes: includes,
                                                                                                          limits: limits))
    }
}

public enum ListGameCenterLeaderboardsForGameCenterDetailV1 {
    /**
     Fields to return for included related types.
     */
    public enum Field: FieldParameter {
        /// The fields to include for returned resources of type gameCenterDetails
        case gameCenterDetails([GameCenterDetails])
        /// The fields to include for returned resources of type gameCenterGroups
        case gameCenterGroups([GameCenterGroups])
        /// The fields to include for returned resources of type gameCenterLeaderboardLocalizations
        case gameCenterLeaderboardLocalizations([GameCenterLeaderboardLocalizations])
        /// The fields to include for returned resources of type gameCenterLeaderboardReleases
        case gameCenterLeaderboardReleases([GameCenterLeaderboardReleases])
        /// The fields to include for returned resources of type gameCenterLeaderboardSets
        case gameCenterLeaderboardSets([GameCenterLeaderboardSets])
        /// The fields to include for returned resources of type gameCenterLeaderboards
        case gameCenterLeaderboards([GameCenterLeaderboards])

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

        public enum GameCenterLeaderboardLocalizations: String, ParameterValue, CodableEnum, CaseIterable {
            case formatterOverride
            case formatterSuffix
            case formatterSuffixSingular
            case gameCenterLeaderboard
            case gameCenterLeaderboardImage
            case locale
            case name

            var allCases: [Self] {
                [
                    .formatterOverride,
                    .formatterSuffix,
                    .formatterSuffixSingular,
                    .gameCenterLeaderboard,
                    .gameCenterLeaderboardImage,
                    .locale,
                    .name,
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
     Attributes, relationships, and IDs by which to filter.
     */
    public enum Filter: FilterParameter {
        /// Filter by attribute 'archived'
        case archived([String])
        /// Filter by id(s)
        case id([String])
        /// Filter by attribute 'referenceName'
        case referenceName([String])
    }

    /**
     Relationship data to include in the response.
     */
    public enum Include: String, IncludeParameter, CaseIterable {
        case gameCenterDetail
        case gameCenterGroup
        case gameCenterLeaderboardSets
        case groupLeaderboard
        case localizations
        case releases
    }

    /**
     Number of included related resources to return.
     */
    public enum Limit: LimitParameter {
        /// Maximum number of related gameCenterLeaderboardSets returned (when they are included) - maximum 50
        case gameCenterLeaderboardSets(Int)
        /// Maximum resources per page - maximum 200
        case limit(Int)
        /// Maximum number of related localizations returned (when they are included) - maximum 50
        case localizations(Int)
        /// Maximum number of related releases returned (when they are included) - maximum 50
        case releases(Int)
    }
}
