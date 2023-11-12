import Bagbutik_Core
import Bagbutik_Models

public extension Request {
    /**
     # Read Subscription Information
     Get information about a specific auto-renewable subscription.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/read_subscription_information>

     - Parameter id: The id of the requested resource
     - Parameter fields: Fields to return for included related types
     - Parameter includes: Relationship data to include in the response
     - Parameter limits: Number of resources to return
     - Returns: A ``Request`` to send to an instance of ``BagbutikService``
     */
    static func getSubscriptionV1(id: String,
                                  fields: [GetSubscriptionV1.Field]? = nil,
                                  includes: [GetSubscriptionV1.Include]? = nil,
                                  limits: [GetSubscriptionV1.Limit]? = nil) -> Request<SubscriptionResponse, ErrorResponse>
    {
        .init(path: "/v1/subscriptions/\(id)", method: .get, parameters: .init(fields: fields,
                                                                               includes: includes,
                                                                               limits: limits))
    }
}

public enum GetSubscriptionV1 {
    /**
     Fields to return for included related types.
     */
    public enum Field: FieldParameter {
        /// The fields to include for returned resources of type promotedPurchases
        case promotedPurchases([PromotedPurchases])
        /// The fields to include for returned resources of type subscriptionAppStoreReviewScreenshots
        case subscriptionAppStoreReviewScreenshots([SubscriptionAppStoreReviewScreenshots])
        /// The fields to include for returned resources of type subscriptionAvailabilities
        case subscriptionAvailabilities([SubscriptionAvailabilities])
        /// The fields to include for returned resources of type subscriptionIntroductoryOffers
        case subscriptionIntroductoryOffers([SubscriptionIntroductoryOffers])
        /// The fields to include for returned resources of type subscriptionLocalizations
        case subscriptionLocalizations([SubscriptionLocalizations])
        /// The fields to include for returned resources of type subscriptionOfferCodes
        case subscriptionOfferCodes([SubscriptionOfferCodes])
        /// The fields to include for returned resources of type subscriptionPricePoints
        case subscriptionPricePoints([SubscriptionPricePoints])
        /// The fields to include for returned resources of type subscriptionPrices
        case subscriptionPrices([SubscriptionPrices])
        /// The fields to include for returned resources of type subscriptionPromotionalOffers
        case subscriptionPromotionalOffers([SubscriptionPromotionalOffers])
        /// The fields to include for returned resources of type subscriptions
        case subscriptions([Subscriptions])

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

