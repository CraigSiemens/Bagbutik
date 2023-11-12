import Bagbutik_Core
import Bagbutik_Models

public extension Request {
    /**
     # List All Subscriptions for a Subscription Group
     Get a list of all auto-renewable subscriptions in a subscription group.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/list_all_subscriptions_for_a_subscription_group>

     - Parameter id: The id of the requested resource
     - Parameter fields: Fields to return for included related types
     - Parameter filters: Attributes, relationships, and IDs by which to filter
     - Parameter includes: Relationship data to include in the response
     - Parameter sorts: Attributes by which to sort
     - Parameter limits: Number of resources to return
     - Returns: A ``Request`` to send to an instance of ``BagbutikService``
     */
    static func listSubscriptionsForSubscriptionGroupV1(id: String,
                                                        fields: [ListSubscriptionsForSubscriptionGroupV1.Field]? = nil,
                                                        filters: [ListSubscriptionsForSubscriptionGroupV1.Filter]? = nil,
                                                        includes: [ListSubscriptionsForSubscriptionGroupV1.Include]? = nil,
                                                        sorts: [ListSubscriptionsForSubscriptionGroupV1.Sort]? = nil,
                                                        limits: [ListSubscriptionsForSubscriptionGroupV1.Limit]? = nil) -> Request<SubscriptionsResponse, ErrorResponse>
    {
        .init(path: "/v1/subscriptionGroups/\(id)/subscriptions", method: .get, parameters: .init(fields: fields,
                                                                                                  filters: filters,
                                                                                                  includes: includes,
                                                                                                  sorts: sorts,
                                                                                                  limits: limits))
    }
}

public enum ListSubscriptionsForSubscriptionGroupV1 {
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
        /// The fields to include for returned resources of type subscriptionGroups
        case subscriptionGroups([SubscriptionGroups])
        /// The fields to include for returned resources of type subscriptionIntroductoryOffers
        case subscriptionIntroductoryOffers([SubscriptionIntroductoryOffers])
        /// The fields to include for returned resources of type subscriptionLocalizations
        case subscriptionLocalizations([SubscriptionLocalizations])
        /// The fields to include for returned resources of type subscriptionOfferCodes
        case subscriptionOfferCodes([SubscriptionOfferCodes])
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

        public enum SubscriptionGroups: String, ParameterValue, CodableEnum, CaseIterable {
            case app
            case referenceName
            case subscriptionGroupLocalizations
            case subscriptions

            var allCases: [Self] {
                [
                    .app,
                    .referenceName,
                    .subscriptionGroupLocalizations,
                    .subscriptions,
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
     Attributes, relationships, and IDs by which to filter.
     */
    public enum Filter: FilterParameter {
        /// Filter by attribute 'name'
        case name([String])
        /// Filter by attribute 'productId'
        case productId([String])
        /// Filter by attribute 'state'
        case state([State])

        public enum State: String, ParameterValue, CodableEnum, CaseIterable {
            case missingMetadata = "MISSING_METADATA"
            case readyToSubmit = "READY_TO_SUBMIT"
            case waitingForReview = "WAITING_FOR_REVIEW"
            case inReview = "IN_REVIEW"
            case developerActionNeeded = "DEVELOPER_ACTION_NEEDED"
            case pendingBinaryApproval = "PENDING_BINARY_APPROVAL"
            case approved = "APPROVED"
            case developerRemovedFromSale = "DEVELOPER_REMOVED_FROM_SALE"
            case removedFromSale = "REMOVED_FROM_SALE"
            case rejected = "REJECTED"

            var allCases: [Self] {
                [
                    .missingMetadata,
                    .readyToSubmit,
                    .waitingForReview,
                    .inReview,
                    .developerActionNeeded,
                    .pendingBinaryApproval,
                    .approved,
                    .developerRemovedFromSale,
                    .removedFromSale,
                    .rejected,
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
     Attributes by which to sort.
     */
    public enum Sort: String, SortParameter, CaseIterable {
        case nameAscending = "name"
        case nameDescending = "-name"
    }

    /**
     Number of included related resources to return.
     */
    public enum Limit: LimitParameter {
        /// Maximum number of related introductoryOffers returned (when they are included) - maximum 50
        case introductoryOffers(Int)
        /// Maximum resources per page - maximum 200
        case limit(Int)
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
