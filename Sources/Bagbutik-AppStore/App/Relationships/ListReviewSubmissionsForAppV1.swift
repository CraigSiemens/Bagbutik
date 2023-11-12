import Bagbutik_Core
import Bagbutik_Models

public extension Request {
    /**
     # Get review submissions for an app
     Get a list of review submissions associated with a specific app.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/get_v1_apps_id_reviewSubmissions>

     - Parameter id: The id of the requested resource
     - Parameter fields: Fields to return for included related types
     - Parameter filters: Attributes, relationships, and IDs by which to filter
     - Parameter includes: Relationship data to include in the response
     - Parameter limits: Number of resources to return
     - Returns: A ``Request`` to send to an instance of ``BagbutikService``
     */
    static func listReviewSubmissionsForAppV1(id: String,
                                              fields: [ListReviewSubmissionsForAppV1.Field]? = nil,
                                              filters: [ListReviewSubmissionsForAppV1.Filter]? = nil,
                                              includes: [ListReviewSubmissionsForAppV1.Include]? = nil,
                                              limits: [ListReviewSubmissionsForAppV1.Limit]? = nil) -> Request<ReviewSubmissionsResponse, ErrorResponse>
    {
        .init(path: "/v1/apps/\(id)/reviewSubmissions", method: .get, parameters: .init(fields: fields,
                                                                                        filters: filters,
                                                                                        includes: includes,
                                                                                        limits: limits))
    }
}

public enum ListReviewSubmissionsForAppV1 {
    /**
     Fields to return for included related types.
     */
    public enum Field: FieldParameter {
        /// The fields to include for returned resources of type actors
        case actors([Actors])
        /// The fields to include for returned resources of type appStoreVersions
        case appStoreVersions([AppStoreVersions])
        /// The fields to include for returned resources of type apps
        case apps([Apps])
        /// The fields to include for returned resources of type reviewSubmissionItems
        case reviewSubmissionItems([ReviewSubmissionItems])
        /// The fields to include for returned resources of type reviewSubmissions
        case reviewSubmissions([ReviewSubmissions])

        public enum Actors: String, ParameterValue, CodableEnum, CaseIterable {
            case actorType
            case apiKeyId
            case userEmail
            case userFirstName
            case userLastName

            var allCases: [Self] {
                [
                    .actorType,
                    .apiKeyId,
                    .userEmail,
                    .userFirstName,
                    .userLastName,
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

        public enum ReviewSubmissions: String, ParameterValue, CodableEnum, CaseIterable {
            case app
            case appStoreVersionForReview
            case canceled
            case items
            case lastUpdatedByActor
            case platform
            case state
            case submitted
            case submittedByActor
            case submittedDate

            var allCases: [Self] {
                [
                    .app,
                    .appStoreVersionForReview,
                    .canceled,
                    .items,
                    .lastUpdatedByActor,
                    .platform,
                    .state,
                    .submitted,
                    .submittedByActor,
                    .submittedDate,
                ]
            }
        }
    }

    /**
     Attributes, relationships, and IDs by which to filter.
     */
    public enum Filter: FilterParameter {
        /// Filter by attribute 'platform'
        case platform([Platform])
        /// Filter by attribute 'state'
        case state([State])

        public enum State: String, ParameterValue, CodableEnum, CaseIterable {
            case readyForReview = "READY_FOR_REVIEW"
            case waitingForReview = "WAITING_FOR_REVIEW"
            case inReview = "IN_REVIEW"
            case unresolvedIssues = "UNRESOLVED_ISSUES"
            case canceling = "CANCELING"
            case completing = "COMPLETING"
            case complete = "COMPLETE"

            var allCases: [Self] {
                [
                    .readyForReview,
                    .waitingForReview,
                    .inReview,
                    .unresolvedIssues,
                    .canceling,
                    .completing,
                    .complete,
                ]
            }
        }
    }

    /**
     Relationship data to include in the response.
     */
    public enum Include: String, IncludeParameter, CaseIterable {
        case app
        case appStoreVersionForReview
        case items
        case lastUpdatedByActor
        case submittedByActor
    }

    /**
     Number of included related resources to return.
     */
    public enum Limit: LimitParameter {
        /// Maximum number of related items returned (when they are included) - maximum 50
        case items(Int)
        /// Maximum resources per page - maximum 200
        case limit(Int)
    }
}
