import Bagbutik_Core
import Bagbutik_Models

public extension Request {
    /**
     # List All Experiments for an App Store Version v1
     Get a list of all experiments for an App Store version of an app across all platforms.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/get_v1_appstoreversions_id_appstoreversionexperiments>

     - Parameter id: The id of the requested resource
     - Parameter fields: Fields to return for included related types
     - Parameter filters: Attributes, relationships, and IDs by which to filter
     - Parameter includes: Relationship data to include in the response
     - Parameter limits: Number of resources to return
     - Returns: A ``Request`` to send to an instance of ``BagbutikService``
     */
    @available(*, deprecated, message: "Apple has marked it as deprecated and it will be removed sometime in the future.")
    static func listAppStoreVersionExperimentsForAppStoreVersionV1(id: String,
                                                                   fields: [ListAppStoreVersionExperimentsForAppStoreVersionV1.Field]? = nil,
                                                                   filters: [ListAppStoreVersionExperimentsForAppStoreVersionV1.Filter]? = nil,
                                                                   includes: [ListAppStoreVersionExperimentsForAppStoreVersionV1.Include]? = nil,
                                                                   limits: [ListAppStoreVersionExperimentsForAppStoreVersionV1.Limit]? = nil) -> Request<AppStoreVersionExperimentsResponse, ErrorResponse>
    {
        .init(path: "/v1/appStoreVersions/\(id)/appStoreVersionExperiments", method: .get, parameters: .init(fields: fields,
                                                                                                             filters: filters,
                                                                                                             includes: includes,
                                                                                                             limits: limits))
    }
}

public enum ListAppStoreVersionExperimentsForAppStoreVersionV1 {
    /**
     Fields to return for included related types.
     */
    public enum Field: FieldParameter {
        /// The fields to include for returned resources of type appStoreVersionExperimentTreatments
        case appStoreVersionExperimentTreatments([AppStoreVersionExperimentTreatments])
        /// The fields to include for returned resources of type appStoreVersionExperiments
        case appStoreVersionExperiments([AppStoreVersionExperiments])
        /// The fields to include for returned resources of type appStoreVersions
        case appStoreVersions([AppStoreVersions])

        public enum AppStoreVersionExperimentTreatments: String, ParameterValue, CodableEnum, CaseIterable {
            case appIcon
            case appIconName
            case appStoreVersionExperiment
            case appStoreVersionExperimentTreatmentLocalizations
            case appStoreVersionExperimentV2
            case name
            case promotedDate

            var allCases: [Self] {
                [
                    .appIcon,
                    .appIconName,
                    .appStoreVersionExperiment,
                    .appStoreVersionExperimentTreatmentLocalizations,
                    .appStoreVersionExperimentV2,
                    .name,
                    .promotedDate,
                ]
            }
        }

        public enum AppStoreVersionExperiments: String, ParameterValue, CodableEnum, CaseIterable {
            case appStoreVersion
            case appStoreVersionExperimentTreatments
            case endDate
            case name
            case reviewRequired
            case startDate
            case started
            case state
            case trafficProportion

            var allCases: [Self] {
                [
                    .appStoreVersion,
                    .appStoreVersionExperimentTreatments,
                    .endDate,
                    .name,
                    .reviewRequired,
                    .startDate,
                    .started,
                    .state,
                    .trafficProportion,
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
     Attributes, relationships, and IDs by which to filter.
     */
    public enum Filter: FilterParameter {
        /// Filter by attribute 'state'
        case state([State])

        public enum State: String, ParameterValue, CodableEnum, CaseIterable {
            case prepareForSubmission = "PREPARE_FOR_SUBMISSION"
            case readyForReview = "READY_FOR_REVIEW"
            case waitingForReview = "WAITING_FOR_REVIEW"
            case inReview = "IN_REVIEW"
            case accepted = "ACCEPTED"
            case approved = "APPROVED"
            case rejected = "REJECTED"
            case completed = "COMPLETED"
            case stopped = "STOPPED"

            var allCases: [Self] {
                [
                    .prepareForSubmission,
                    .readyForReview,
                    .waitingForReview,
                    .inReview,
                    .accepted,
                    .approved,
                    .rejected,
                    .completed,
                    .stopped,
                ]
            }
        }
    }

    /**
     Relationship data to include in the response.
     */
    public enum Include: String, IncludeParameter, CaseIterable {
        case appStoreVersion
        case appStoreVersionExperimentTreatments
    }

    /**
     Number of included related resources to return.
     */
    public enum Limit: LimitParameter {
        /// Maximum number of related appStoreVersionExperimentTreatments returned (when they are included) - maximum 50
        case appStoreVersionExperimentTreatments(Int)
        /// Maximum resources per page - maximum 200
        case limit(Int)
    }
}
