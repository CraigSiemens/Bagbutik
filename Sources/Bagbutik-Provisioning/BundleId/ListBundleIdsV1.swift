import Bagbutik_Core
import Bagbutik_Models

public extension Request {
    /**
     # List Bundle IDs
     Find and list bundle IDs that are registered to your team.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/list_bundle_ids>

     - Parameter fields: Fields to return for included related types
     - Parameter filters: Attributes, relationships, and IDs by which to filter
     - Parameter includes: Relationship data to include in the response
     - Parameter sorts: Attributes by which to sort
     - Parameter limits: Number of resources to return
     - Returns: A ``Request`` to send to an instance of ``BagbutikService``
     */
    static func listBundleIdsV1(fields: [ListBundleIdsV1.Field]? = nil,
                                filters: [ListBundleIdsV1.Filter]? = nil,
                                includes: [ListBundleIdsV1.Include]? = nil,
                                sorts: [ListBundleIdsV1.Sort]? = nil,
                                limits: [ListBundleIdsV1.Limit]? = nil) -> Request<BundleIdsResponse, ErrorResponse>
    {
        .init(path: "/v1/bundleIds", method: .get, parameters: .init(fields: fields,
                                                                     filters: filters,
                                                                     includes: includes,
                                                                     sorts: sorts,
                                                                     limits: limits))
    }
}

public enum ListBundleIdsV1 {
    /**
     Fields to return for included related types.
     */
    public enum Field: FieldParameter {
        /// The fields to include for returned resources of type apps
        case apps([Apps])
        /// The fields to include for returned resources of type bundleIdCapabilities
        case bundleIdCapabilities([BundleIdCapabilities])
        /// The fields to include for returned resources of type bundleIds
        case bundleIds([BundleIds])
        /// The fields to include for returned resources of type profiles
        case profiles([Profiles])

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

        public enum BundleIdCapabilities: String, ParameterValue, CodableEnum, CaseIterable {
            case bundleId
            case capabilityType
            case settings

            var allCases: [Self] {
                [
                    .bundleId,
                    .capabilityType,
                    .settings,
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

        public enum Profiles: String, ParameterValue, CodableEnum, CaseIterable {
            case bundleId
            case certificates
            case createdDate
            case devices
            case expirationDate
            case name
            case platform
            case profileContent
            case profileState
            case profileType
            case uuid

            var allCases: [Self] {
                [
                    .bundleId,
                    .certificates,
                    .createdDate,
                    .devices,
                    .expirationDate,
                    .name,
                    .platform,
                    .profileContent,
                    .profileState,
                    .profileType,
                    .uuid,
                ]
            }
        }
    }

    /**
     Attributes, relationships, and IDs by which to filter.
     */
    public enum Filter: FilterParameter {
        /// Filter by id(s)
        case id([String])
        /// Filter by attribute 'identifier'
        case identifier([String])
        /// Filter by attribute 'name'
        case name([String])
        /// Filter by attribute 'platform'
        case platform([BundleIdPlatform])
        /// Filter by attribute 'seedId'
        case seedId([String])
    }

    /**
     Relationship data to include in the response.
     */
    public enum Include: String, IncludeParameter, CaseIterable {
        case app
        case bundleIdCapabilities
        case profiles
    }

    /**
     Attributes by which to sort.
     */
    public enum Sort: String, SortParameter, CaseIterable {
        case idAscending = "id"
        case idDescending = "-id"
        case identifierAscending = "identifier"
        case identifierDescending = "-identifier"
        case nameAscending = "name"
        case nameDescending = "-name"
        case platformAscending = "platform"
        case platformDescending = "-platform"
        case seedIdAscending = "seedId"
        case seedIdDescending = "-seedId"
    }

    /**
     Number of included related resources to return.
     */
    public enum Limit: LimitParameter {
        /// Maximum number of related bundleIdCapabilities returned (when they are included) - maximum 50
        case bundleIdCapabilities(Int)
        /// Maximum resources per page - maximum 200
        case limit(Int)
        /// Maximum number of related profiles returned (when they are included) - maximum 50
        case profiles(Int)
    }
}
