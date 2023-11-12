import Bagbutik_Core
import Bagbutik_Models

public extension Request {
    /**
     # Read In-App Purchase Information
     Get information about an in-app purchase.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/read_in-app_purchase_information>

     - Parameter id: The id of the requested resource
     - Parameter fields: Fields to return for included related types
     - Parameter includes: Relationship data to include in the response
     - Parameter limits: Number of resources to return
     - Returns: A ``Request`` to send to an instance of ``BagbutikService``
     */
    static func getInAppPurchasesV2(id: String,
                                    fields: [GetInAppPurchasesV2.Field]? = nil,
                                    includes: [GetInAppPurchasesV2.Include]? = nil,
                                    limits: [GetInAppPurchasesV2.Limit]? = nil) -> Request<InAppPurchaseV2Response, ErrorResponse>
    {
        .init(path: "/v2/inAppPurchases/\(id)", method: .get, parameters: .init(fields: fields,
                                                                                includes: includes,
                                                                                limits: limits))
    }
}

public enum GetInAppPurchasesV2 {
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
        /// The fields to include for returned resources of type inAppPurchasePricePoints
        case inAppPurchasePricePoints([InAppPurchasePricePoints])
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

        public enum InAppPurchasePricePoints: String, ParameterValue, CodableEnum, CaseIterable {
            case customerPrice
            case inAppPurchaseV2
            case priceTier
            case proceeds
            case territory

            var allCases: [Self] {
                [
                    .customerPrice,
                    .inAppPurchaseV2,
                    .priceTier,
                    .proceeds,
                    .territory,
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
            case pricePoints
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
                    .pricePoints,
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
     Number of included related resources to return.
     */
    public enum Limit: LimitParameter {
        /// Maximum number of related inAppPurchaseLocalizations returned (when they are included) - maximum 50
        case inAppPurchaseLocalizations(Int)
        /// Maximum number of related pricePoints returned (when they are included) - maximum 8000
        case pricePoints(Int)
    }
}
