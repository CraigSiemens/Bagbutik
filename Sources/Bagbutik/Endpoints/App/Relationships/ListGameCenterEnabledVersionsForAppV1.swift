public extension Request {
    /**
      # List All Game Center Enabled Versions for an App
      Get a list of Game Center enabled versions associated with a specific app.

      Full documentation:
      <https://developer.apple.com/documentation/appstoreconnectapi/list_all_game_center_enabled_versions_for_an_app>

      - Parameter id: The id of the requested resource
      - Parameter fields: Fields to return for included related types
      - Parameter filters: Attributes, relationships, and IDs by which to filter
      - Parameter includes: Relationship data to include in the response
      - Parameter sorts: Attributes by which to sort
      - Parameter limits: Number of resources to return
      - Returns: A `Request` with to send to an instance of `BagbutikService`
     */
    static func listGameCenterEnabledVersionsForAppV1(id: String,
                                                      fields: [ListGameCenterEnabledVersionsForAppV1.Field]? = nil,
                                                      filters: [ListGameCenterEnabledVersionsForAppV1.Filter]? = nil,
                                                      includes: [ListGameCenterEnabledVersionsForAppV1.Include]? = nil,
                                                      sorts: [ListGameCenterEnabledVersionsForAppV1.Sort]? = nil,
                                                      limits: [ListGameCenterEnabledVersionsForAppV1.Limit]? = nil) -> Request<GameCenterEnabledVersionsResponse, ErrorResponse>
    {
        return .init(path: "/v1/apps/\(id)/gameCenterEnabledVersions", method: .get, parameters: .init(fields: fields,
                                                                                                       filters: filters,
                                                                                                       includes: includes,
                                                                                                       sorts: sorts,
                                                                                                       limits: limits))
    }
}

public enum ListGameCenterEnabledVersionsForAppV1 {
    /**
     Fields to return for included related types.
     */
    public enum Field: FieldParameter {
        /// The fields to include for returned resources of type apps
        case apps([Apps])
        /// The fields to include for returned resources of type gameCenterEnabledVersions
        case gameCenterEnabledVersions([GameCenterEnabledVersions])

        public enum Apps: String, ParameterValue, CaseIterable {
            case appClips
            case appCustomProductPages
            case appEvents
            case appInfos
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
        }

        public enum GameCenterEnabledVersions: String, ParameterValue, CaseIterable {
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
        /// Filter by id(s)
        case id([String])
        /// Filter by attribute 'platform'
        case platform([Platform])
        /// Filter by attribute 'versionString'
        case versionString([String])

        /// Strings that represent Apple operating systems.
        public enum Platform: String, ParameterValue, CaseIterable {
            /// A string that represents iOS.
            case iOS = "IOS"
            /// A string that represents macOS.
            case macOS = "MAC_OS"
            /// A string that represents tvOS.
            case tvOS = "TV_OS"
        }
    }

    /**
     Relationship data to include in the response.
     */
    public enum Include: String, IncludeParameter {
        case app, compatibleVersions
    }

    /**
     Attributes by which to sort.
     */
    public enum Sort: String, SortParameter {
        case versionStringAscending = "versionString"
        case versionStringDescending = "-versionString"
    }

    /**
     Number of included related resources to return.
     */
    public enum Limit: LimitParameter {
        /// Maximum resources per page - maximum 200
        case limit(Int)
        /// Maximum number of related compatibleVersions returned (when they are included) - maximum 50
        case compatibleVersions(Int)
    }
}