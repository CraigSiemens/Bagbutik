import Bagbutik_Core
import Bagbutik_Models

public extension Request {
    /**
     # Read the Xcode Cloud Product for an App
     Get the Xcode Cloud product information for an app you build with Xcode Cloud.

     The example request below retrieves information about a specific Xcode Cloud product. Use the data provided in the response to read additional information; for example, workflow information.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/read_the_xcode_cloud_product_for_an_app>

     - Parameter id: The id of the requested resource
     - Parameter fields: Fields to return for included related types
     - Parameter includes: Relationship data to include in the response
     - Parameter limit: Maximum number of related primaryRepositories returned (when they are included) - maximum 50
     - Returns: A ``Request`` to send to an instance of ``BagbutikService``
     */
    static func getCiProductForAppV1(id: String,
                                     fields: [GetCiProductForAppV1.Field]? = nil,
                                     includes: [GetCiProductForAppV1.Include]? = nil,
                                     limit: Int? = nil) -> Request<CiProductResponse, ErrorResponse>
    {
        .init(path: "/v1/apps/\(id)/ciProduct", method: .get, parameters: .init(fields: fields,
                                                                                includes: includes,
                                                                                limit: limit))
    }
}

public enum GetCiProductForAppV1 {
    /**
     Fields to return for included related types.
     */
    public enum Field: FieldParameter {
        /// The fields to include for returned resources of type apps
        case apps([Apps])
        /// The fields to include for returned resources of type bundleIds
        case bundleIds([BundleIds])
        /// The fields to include for returned resources of type ciProducts
        case ciProducts([CiProducts])
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

        public enum BundleIds: String, ParameterValue, CodableEnum, CaseIterable {
            case app
            case bundleIdCapabilities
            case identifier
            case name
            case platform
            case profiles
            case seedId

            var allCases: [Self] {
                [
                    .app,
                    .bundleIdCapabilities,
                    .identifier,
                    .name,
                    .platform,
                    .profiles,
                    .seedId,
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
     Relationship data to include in the response.
     */
    public enum Include: String, IncludeParameter, CaseIterable {
        case app
        case bundleId
        case primaryRepositories
    }
}
