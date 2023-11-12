import Bagbutik_Core
import Bagbutik_Models

public extension Request {
    /**
     # List Beta Groups
     Find and list beta groups for all apps.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/list_beta_groups>

     - Parameter fields: Fields to return for included related types
     - Parameter filters: Attributes, relationships, and IDs by which to filter
     - Parameter includes: Relationship data to include in the response
     - Parameter sorts: Attributes by which to sort
     - Parameter limits: Number of resources to return
     - Returns: A ``Request`` to send to an instance of ``BagbutikService``
     */
    static func listBetaGroupsV1(fields: [ListBetaGroupsV1.Field]? = nil,
                                 filters: [ListBetaGroupsV1.Filter]? = nil,
                                 includes: [ListBetaGroupsV1.Include]? = nil,
                                 sorts: [ListBetaGroupsV1.Sort]? = nil,
                                 limits: [ListBetaGroupsV1.Limit]? = nil) -> Request<BetaGroupsResponse, ErrorResponse>
    {
        .init(path: "/v1/betaGroups", method: .get, parameters: .init(fields: fields,
                                                                      filters: filters,
                                                                      includes: includes,
                                                                      sorts: sorts,
                                                                      limits: limits))
    }
}

public enum ListBetaGroupsV1 {
    /**
     Fields to return for included related types.
     */
    public enum Field: FieldParameter {
        /// The fields to include for returned resources of type apps
        case apps([Apps])
        /// The fields to include for returned resources of type betaGroups
        case betaGroups([BetaGroups])
        /// The fields to include for returned resources of type betaTesters
        case betaTesters([BetaTesters])
        /// The fields to include for returned resources of type builds
        case builds([Builds])

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

        public enum BetaGroups: String, ParameterValue, CodableEnum, CaseIterable {
            case app
            case betaTesters
            case builds
            case createdDate
            case feedbackEnabled
            case hasAccessToAllBuilds
            case iosBuildsAvailableForAppleSiliconMac
            case isInternalGroup
            case name
            case publicLink
            case publicLinkEnabled
            case publicLinkId
            case publicLinkLimit
            case publicLinkLimitEnabled

            var allCases: [Self] {
                [
                    .app,
                    .betaTesters,
                    .builds,
                    .createdDate,
                    .feedbackEnabled,
                    .hasAccessToAllBuilds,
                    .iosBuildsAvailableForAppleSiliconMac,
                    .isInternalGroup,
                    .name,
                    .publicLink,
                    .publicLinkEnabled,
                    .publicLinkId,
                    .publicLinkLimit,
                    .publicLinkLimitEnabled,
                ]
            }
        }

        public enum BetaTesters: String, ParameterValue, CodableEnum, CaseIterable {
            case apps
            case betaGroups
            case builds
            case email
            case firstName
            case inviteType
            case lastName

            var allCases: [Self] {
                [
                    .apps,
                    .betaGroups,
                    .builds,
                    .email,
                    .firstName,
                    .inviteType,
                    .lastName,
                ]
            }
        }

        public enum Builds: String, ParameterValue, CodableEnum, CaseIterable {
            case app
            case appEncryptionDeclaration
            case appStoreVersion
            case betaAppReviewSubmission
            case betaBuildLocalizations
            case betaGroups
            case buildAudienceType
            case buildBetaDetail
            case buildBundles
            case computedMinMacOsVersion
            case diagnosticSignatures
            case expirationDate
            case expired
            case iconAssetToken
            case icons
            case individualTesters
            case lsMinimumSystemVersion
            case minOsVersion
            case perfPowerMetrics
            case preReleaseVersion
            case processingState
            case uploadedDate
            case usesNonExemptEncryption
            case version

            var allCases: [Self] {
                [
                    .app,
                    .appEncryptionDeclaration,
                    .appStoreVersion,
                    .betaAppReviewSubmission,
                    .betaBuildLocalizations,
                    .betaGroups,
                    .buildAudienceType,
                    .buildBetaDetail,
                    .buildBundles,
                    .computedMinMacOsVersion,
                    .diagnosticSignatures,
                    .expirationDate,
                    .expired,
                    .iconAssetToken,
                    .icons,
                    .individualTesters,
                    .lsMinimumSystemVersion,
                    .minOsVersion,
                    .perfPowerMetrics,
                    .preReleaseVersion,
                    .processingState,
                    .uploadedDate,
                    .usesNonExemptEncryption,
                    .version,
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
        /// Filter by id(s) of related 'builds'
        case builds([String])
        /// Filter by id(s)
        case id([String])
        /// Filter by attribute 'isInternalGroup'
        case isInternalGroup([String])
        /// Filter by attribute 'name'
        case name([String])
        /// Filter by attribute 'publicLink'
        case publicLink([String])
        /// Filter by attribute 'publicLinkEnabled'
        case publicLinkEnabled([String])
        /// Filter by attribute 'publicLinkLimitEnabled'
        case publicLinkLimitEnabled([String])
    }

    /**
     Relationship data to include in the response.
     */
    public enum Include: String, IncludeParameter, CaseIterable {
        case app
        case betaTesters
        case builds
    }

    /**
     Attributes by which to sort.
     */
    public enum Sort: String, SortParameter, CaseIterable {
        case createdDateAscending = "createdDate"
        case createdDateDescending = "-createdDate"
        case nameAscending = "name"
        case nameDescending = "-name"
        case publicLinkEnabledAscending = "publicLinkEnabled"
        case publicLinkEnabledDescending = "-publicLinkEnabled"
        case publicLinkLimitAscending = "publicLinkLimit"
        case publicLinkLimitDescending = "-publicLinkLimit"
    }

    /**
     Number of included related resources to return.
     */
    public enum Limit: LimitParameter {
        /// Maximum number of related betaTesters returned (when they are included) - maximum 50
        case betaTesters(Int)
        /// Maximum number of related builds returned (when they are included) - maximum 1000
        case builds(Int)
        /// Maximum resources per page - maximum 200
        case limit(Int)
    }
}