        public enum SubscriptionAppStoreReviewScreenshots: String, ParameterValue, CodableEnum, CaseIterable {
            case assetDeliveryState
            case assetToken
            case assetType
            case fileName
            case fileSize
            case imageAsset
            case sourceFileChecksum
            case subscription
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
                    .sourceFileChecksum,
                    .subscription,
                    .uploadOperations,
                    .uploaded,
                ]
            }
        }

        public enum SubscriptionAvailabilities: String, ParameterValue, CodableEnum, CaseIterable {
            case availableInNewTerritories
            case availableTerritories
            case subscription

            var allCases: [Self] {
                [
                    .availableInNewTerritories,
                    .availableTerritories,
                    .subscription,
                ]
            }
        }

        public enum SubscriptionIntroductoryOffers: String, ParameterValue, CodableEnum, CaseIterable {
            case duration
            case endDate
            case numberOfPeriods
            case offerMode
            case startDate
            case subscription
            case subscriptionPricePoint
            case territory

            var allCases: [Self] {
                [
                    .duration,
                    .endDate,
                    .numberOfPeriods,
                    .offerMode,
                    .startDate,
                    .subscription,
                    .subscriptionPricePoint,
                    .territory,
                ]
            }
        }

        public enum SubscriptionLocalizations: String, ParameterValue, CodableEnum, CaseIterable {
            case description
            case locale
            case name
            case state
            case subscription

            var allCases: [Self] {
                [
                    .description,
                    .locale,
                    .name,
                    .state,
                    .subscription,
                ]
            }
        }

        public enum SubscriptionOfferCodes: String, ParameterValue, CodableEnum, CaseIterable {
            case active
            case customCodes
            case customerEligibilities
            case duration
            case name
            case numberOfPeriods
            case offerEligibility
            case offerMode
            case oneTimeUseCodes
            case prices
            case subscription
            case totalNumberOfCodes

            var allCases: [Self] {
                [
                    .active,
                    .customCodes,
                    .customerEligibilities,
                    .duration,
                    .name,
                    .numberOfPeriods,
                    .offerEligibility,
                    .offerMode,
                    .oneTimeUseCodes,
                    .prices,
                    .subscription,
                    .totalNumberOfCodes,
                ]
            }
        }

        public enum SubscriptionPricePoints: String, ParameterValue, CodableEnum, CaseIterable {
            case customerPrice
            case equalizations
            case proceeds
            case proceedsYear2
            case subscription
            case territory

            var allCases: [Self] {
                [
                    .customerPrice,
                    .equalizations,
                    .proceeds,
                    .proceedsYear2,
                    .subscription,
                    .territory,
                ]
            }
        }

        public enum SubscriptionPrices: String, ParameterValue, CodableEnum, CaseIterable {
            case preserveCurrentPrice
            case preserved
            case startDate
            case subscription
            case subscriptionPricePoint
            case territory

            var allCases: [Self] {
                [
                    .preserveCurrentPrice,
                    .preserved,
                    .startDate,
                    .subscription,
                    .subscriptionPricePoint,
                    .territory,
                ]
            }
        }

        public enum SubscriptionPromotionalOffers: String, ParameterValue, CodableEnum, CaseIterable {
            case duration
            case name
            case numberOfPeriods
            case offerCode
            case offerMode
            case prices
            case subscription

            var allCases: [Self] {
                [
                    .duration,
                    .name,
                    .numberOfPeriods,
                    .offerCode,
                    .offerMode,
                    .prices,
                    .subscription,
                ]
            }
        }

        public enum Subscriptions: String, ParameterValue, CodableEnum, CaseIterable {
            case appStoreReviewScreenshot
            case availableInAllTerritories
            case familySharable
            case group
            case groupLevel
            case introductoryOffers
            case name
            case offerCodes
            case pricePoints
            case prices
            case productId
            case promotedPurchase
            case promotionalOffers
            case reviewNote
            case state
            case subscriptionAvailability
            case subscriptionLocalizations
            case subscriptionPeriod

            var allCases: [Self] {
                [
                    .appStoreReviewScreenshot,
                    .availableInAllTerritories,
                    .familySharable,
                    .group,
                    .groupLevel,
                    .introductoryOffers,
                    .name,
                    .offerCodes,
                    .pricePoints,
                    .prices,
                    .productId,
                    .promotedPurchase,
                    .promotionalOffers,
                    .reviewNote,
                    .state,
                    .subscriptionAvailability,
                    .subscriptionLocalizations,
                    .subscriptionPeriod,
                ]
            }
        }
    }

    /**
     Relationship data to include in the response.
     */
    public enum Include: String, IncludeParameter, CaseIterable {
        case appStoreReviewScreenshot
        case group
        case introductoryOffers
        case offerCodes
        case prices
        case promotedPurchase
        case promotionalOffers
        case subscriptionAvailability
        case subscriptionLocalizations
    }

    /**
     Number of included related resources to return.
     */
    public enum Limit: LimitParameter {
        /// Maximum number of related introductoryOffers returned (when they are included) - maximum 50
        case introductoryOffers(Int)
        /// Maximum number of related offerCodes returned (when they are included) - maximum 50
        case offerCodes(Int)
        /// Maximum number of related prices returned (when they are included) - maximum 50
        case prices(Int)
        /// Maximum number of related promotionalOffers returned (when they are included) - maximum 50
        case promotionalOffers(Int)
        /// Maximum number of related subscriptionLocalizations returned (when they are included) - maximum 50
        case subscriptionLocalizations(Int)
    }
}
