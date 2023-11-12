import Bagbutik_Core
import Bagbutik_Models

public extension Request {
    /**
     # List All In-App Purchases for an App
     Get a list of the in-app purchases for a specific app.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/list_all_in-app_purchases_for_an_app>

     - Parameter id: The id of the requested resource
     - Parameter fields: Fields to return for included related types
     - Parameter filters: Attributes, relationships, and IDs by which to filter
     - Parameter includes: Relationship data to include in the response
     - Parameter sorts: Attributes by which to sort
     - Parameter limits: Number of resources to return
     - Returns: A ``Request`` to send to an instance of ``BagbutikService``
     */
    static func listInAppPurchasesV2ForAppV1(id: String,
                                             fields: [ListInAppPurchasesV2ForAppV1.Field]? = nil,
                                             filters: [ListInAppPurchasesV2ForAppV1.Filter]? = nil,
                                             includes: [ListInAppPurchasesV2ForAppV1.Include]? = nil,
                                             sorts: [ListInAppPurchasesV2ForAppV1.Sort]? = nil,
                                             limits: [ListInAppPurchasesV2ForAppV1.Limit]? = nil) -> Request<InAppPurchasesV2Response, ErrorResponse>
    {
        .init(path: "/v1/apps/\(id)/inAppPurchasesV2", method: .get, parameters: .init(fields: fields,
                                                                                       filters: filters,
                                                                                       includes: includes,
                                                                                       sorts: sorts,
                                                                                       limits: limits))
    }
}

public enum ListInAppPurchasesV2ForAppV1 {
    /**
     Fields to return for included related types.
     */
    public enum Field: FieldParameter {
        /// The fields to include for returned resources of type inAppPurchaseAppStoreReviewScreenshots
        case inAppPurchaseAppStoreReviewScreenshots([InAppPurchaseAppStoreReviewScreenshots])
        /// The fields to include for returned resources of type inAppPurchaseAvailabilities
        case inAppPurchaseAvailabilities([InAppPurchaseAvailabilities])
        /// The fields to include for returned resources of type inAppPurchaseContents
        case inAppPurchaseContents([InAppPurchaseContents])
        /// The fields to include for returned resources of type inAppPurchaseLocalizations
        case inAppPurchaseLocalizations([InAppPurchaseLocalizations])
        /// The fields to include for returned resources of type inAppPurchasePriceSchedules
        case inAppPurchasePriceSchedules([InAppPurchasePriceSchedules])
        /// The fields to include for returned resources of type inAppPurchases
        case inAppPurchases([InAppPurchases])
        /// The fields to include for returned resources of type promotedPurchases
        case promotedPurchases([PromotedPurchases])

        public enum InAppPurchaseAppStoreReviewScreenshots: String, ParameterValue, CodableEnum, CaseIterable {
            case assetDeliveryState
            case assetToken
            case assetType
            case fileName
            case fileSize
            case imageAsset
            case inAppPurchaseV2
            case sourceFileChecksum
            case uploadOperations
            case uploaded

            var allCases: [Self] {
                [
                    .assetDeliveryState,
                    .assetToken,
                    .assetType,
                    .fileName,
                    .fileSize,
                    .imageAsset,
                    .inAppPurchaseV2,
                    .sourceFileChecksum,
                    .uploadOperations,
                    .uploaded,
                ]
            }
        }

        public enum InAppPurchaseAvailabilities: String, ParameterValue, CodableEnum, CaseIterable {
            case availableInNewTerritories
            case availableTerritories
            case inAppPurchase

            var allCases: [Self] {
                [
                    .availableInNewTerritories,
                    .availableTerritories,
                    .inAppPurchase,
                ]
            }
        }

        public enum InAppPurchaseContents: String, ParameterValue, CodableEnum, CaseIterable {
            case fileName
            case fileSize
            case inAppPurchaseV2
            case lastModifiedDate
            case url

            var allCases: [Self] {
                [
                    .fileName,
                    .fileSize,
                    .inAppPurchaseV2,
                    .lastModifiedDate,
                    .url,
                ]
            }
        }

        public enum InAppPurchaseLocalizations: String, ParameterValue, CodableEnum, CaseIterable {
            case description
            case inAppPurchaseV2
            case locale
            case name
            case state

            var allCases: [Self] {
                [
                    .description,
                    .inAppPurchaseV2,
                    .locale,
                    .name,
                    .state,
                ]
            }
        }

        public enum InAppPurchasePriceSchedules: String, ParameterValue, CodableEnum, CaseIterable {
            case automaticPrices
            case baseTerritory
            case inAppPurchase
            case manualPrices

            var allCases: [Self] {
                [
                    .automaticPrices,
                    .baseTerritory,
                    .inAppPurchase,
                    .manualPrices,
                ]
            }
        }

        public enum InAppPurchases: String, ParameterValue, CodableEnum, CaseIterable {
            case app
            case appStoreReviewScreenshot
            case availableInAllTerritories
            case content
            case contentHosting
            case familySharable
            case iapPriceSchedule
            case inAppPurchaseAvailability
            case inAppPurchaseLocalizations
            case inAppPurchaseType
            case name
            case productId
            case promotedPurchase
            case reviewNote
            case state

            var allCases: [Self] {
                [
                    .app,
                    .appStoreReviewScreenshot,
                    .availableInAllTerritories,
                    .content,
                    .contentHosting,
                    .familySharable,
                    .iapPriceSchedule,
                    .inAppPurchaseAvailability,
                    .inAppPurchaseLocalizations,
                    .inAppPurchaseType,
                    .name,
                    .productId,
                    .promotedPurchase,
                    .reviewNote,
                    .state,
                ]
            }
        }

        public enum PromotedPurchases: String, ParameterValue, CodableEnum, CaseIterable {
            case app
            case enabled
            case inAppPurchaseV2
            case promotionImages
            case state
            case subscription
            case visibleForAllUsers

            var allCases: [Self] {
                [
                    .app,
                    .enabled,
                    .inAppPurchaseV2,
                    .promotionImages,
                    .state,
                    .subscription,
                    .visibleForAllUsers,
                ]
            }
        }
    }

    /**
     Attributes, relationships, and IDs by which to filter.
     */
    public enum Filter: FilterParameter {
        /// Filter by attribute 'inAppPurchaseType'
        case inAppPurchaseType([InAppPurchaseType])
        /// Filter by attribute 'name'
        case name([String])
        /// Filter by attribute 'productId'
        case productId([String])
        /// Filter by attribute 'state'
        case state([InAppPurchaseState])
    }

    /**
     Relationship data to include in the response.
     */
    public enum Include: String, IncludeParameter, CaseIterable {
        case appStoreReviewScreenshot
        case content
        case iapPriceSchedule
        case inAppPurchaseAvailability
        case inAppPurchaseLocalizations
        case pricePoints
        case promotedPurchase
    }

    /**
     Attributes by which to sort.
     */
    public enum Sort: String, SortParameter, CaseIterable {
        case inAppPurchaseTypeAscending = "inAppPurchaseType"
        case inAppPurchaseTypeDescending = "-inAppPurchaseType"
        case nameAscending = "name"
        case nameDescending = "-name"
    }

    /**
     Number of included related resources to return.
     */
    public enum Limit: LimitParameter {
        /// Maximum number of related inAppPurchaseLocalizations returned (when they are included) - maximum 50
        case inAppPurchaseLocalizations(Int)
        /// Maximum resources per page - maximum 200
        case limit(Int)
    }
}
