import Bagbutik_Core
import Bagbutik_Models

public extension Request {
    /**
     # List all price points for an app
     Get all the available price points for a specific app.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/list_all_price_points_for_an_app>

     - Parameter id: The id of the requested resource
     - Parameter fields: Fields to return for included related types
     - Parameter filters: Attributes, relationships, and IDs by which to filter
     - Parameter includes: Relationship data to include in the response
     - Parameter limit: Maximum resources per page - maximum 200
     - Returns: A ``Request`` to send to an instance of ``BagbutikService``
     */
    @available(*, deprecated, message: "Apple has marked it as deprecated and it will be removed sometime in the future.")
    static func listPricePointsForAppV1(id: String,
                                        fields: [ListPricePointsForAppV1.Field]? = nil,
                                        filters: [ListPricePointsForAppV1.Filter]? = nil,
                                        includes: [ListPricePointsForAppV1.Include]? = nil,
                                        limit: Int? = nil) -> Request<AppPricePointsV2Response, ErrorResponse>
    {
        .init(path: "/v1/apps/\(id)/pricePoints", method: .get, parameters: .init(fields: fields,
                                                                                  filters: filters,
                                                                                  includes: includes,
                                                                                  limit: limit))
    }
}

public enum ListPricePointsForAppV1 {
    /**
     Fields to return for included related types.
     */
    public enum Field: FieldParameter {
        /// The fields to include for returned resources of type appPricePoints
        case appPricePoints([AppPricePoints])
        /// The fields to include for returned resources of type appPriceTiers
        case appPriceTiers([AppPriceTiers])
        /// The fields to include for returned resources of type apps
        case apps([Apps])
        /// The fields to include for returned resources of type territories
        case territories([Territories])

        public enum AppPricePoints: String, ParameterValue, CodableEnum, CaseIterable {
            case app
            case customerPrice
            case priceTier
            case proceeds
            case territory

            var allCases: [Self] {
                [
                    .app,
                    .customerPrice,
                    .priceTier,
                    .proceeds,
                    .territory,
                ]
            }
        }

        public enum AppPriceTiers: String, ParameterValue, CodableEnum, CaseIterable {
            case pricePoints

            var allCases: [Self] {
                [
                    .pricePoints,
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

        public enum Territories: String, ParameterValue, CodableEnum, CaseIterable {
            case currency

            var allCases: [Self] {
                [
                    .currency,
                ]
            }
        }
    }

    /**
     Attributes, relationships, and IDs by which to filter.
     */
    public enum Filter: FilterParameter {
        /// Filter by id(s) of related 'priceTier'
        case priceTier([String])
        /// Filter by id(s) of related 'territory'
        case territory([String])
    }

    /**
     Relationship data to include in the response.
     */
    public enum Include: String, IncludeParameter, CaseIterable {
        case app
        case priceTier
        case territory
    }
}
