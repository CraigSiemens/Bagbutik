import Bagbutik_Core
import Bagbutik_Models

public extension Request {
    /**
     # Read release information for an achievement
     Read the state of an achievement release and related information.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/read_release_information_for_an_achievement>

     - Parameter id: The id of the requested resource
     - Parameter fields: Fields to return for included related types
     - Parameter filters: Attributes, relationships, and IDs by which to filter
     - Parameter includes: Relationship data to include in the response
     - Parameter limit: Maximum resources per page - maximum 200
     - Returns: A ``Request`` to send to an instance of ``BagbutikService``
     */
    static func listReleasesForGameCenterAchievementV1(id: String,
                                                       fields: [ListReleasesForGameCenterAchievementV1.Field]? = nil,
                                                       filters: [ListReleasesForGameCenterAchievementV1.Filter]? = nil,
                                                       includes: [ListReleasesForGameCenterAchievementV1.Include]? = nil,
                                                       limit: Int? = nil) -> Request<GameCenterAchievementReleasesResponse, ErrorResponse>
    {
        .init(path: "/v1/gameCenterAchievements/\(id)/releases", method: .get, parameters: .init(fields: fields,
                                                                                                 filters: filters,
                                                                                                 includes: includes,
                                                                                                 limit: limit))
    }
}

public enum ListReleasesForGameCenterAchievementV1 {
    /**
     Fields to return for included related types.
     */
    public enum Field: FieldParameter {
        /// The fields to include for returned resources of type gameCenterAchievementReleases
        case gameCenterAchievementReleases([GameCenterAchievementReleases])
        /// The fields to include for returned resources of type gameCenterAchievements
        case gameCenterAchievements([GameCenterAchievements])
        /// The fields to include for returned resources of type gameCenterDetails
        case gameCenterDetails([GameCenterDetails])

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
    }

    /**
     Attributes, relationships, and IDs by which to filter.
     */
    public enum Filter: FilterParameter {
        /// Filter by id(s) of related 'gameCenterDetail'
        case gameCenterDetail([String])
        /// Filter by attribute 'live'
        case live([String])
    }

    /**
     Relationship data to include in the response.
     */
    public enum Include: String, IncludeParameter, CaseIterable {
        case gameCenterAchievement
        case gameCenterDetail
    }
}
