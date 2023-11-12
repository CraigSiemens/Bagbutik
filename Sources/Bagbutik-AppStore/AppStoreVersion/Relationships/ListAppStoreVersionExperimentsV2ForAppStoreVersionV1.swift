import Bagbutik_Core
import Bagbutik_Models

public extension Request {
    /**
     # List All Experiments for an App Store Version
     Get a list of all experiments for an App Store version of an app across all platforms.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/list_all_experiments_for_an_app_store_version>

     - Parameter id: The id of the requested resource
     - Parameter fields: Fields to return for included related types
     - Parameter filters: Attributes, relationships, and IDs by which to filter
     - Parameter includes: Relationship data to include in the response
     - Parameter limits: Number of resources to return
     - Returns: A ``Request`` to send to an instance of ``BagbutikService``
     */
    static func listAppStoreVersionExperimentsV2ForAppStoreVersionV1(id: String,
                                                                     fields: [ListAppStoreVersionExperimentsV2ForAppStoreVersionV1.Field]? = nil,
                                                                     filters: [ListAppStoreVersionExperimentsV2ForAppStoreVersionV1.Filter]? = nil,
                                                                     includes: [ListAppStoreVersionExperimentsV2ForAppStoreVersionV1.Include]? = nil,
                                                                     limits: [ListAppStoreVersionExperimentsV2ForAppStoreVersionV1.Limit]? = nil) -> Request<AppStoreVersionExperimentsV2Response, ErrorResponse>
    {
        .init(path: "/v1/appStoreVersions/\(id)/appStoreVersionExperimentsV2", method: .get, parameters: .init(fields: fields,
                                                                                                               filters: filters,
                                                                                                               includes: includes,
                                                                                                               limits: limits))
    }
}

public enum ListAppStoreVersionExperimentsV2ForAppStoreVersionV1 {
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
        /// The fields to include for returned resources of type apps
        case apps([Apps])

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
            case app
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

        public enum Apps: String, ParameterValue, CodableEnum, CaseIterable {
            case appAvailability
            case appClips
            case appCustomProductPages
            case appEncryptionDeclarations
            case appEvents
            case appInfos
            case appPricePoints
            case appPriceSchedule
            case appStoreVersionExperimentsV2
            case appStoreVersions
            case availableInNewTerritories
            case availableTerritories
            case betaAppLocalizations
            case betaAppReviewDetail
            case betaGroups
            case betaLicenseAgreement
            case betaTesters
            case builds
            case bundleId
            case ciProduct
            case contentRightsDeclaration
            case customerReviews
            case endUserLicenseAgreement
            case gameCenterDetail
            case gameCenterEnabledVersions
            case inAppPurchases
            case inAppPurchasesV2
            case isOrEverWasMadeForKids
            case name
            case perfPowerMetrics
            case preOrder
            case preReleaseVersions
            case pricePoints
            case prices
            case primaryLocale
            case promotedPurchases
            case reviewSubmissions
            case sku
            case subscriptionGracePeriod
            case subscriptionGroups
            case subscriptionStatusUrl
            case subscriptionStatusUrlForSandbox
            case subscriptionStatusUrlVersion
            case subscriptionStatusUrlVersionForSandbox

            var allCases: [Self] {
                [
                    .appAvailability,
                    .appClips,
                    .appCustomProductPages,
                    .appEncryptionDeclarations,
                    .appEvents,
                    .appInfos,
                    .appPricePoints,
                    .appPriceSchedule,
                    .appStoreVersionExperimentsV2,
                    .appStoreVersions,
                    .availableInNewTerritories,
                    .availableTerritories,
                    .betaAppLocalizations,
                    .betaAppReviewDetail,
                    .betaGroups,
                    .betaLicenseAgreement,
                    .betaTesters,
                    .builds,
                    .bundleId,
                    .ciProduct,
                    .contentRightsDeclaration,
                    .customerReviews,
                    .endUserLicenseAgreement,
                    .gameCenterDetail,
                    .gameCenterEnabledVersions,
                    .inAppPurchases,
                    .inAppPurchasesV2,
                    .isOrEverWasMadeForKids,
                    .name,
                    .perfPowerMetrics,
                    .preOrder,
                    .preReleaseVersions,
                    .pricePoints,
                    .prices,
                    .primaryLocale,
                    .promotedPurchases,
                    .reviewSubmissions,
                    .sku,
                    .subscriptionGracePeriod,
                    .subscriptionGroups,
                    .subscriptionStatusUrl,
                    .subscriptionStatusUrlForSandbox,
                    .subscriptionStatusUrlVersion,
                    .subscriptionStatusUrlVersionForSandbox,
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
        case app
        case appStoreVersionExperimentTreatments
        case controlVersions
        case latestControlVersion
    }

    /**
     Number of included related resources to return.
     */
    public enum Limit: LimitParameter {
        /// Maximum number of related appStoreVersionExperimentTreatments returned (when they are included) - maximum 50
        case appStoreVersionExperimentTreatments(Int)
        /// Maximum number of related controlVersions returned (when they are included) - maximum 50
        case controlVersions(Int)
        /// Maximum resources per page - maximum 200
        case limit(Int)
    }
}
