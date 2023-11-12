import Bagbutik_Core
import Bagbutik_Models

public extension Request {
    /**
     # List All Xcode Cloud Products
     Get a list of all products you created in Xcode Cloud.

     The example request below lists ten Xcode Cloud products and sorts the list using the `latestBuildCreatedDate` attribute. Use the information provided in the response to display data about your Xcode Cloud products on a dashboard or to read additional information; for example, workflow information.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/list_all_xcode_cloud_products>

     - Parameter fields: Fields to return for included related types
     - Parameter filters: Attributes, relationships, and IDs by which to filter
     - Parameter includes: Relationship data to include in the response
     - Parameter limits: Number of resources to return
     - Returns: A ``Request`` to send to an instance of ``BagbutikService``
     */
    static func listCiProductsV1(fields: [ListCiProductsV1.Field]? = nil,
                                 filters: [ListCiProductsV1.Filter]? = nil,
                                 includes: [ListCiProductsV1.Include]? = nil,
                                 limits: [ListCiProductsV1.Limit]? = nil) -> Request<CiProductsResponse, ErrorResponse>
    {
        .init(path: "/v1/ciProducts", method: .get, parameters: .init(fields: fields,
                                                                      filters: filters,
                                                                      includes: includes,
                                                                      limits: limits))
    }
}

public enum ListCiProductsV1 {
    /**
     Fields to return for included related types.
     */
    public enum Field: FieldParameter {
        /// The fields to include for returned resources of type apps
        case apps([Apps])
        /// The fields to include for returned resources of type ciBuildRuns
        case ciBuildRuns([CiBuildRuns])
        /// The fields to include for returned resources of type ciProducts
        case ciProducts([CiProducts])
        /// The fields to include for returned resources of type ciWorkflows
        case ciWorkflows([CiWorkflows])
        /// The fields to include for returned resources of type scmRepositories
        case scmRepositories([ScmRepositories])

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

        public enum CiBuildRuns: String, ParameterValue, CodableEnum, CaseIterable {
            case actions
            case buildRun
            case builds
            case cancelReason
            case clean
            case completionStatus
            case createdDate
            case destinationBranch
            case destinationCommit
            case executionProgress
            case finishedDate
            case isPullRequestBuild
            case issueCounts
            case number
            case product
            case pullRequest
            case sourceBranchOrTag
            case sourceCommit
            case startReason
            case startedDate
            case workflow

            var allCases: [Self] {
                [
                    .actions,
                    .buildRun,
                    .builds,
                    .cancelReason,
                    .clean,
                    .completionStatus,
                    .createdDate,
                    .destinationBranch,
                    .destinationCommit,
                    .executionProgress,
                    .finishedDate,
                    .isPullRequestBuild,
                    .issueCounts,
                    .number,
                    .product,
                    .pullRequest,
                    .sourceBranchOrTag,
                    .sourceCommit,
                    .startReason,
                    .startedDate,
                    .workflow,
                ]
            }
        }

        public enum CiProducts: String, ParameterValue, CodableEnum, CaseIterable {
            case additionalRepositories
            case app
            case buildRuns
            case bundleId
            case createdDate
            case name
            case primaryRepositories
            case productType
            case workflows

            var allCases: [Self] {
                [
                    .additionalRepositories,
                    .app,
                    .buildRuns,
                    .bundleId,
                    .createdDate,
                    .name,
                    .primaryRepositories,
                    .productType,
                    .workflows,
                ]
            }
        }

        public enum CiWorkflows: String, ParameterValue, CodableEnum, CaseIterable {
            case actions
            case branchStartCondition
            case buildRuns
            case clean
            case containerFilePath
            case description
            case isEnabled
            case isLockedForEditing
            case lastModifiedDate
            case macOsVersion
            case name
            case product
            case pullRequestStartCondition
            case repository
            case scheduledStartCondition
            case tagStartCondition
            case xcodeVersion

            var allCases: [Self] {
                [
                    .actions,
                    .branchStartCondition,
                    .buildRuns,
                    .clean,
                    .containerFilePath,
                    .description,
                    .isEnabled,
                    .isLockedForEditing,
                    .lastModifiedDate,
                    .macOsVersion,
                    .name,
                    .product,
                    .pullRequestStartCondition,
                    .repository,
                    .scheduledStartCondition,
                    .tagStartCondition,
                    .xcodeVersion,
                ]
            }
        }

        public enum ScmRepositories: String, ParameterValue, CodableEnum, CaseIterable {
            case defaultBranch
            case gitReferences
            case httpCloneUrl
            case lastAccessedDate
            case ownerName
            case pullRequests
            case repositoryName
            case scmProvider
            case sshCloneUrl

            var allCases: [Self] {
                [
                    .defaultBranch,
                    .gitReferences,
                    .httpCloneUrl,
                    .lastAccessedDate,
                    .ownerName,
                    .pullRequests,
                    .repositoryName,
                    .scmProvider,
                    .sshCloneUrl,
                ]
            }
        }
    }

    /**
     Attributes, relationships, and IDs by which to filter.
     */
    public enum Filter: FilterParameter {
        /// Filter by id(s) of related 'app'
        case app([String])
        /// Filter by attribute 'productType'
        case productType([CiProduct.Attributes.ProductType])
    }

    /**
     Relationship data to include in the response.
     */
    public enum Include: String, IncludeParameter, CaseIterable {
        case app
        case bundleId
        case primaryRepositories
    }

    /**
     Number of included related resources to return.
     */
    public enum Limit: LimitParameter {
        /// Maximum resources per page - maximum 200
        case limit(Int)
        /// Maximum number of related primaryRepositories returned (when they are included) - maximum 50
        case primaryRepositories(Int)
    }
}
