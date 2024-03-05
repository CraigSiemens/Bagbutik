import Bagbutik_Core
import Bagbutik_Models

public extension Request {
    /**
     # List All Compatible Versions for a Game Center Enabled Version

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/list_all_compatible_versions_for_a_game_center_enabled_version>

     - Parameter id: The id of the requested resource
     - Parameter fields: Fields to return for included related types
     - Parameter filters: Attributes, relationships, and IDs by which to filter
     - Parameter includes: Relationship data to include in the response
     - Parameter sorts: Attributes by which to sort
     - Parameter limits: Number of resources to return
     - Returns: A ``Request`` to send to an instance of ``BagbutikService``
     */
    @available(*, deprecated, message: "Apple has marked it as deprecated and it will be removed sometime in the future.")
    static func listCompatibleVersionsForGameCenterEnabledVersionV1(id: String,
                                                                    fields: [ListCompatibleVersionsForGameCenterEnabledVersionV1.Field]? = nil,
                                                                    filters: [ListCompatibleVersionsForGameCenterEnabledVersionV1.Filter]? = nil,
                                                                    includes: [ListCompatibleVersionsForGameCenterEnabledVersionV1.Include]? = nil,
                                                                    sorts: [ListCompatibleVersionsForGameCenterEnabledVersionV1.Sort]? = nil,
                                                                    limits: [ListCompatibleVersionsForGameCenterEnabledVersionV1.Limit]? = nil) -> Request<GameCenterEnabledVersionsResponse, ErrorResponse>
    {
        .init(path: "/v1/gameCenterEnabledVersions/\(id)/compatibleVersions", method: .get, parameters: .init(fields: fields,
                                                                                                              filters: filters,
                                                                                                              includes: includes,
                                                                                                              sorts: sorts,
                                                                                                              limits: limits))
    }
}

public enum ListCompatibleVersionsForGameCenterEnabledVersionV1 {
    /**
     Fields to return for included related types.
     */
    public enum Field: FieldParameter {
        /// The fields to include for returned resources of type apps
        case apps([Apps])
        /// The fields to include for returned resources of type gameCenterEnabledVersions
        case gameCenterEnabledVersions([GameCenterEnabledVersions])

        public enum Apps: String, ParameterValue, Codable, CaseIterable {
            case alternativeDistributionKey
            case analyticsReportRequests
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
            case marketplaceSearchDetail
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
        }

        public enum GameCenterEnabledVersions: String, ParameterValue, Codable, CaseIterable {
            case app
            case compatibleVersions
            case iconAsset
            case platform
            case versionString
        }
    }

    /**
     Attributes, relationships, and IDs by which to filter.
     */
    public enum Filter: FilterParameter {
        /// Filter by id(s) of related 'app'
        case app([String])
        /// Filter by id(s)
        case id([String])
        /// Filter by attribute 'platform'
        case platform([Platform])
        /// Filter by attribute 'versionString'
        case versionString([String])
    }

    /**
     Relationship data to include in the response.
     */
    public enum Include: String, IncludeParameter, CaseIterable {
        case app
        case compatibleVersions
    }

    /**
     Attributes by which to sort.
     */
    public enum Sort: String, SortParameter, CaseIterable {
        case versionStringAscending = "versionString"
        case versionStringDescending = "-versionString"
    }

    /**
     Number of included related resources to return.
     */
    public enum Limit: LimitParameter {
        /// Maximum number of related compatibleVersions returned (when they are included) - maximum 50
        case compatibleVersions(Int)
        /// Maximum resources per page - maximum 200
        case limit(Int)
    }
}
