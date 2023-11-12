import Bagbutik_Core
import Bagbutik_Models

public extension Request {
    /**
     # List All Advanced App Clip Experiences for an App Clip
     Get all advanced App Clip experiences for an App Clip.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/list_all_advanced_app_clip_experiences_for_an_app_clip>

     - Parameter id: The id of the requested resource
     - Parameter fields: Fields to return for included related types
     - Parameter filters: Attributes, relationships, and IDs by which to filter
     - Parameter includes: Relationship data to include in the response
     - Parameter limits: Number of resources to return
     - Returns: A ``Request`` to send to an instance of ``BagbutikService``
     */
    static func listAppClipAdvancedExperiencesForAppClipV1(id: String,
                                                           fields: [ListAppClipAdvancedExperiencesForAppClipV1.Field]? = nil,
                                                           filters: [ListAppClipAdvancedExperiencesForAppClipV1.Filter]? = nil,
                                                           includes: [ListAppClipAdvancedExperiencesForAppClipV1.Include]? = nil,
                                                           limits: [ListAppClipAdvancedExperiencesForAppClipV1.Limit]? = nil) -> Request<AppClipAdvancedExperiencesResponse, ErrorResponse>
    {
        .init(path: "/v1/appClips/\(id)/appClipAdvancedExperiences", method: .get, parameters: .init(fields: fields,
                                                                                                     filters: filters,
                                                                                                     includes: includes,
                                                                                                     limits: limits))
    }
}

public enum ListAppClipAdvancedExperiencesForAppClipV1 {
    /**
     Fields to return for included related types.
     */
    public enum Field: FieldParameter {
        /// The fields to include for returned resources of type appClipAdvancedExperienceImages
        case appClipAdvancedExperienceImages([AppClipAdvancedExperienceImages])
        /// The fields to include for returned resources of type appClipAdvancedExperienceLocalizations
        case appClipAdvancedExperienceLocalizations([AppClipAdvancedExperienceLocalizations])
        /// The fields to include for returned resources of type appClipAdvancedExperiences
        case appClipAdvancedExperiences([AppClipAdvancedExperiences])
        /// The fields to include for returned resources of type appClips
        case appClips([AppClips])

        public enum AppClipAdvancedExperienceImages: String, ParameterValue, CodableEnum, CaseIterable {
            case assetDeliveryState
            case fileName
            case fileSize
            case imageAsset
            case sourceFileChecksum
            case uploadOperations
            case uploaded

            var allCases: [Self] {
                [
                    .assetDeliveryState,
                    .fileName,
                    .fileSize,
                    .imageAsset,
                    .sourceFileChecksum,
                    .uploadOperations,
                    .uploaded,
                ]
            }
        }

        public enum AppClipAdvancedExperienceLocalizations: String, ParameterValue, CodableEnum, CaseIterable {
            case language
            case subtitle
            case title

            var allCases: [Self] {
                [
                    .language,
                    .subtitle,
                    .title,
                ]
            }
        }

        public enum AppClipAdvancedExperiences: String, ParameterValue, CodableEnum, CaseIterable {
            case action
            case appClip
            case businessCategory
            case defaultLanguage
            case headerImage
            case isPoweredBy
            case link
            case localizations
            case place
            case placeStatus
            case removed
            case status
            case version

            var allCases: [Self] {
                [
                    .action,
                    .appClip,
                    .businessCategory,
                    .defaultLanguage,
                    .headerImage,
                    .isPoweredBy,
                    .link,
                    .localizations,
                    .place,
                    .placeStatus,
                    .removed,
                    .status,
                    .version,
                ]
            }
        }

        public enum AppClips: String, ParameterValue, CodableEnum, CaseIterable {
            case app
            case appClipAdvancedExperiences
            case appClipDefaultExperiences
            case bundleId

            var allCases: [Self] {
                [
                    .app,
                    .appClipAdvancedExperiences,
                    .appClipDefaultExperiences,
                    .bundleId,
                ]
            }
        }
    }

    /**
     Attributes, relationships, and IDs by which to filter.
     */
    public enum Filter: FilterParameter {
        /// Filter by attribute 'action'
        case action([AppClipAction])
        /// Filter by attribute 'placeStatus'
        case placeStatus([PlaceStatus])
        /// Filter by attribute 'status'
        case status([Status])

        public enum PlaceStatus: String, ParameterValue, CodableEnum, CaseIterable {
            case pending = "PENDING"
            case matched = "MATCHED"
            case noMatch = "NO_MATCH"

            var allCases: [Self] {
                [
                    .pending,
                    .matched,
                    .noMatch,
                ]
            }
        }

        public enum Status: String, ParameterValue, CodableEnum, CaseIterable {
            case received = "RECEIVED"
            case deactivated = "DEACTIVATED"
            case appTransferInProgress = "APP_TRANSFER_IN_PROGRESS"

            var allCases: [Self] {
                [
                    .received,
                    .deactivated,
                    .appTransferInProgress,
                ]
            }
        }
    }

    /**
     Relationship data to include in the response.
     */
    public enum Include: String, IncludeParameter, CaseIterable {
        case appClip
        case headerImage
        case localizations
    }

    /**
     Number of included related resources to return.
     */
    public enum Limit: LimitParameter {
        /// Maximum resources per page - maximum 200
        case limit(Int)
        /// Maximum number of related localizations returned (when they are included) - maximum 50
        case localizations(Int)
    }
}
