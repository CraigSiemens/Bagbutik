import Bagbutik_Core
import Bagbutik_Models

public extension Request {
    /**
     # Get the Default App Clip Experience for an App Store Version
     Get the default App Clip experience for an App Store version of your app.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/get_the_default_app_clip_experience_for_an_app_store_version>

     - Parameter id: The id of the requested resource
     - Parameter fields: Fields to return for included related types
     - Parameter includes: Relationship data to include in the response
     - Parameter limit: Maximum number of related appClipDefaultExperienceLocalizations returned (when they are included) - maximum 50
     - Returns: A ``Request`` to send to an instance of ``BagbutikService``
     */
    static func getAppClipDefaultExperienceForAppStoreVersionV1(id: String,
                                                                fields: [GetAppClipDefaultExperienceForAppStoreVersionV1.Field]? = nil,
                                                                includes: [GetAppClipDefaultExperienceForAppStoreVersionV1.Include]? = nil,
                                                                limit: Int? = nil) -> Request<AppClipDefaultExperienceResponse, ErrorResponse>
    {
        .init(path: "/v1/appStoreVersions/\(id)/appClipDefaultExperience", method: .get, parameters: .init(fields: fields,
                                                                                                           includes: includes,
                                                                                                           limit: limit))
    }
}

public enum GetAppClipDefaultExperienceForAppStoreVersionV1 {
    /**
     Fields to return for included related types.
     */
    public enum Field: FieldParameter {
        /// The fields to include for returned resources of type appClipAppStoreReviewDetails
        case appClipAppStoreReviewDetails([AppClipAppStoreReviewDetails])
        /// The fields to include for returned resources of type appClipDefaultExperienceLocalizations
        case appClipDefaultExperienceLocalizations([AppClipDefaultExperienceLocalizations])
        /// The fields to include for returned resources of type appClipDefaultExperiences
        case appClipDefaultExperiences([AppClipDefaultExperiences])
        /// The fields to include for returned resources of type appClips
        case appClips([AppClips])
        /// The fields to include for returned resources of type appStoreVersions
        case appStoreVersions([AppStoreVersions])

        public enum AppClipAppStoreReviewDetails: String, ParameterValue, CodableEnum, CaseIterable {
            case appClipDefaultExperience
            case invocationUrls

            var allCases: [Self] {
                [
                    .appClipDefaultExperience,
                    .invocationUrls,
                ]
            }
        }

        public enum AppClipDefaultExperienceLocalizations: String, ParameterValue, CodableEnum, CaseIterable {
            case appClipDefaultExperience
            case appClipHeaderImage
            case locale
            case subtitle

            var allCases: [Self] {
                [
                    .appClipDefaultExperience,
                    .appClipHeaderImage,
                    .locale,
                    .subtitle,
                ]
            }
        }

        public enum AppClipDefaultExperiences: String, ParameterValue, CodableEnum, CaseIterable {
            case action
            case appClip
            case appClipAppStoreReviewDetail
            case appClipDefaultExperienceLocalizations
            case appClipDefaultExperienceTemplate
            case releaseWithAppStoreVersion

            var allCases: [Self] {
                [
                    .action,
                    .appClip,
                    .appClipAppStoreReviewDetail,
                    .appClipDefaultExperienceLocalizations,
                    .appClipDefaultExperienceTemplate,
                    .releaseWithAppStoreVersion,
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

        public enum AppStoreVersions: String, ParameterValue, CodableEnum, CaseIterable {
            case ageRatingDeclaration
            case app
            case appClipDefaultExperience
            case appStoreReviewDetail
            case appStoreState
            case appStoreVersionExperiments
            case appStoreVersionExperimentsV2
            case appStoreVersionLocalizations
            case appStoreVersionPhasedRelease
            case appStoreVersionSubmission
            case build
            case copyright
            case createdDate
            case customerReviews
            case downloadable
            case earliestReleaseDate
            case platform
            case releaseType
            case routingAppCoverage
            case versionString

            var allCases: [Self] {
                [
                    .ageRatingDeclaration,
                    .app,
                    .appClipDefaultExperience,
                    .appStoreReviewDetail,
                    .appStoreState,
                    .appStoreVersionExperiments,
                    .appStoreVersionExperimentsV2,
                    .appStoreVersionLocalizations,
                    .appStoreVersionPhasedRelease,
                    .appStoreVersionSubmission,
                    .build,
                    .copyright,
                    .createdDate,
                    .customerReviews,
                    .downloadable,
                    .earliestReleaseDate,
                    .platform,
                    .releaseType,
                    .routingAppCoverage,
                    .versionString,
                ]
            }
        }
    }

    /**
     Relationship data to include in the response.
     */
    public enum Include: String, IncludeParameter, CaseIterable {
        case appClip
        case appClipAppStoreReviewDetail
        case appClipDefaultExperienceLocalizations
        case releaseWithAppStoreVersion
    }
}
