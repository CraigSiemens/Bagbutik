import Bagbutik_Core
import Bagbutik_Models

public extension Request {
    /**
     # List the items in a review submission
     List all the items in a specific review submission.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/get_v1_reviewsubmissions_id_items>

     - Parameter id: The id of the requested resource
     - Parameter fields: Fields to return for included related types
     - Parameter includes: Relationship data to include in the response
     - Parameter limit: Maximum resources per page - maximum 200
     - Returns: A ``Request`` to send to an instance of ``BagbutikService``
     */
    static func listItemsForReviewSubmissionV1(id: String,
                                               fields: [ListItemsForReviewSubmissionV1.Field]? = nil,
                                               includes: [ListItemsForReviewSubmissionV1.Include]? = nil,
                                               limit: Int? = nil) -> Request<ReviewSubmissionItemsResponse, ErrorResponse>
    {
        .init(path: "/v1/reviewSubmissions/\(id)/items", method: .get, parameters: .init(fields: fields,
                                                                                         includes: includes,
                                                                                         limit: limit))
    }
}

public enum ListItemsForReviewSubmissionV1 {
    /**
     Fields to return for included related types.
     */
    public enum Field: FieldParameter {
        /// The fields to include for returned resources of type appCustomProductPageVersions
        case appCustomProductPageVersions([AppCustomProductPageVersions])
        /// The fields to include for returned resources of type appEvents
        case appEvents([AppEvents])
        /// The fields to include for returned resources of type appStoreVersionExperiments
        case appStoreVersionExperiments([AppStoreVersionExperiments])
        /// The fields to include for returned resources of type appStoreVersions
        case appStoreVersions([AppStoreVersions])
        /// The fields to include for returned resources of type reviewSubmissionItems
        case reviewSubmissionItems([ReviewSubmissionItems])

        public enum AppCustomProductPageVersions: String, ParameterValue, CodableEnum, CaseIterable {
            case appCustomProductPage
            case appCustomProductPageLocalizations
            case state
            case version

            var allCases: [Self] {
                [
                    .appCustomProductPage,
                    .appCustomProductPageLocalizations,
                    .state,
                    .version,
                ]
            }
        }

        public enum AppEvents: String, ParameterValue, CodableEnum, CaseIterable {
            case app
            case archivedTerritorySchedules
            case badge
            case deepLink
            case eventState
            case localizations
            case primaryLocale
            case priority
            case purchaseRequirement
            case purpose
            case referenceName
            case territorySchedules

            var allCases: [Self] {
                [
                    .app,
                    .archivedTerritorySchedules,
                    .badge,
                    .deepLink,
                    .eventState,
                    .localizations,
                    .primaryLocale,
                    .priority,
                    .purchaseRequirement,
                    .purpose,
                    .referenceName,
                    .territorySchedules,
                ]
            }
        }

        public enum AppStoreVersionExperiments: String, ParameterValue, CodableEnum, CaseIterable {
            case app
            case appStoreVersion
            case appStoreVersionExperimentTreatments
            case controlVersions
            case endDate
            case latestControlVersion
            case name
            case platform
            case reviewRequired
            case startDate
            case started
            case state
            case trafficProportion

            var allCases: [Self] {
                [
                    .app,
                    .appStoreVersion,
                    .appStoreVersionExperimentTreatments,
                    .controlVersions,
                    .endDate,
                    .latestControlVersion,
                    .name,
                    .platform,
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

        public enum ReviewSubmissionItems: String, ParameterValue, CodableEnum, CaseIterable {
            case appCustomProductPageVersion
            case appEvent
            case appStoreVersion
            case appStoreVersionExperiment
            case appStoreVersionExperimentV2
            case removed
            case resolved
            case reviewSubmission
            case state

            var allCases: [Self] {
                [
                    .appCustomProductPageVersion,
                    .appEvent,
                    .appStoreVersion,
                    .appStoreVersionExperiment,
                    .appStoreVersionExperimentV2,
                    .removed,
                    .resolved,
                    .reviewSubmission,
                    .state,
                ]
            }
        }
    }

    /**
     Relationship data to include in the response.
     */
    public enum Include: String, IncludeParameter, CaseIterable {
        case appCustomProductPageVersion
        case appEvent
        case appStoreVersion
        case appStoreVersionExperiment
        case appStoreVersionExperimentV2
    }
}
