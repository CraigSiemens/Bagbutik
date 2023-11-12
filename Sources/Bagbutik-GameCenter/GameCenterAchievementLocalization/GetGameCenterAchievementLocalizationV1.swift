import Bagbutik_Core
import Bagbutik_Models

public extension Request {
    /**
     # Read achievement localization information
     Read localized information for a specific locale for a specific achievement.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/read_achievement_localization_information>

     - Parameter id: The id of the requested resource
     - Parameter fields: Fields to return for included related types
     - Parameter includes: Relationship data to include in the response
     - Returns: A ``Request`` to send to an instance of ``BagbutikService``
     */
    static func getGameCenterAchievementLocalizationV1(id: String,
                                                       fields: [GetGameCenterAchievementLocalizationV1.Field]? = nil,
                                                       includes: [GetGameCenterAchievementLocalizationV1.Include]? = nil) -> Request<GameCenterAchievementLocalizationResponse, ErrorResponse>
    {
        .init(path: "/v1/gameCenterAchievementLocalizations/\(id)", method: .get, parameters: .init(fields: fields,
                                                                                                    includes: includes))
    }
}

public enum GetGameCenterAchievementLocalizationV1 {
    /**
     Fields to return for included related types.
     */
    public enum Field: FieldParameter {
        /// The fields to include for returned resources of type gameCenterAchievementImages
        case gameCenterAchievementImages([GameCenterAchievementImages])
        /// The fields to include for returned resources of type gameCenterAchievementLocalizations
        case gameCenterAchievementLocalizations([GameCenterAchievementLocalizations])
        /// The fields to include for returned resources of type gameCenterAchievements
        case gameCenterAchievements([GameCenterAchievements])

        public enum GameCenterAchievementImages: String, ParameterValue, CodableEnum, CaseIterable {
            case assetDeliveryState
            case fileName
            case fileSize
            case gameCenterAchievementLocalization
            case imageAsset
            case uploadOperations
            case uploaded

            var allCases: [Self] {
                [
                    .assetDeliveryState,
                    .fileName,
                    .fileSize,
                    .gameCenterAchievementLocalization,
                    .imageAsset,
                    .uploadOperations,
                    .uploaded,
                ]
            }
        }

        public enum GameCenterAchievementLocalizations: String, ParameterValue, CodableEnum, CaseIterable {
            case afterEarnedDescription
            case beforeEarnedDescription
            case gameCenterAchievement
            case gameCenterAchievementImage
            case locale
            case name

            var allCases: [Self] {
                [
                    .afterEarnedDescription,
                    .beforeEarnedDescription,
                    .gameCenterAchievement,
                    .gameCenterAchievementImage,
                    .locale,
                    .name,
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
    }

    /**
     Relationship data to include in the response.
     */
    public enum Include: String, IncludeParameter, CaseIterable {
        case gameCenterAchievement
        case gameCenterAchievementImage
    }
}
