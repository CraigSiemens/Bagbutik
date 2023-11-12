import Bagbutik_Core
import Bagbutik_Models

public extension Request {
    /**
     # Read App Information
     Get information about a specific app.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/read_app_information>

     - Parameter id: The id of the requested resource
     - Parameter fields: Fields to return for included related types
     - Parameter includes: Relationship data to include in the response
     - Parameter limits: Number of resources to return
     - Returns: A ``Request`` to send to an instance of ``BagbutikService``
     */
    static func getAppV1(id: String,
                         fields: [GetAppV1.Field]? = nil,
                         includes: [GetAppV1.Include]? = nil,
                         limits: [GetAppV1.Limit]? = nil) -> Request<AppResponse, ErrorResponse>
    {
        .init(path: "/v1/apps/\(id)", method: .get, parameters: .init(fields: fields,
                                                                      includes: includes,
                                                                      limits: limits))
    }
}

public enum GetAppV1 {
    /**
     Fields to return for included related types.
     */
    public enum Field: FieldParameter {
        /// The fields to include for returned resources of type appAvailabilities
        @available(*, deprecated, message: "Apple has marked it as deprecated and it will be removed sometime in the future.")
        case appAvailabilities([AppAvailabilities])
        /// The fields to include for returned resources of type appClips
        case appClips([AppClips])
        /// The fields to include for returned resources of type appCustomProductPages
        case appCustomProductPages([AppCustomProductPages])
        /// The fields to include for returned resources of type appEncryptionDeclarations
        case appEncryptionDeclarations([AppEncryptionDeclarations])
        /// The fields to include for returned resources of type appEvents
        case appEvents([AppEvents])
        /// The fields to include for returned resources of type appInfos
        case appInfos([AppInfos])
        /// The fields to include for returned resources of type appPreOrders
        @available(*, deprecated, message: "Apple has marked it as deprecated and it will be removed sometime in the future.")
        case appPreOrders([AppPreOrders])
        /// The fields to include for returned resources of type appPricePoints
        case appPricePoints([AppPricePoints])
        /// The fields to include for returned resources of type appPriceSchedules
        case appPriceSchedules([AppPriceSchedules])
        /// The fields to include for returned resources of type appPrices
        @available(*, deprecated, message: "Apple has marked it as deprecated and it will be removed sometime in the future.")
        case appPrices([AppPrices])
        /// The fields to include for returned resources of type appStoreVersionExperiments
        case appStoreVersionExperiments([AppStoreVersionExperiments])
        /// The fields to include for returned resources of type appStoreVersions
        case appStoreVersions([AppStoreVersions])
        /// The fields to include for returned resources of type apps
        case apps([Apps])
        /// The fields to include for returned resources of type betaAppLocalizations
        case betaAppLocalizations([BetaAppLocalizations])
        /// The fields to include for returned resources of type betaAppReviewDetails
        case betaAppReviewDetails([BetaAppReviewDetails])
        /// The fields to include for returned resources of type betaGroups
        case betaGroups([BetaGroups])
        /// The fields to include for returned resources of type betaLicenseAgreements
        case betaLicenseAgreements([BetaLicenseAgreements])
        /// The fields to include for returned resources of type builds
        case builds([Builds])
        /// The fields to include for returned resources of type ciProducts
        case ciProducts([CiProducts])
        /// The fields to include for returned resources of type customerReviews
        case customerReviews([CustomerReviews])
        /// The fields to include for returned resources of type endUserLicenseAgreements
        case endUserLicenseAgreements([EndUserLicenseAgreements])
        /// The fields to include for returned resources of type gameCenterDetails
        case gameCenterDetails([GameCenterDetails])
        /// The fields to include for returned resources of type gameCenterEnabledVersions
        @available(*, deprecated, message: "Apple has marked it as deprecated and it will be removed sometime in the future.")
        case gameCenterEnabledVersions([GameCenterEnabledVersions])
        /// The fields to include for returned resources of type inAppPurchases
        case inAppPurchases([InAppPurchases])
        /// The fields to include for returned resources of type perfPowerMetrics
        case perfPowerMetrics([PerfPowerMetrics])
        /// The fields to include for returned resources of type preReleaseVersions
        case preReleaseVersions([PreReleaseVersions])
        /// The fields to include for returned resources of type promotedPurchases
        case promotedPurchases([PromotedPurchases])
        /// The fields to include for returned resources of type reviewSubmissions
        case reviewSubmissions([ReviewSubmissions])
        /// The fields to include for returned resources of type subscriptionGracePeriods
        case subscriptionGracePeriods([SubscriptionGracePeriods])
        /// The fields to include for returned resources of type subscriptionGroups
        case subscriptionGroups([SubscriptionGroups])
        /// The fields to include for returned resources of type territories
        @available(*, deprecated, message: "Apple has marked it as deprecated and it will be removed sometime in the future.")
        case territories([Territories])

        public enum AppAvailabilities: String, ParameterValue, CodableEnum, CaseIterable {
            case app
            case availableInNewTerritories
            case availableTerritories

            var allCases: [Self] {
                [
                    .app,
                    .availableInNewTerritories,
                    .availableTerritories,
                ]
            }
        }

        public enum AppClips: String, ParameterValue, CodableEnum, CaseIterable {
            case app
            case appClipAdvancedExperiences
            case appClipDefaultExperiences
            case bundleId

            var allCases: [Self] {
                [
                    .app,
                    .appClipAdvancedExperiences,
                    .appClipDefaultExperiences,
                    .bundleId,
                ]
            }
        }

        public enum AppCustomProductPages: String, ParameterValue, CodableEnum, CaseIterable {
            case app
            case appCustomProductPageVersions
            case appStoreVersionTemplate
            case customProductPageTemplate
            case name
            case url
            case visible

            var allCases: [Self] {
                [
                    .app,
                    .appCustomProductPageVersions,
                    .appStoreVersionTemplate,
                    .customProductPageTemplate,
                    .name,
                    .url,
                    .visible,
                ]
            }
        }

        public enum AppEncryptionDeclarations: String, ParameterValue, CodableEnum, CaseIterable {
            case app
            case appDescription
            case appEncryptionDeclarationDocument
            case appEncryptionDeclarationState
            case availableOnFrenchStore
            case builds
            case codeValue
            case containsProprietaryCryptography
            case containsThirdPartyCryptography
            case createdDate
            case documentName
            case documentType
            case documentUrl
            case exempt
            case platform
            case uploadedDate
            case usesEncryption

            var allCases: [Self] {
                [
                    .app,
                    .appDescription,
                    .appEncryptionDeclarationDocument,
                    .appEncryptionDeclarationState,
                    .availableOnFrenchStore,
                    .builds,
                    .codeValue,
                    .containsProprietaryCryptography,
                    .containsThirdPartyCryptography,
                    .createdDate,
                    .documentName,
                    .documentType,
                    .documentUrl,
                    .exempt,
                    .platform,
                    .uploadedDate,
                    .usesEncryption,
                ]
            }
        }

        public enum AppEvents: String, ParameterValue, CodableEnum, CaseIterable {
            case app
            case archivedTerritorySchedules
            case badge
            case deepLink
            case eventState
            case localizations
            case primaryLocale
            case priority
            case purchaseRequirement
            case purpose
            case referenceName
            case territorySchedules

            var allCases: [Self] {
                [
                    .app,
                    .archivedTerritorySchedules,
                    .badge,
                    .deepLink,
                    .eventState,
                    .localizations,
                    .primaryLocale,
                    .priority,
                    .purchaseRequirement,
                    .purpose,
                    .referenceName,
                    .territorySchedules,
                ]
            }
        }

        public enum AppInfos: String, ParameterValue, CodableEnum, CaseIterable {
            case ageRatingDeclaration
            case app
            case appInfoLocalizations
            case appStoreAgeRating
            case appStoreState
            case brazilAgeRating
            case brazilAgeRatingV2
            case kidsAgeBand
            case primaryCategory
            case primarySubcategoryOne
            case primarySubcategoryTwo
            case secondaryCategory
            case secondarySubcategoryOne
            case secondarySubcategoryTwo

            var allCases: [Self] {
                [
                    .ageRatingDeclaration,
                    .app,
                    .appInfoLocalizations,
                    .appStoreAgeRating,
                    .appStoreState,
                    .brazilAgeRating,
                    .brazilAgeRatingV2,
                    .kidsAgeBand,
                    .primaryCategory,
                    .primarySubcategoryOne,
                    .primarySubcategoryTwo,
                    .secondaryCategory,
                    .secondarySubcategoryOne,
                    .secondarySubcategoryTwo,
                ]
            }
        }

        public enum AppPreOrders: String, ParameterValue, CodableEnum, CaseIterable {
            case app
            case appReleaseDate
            case preOrderAvailableDate

            var allCases: [Self] {
                [
                    .app,
                    .appReleaseDate,
                    .preOrderAvailableDate,
                ]
            }
        }

        public enum AppPricePoints: String, ParameterValue, CodableEnum, CaseIterable {
            case app
            case customerPrice
            case equalizations
            case priceTier
            case proceeds
            case territory

            var allCases: [Self] {
                [
                    .app,
                    .customerPrice,
                    .equalizations,
                    .priceTier,
                    .proceeds,
                    .territory,
                ]
            }
        }

        public enum AppPriceSchedules: String, ParameterValue, CodableEnum, CaseIterable {
            case app
            case automaticPrices
            case baseTerritory
            case manualPrices

            var allCases: [Self] {
                [
                    .app,
                    .automaticPrices,
                    .baseTerritory,
                    .manualPrices,
                ]
            }
        }

        public enum AppPrices: String, ParameterValue, CodableEnum, CaseIterable {
            case app
            case priceTier

            var allCases: [Self] {
                [
                    .app,
                    .priceTier,
                ]
            }
        }

        public enum AppStoreVersionExperiments: String, ParameterValue, CodableEnum, CaseIterable {
            case app
            case appStoreVersionExperimentTreatments
            case controlVersions
            case endDate
            case latestControlVersion
            case name
            case platform
            case reviewRequired
            case startDate
            case started
            case state
            case trafficProportion

            var allCases: [Self] {
                [
                    .app,
                    .appStoreVersionExperimentTreatments,
                    .controlVersions,
                    .endDate,
                    .latestControlVersion,
                    .name,
                    .platform,
                    .reviewRequired,
                    .startDate,
                    .started,
                    .state,
                    .trafficProportion,
                ]
            }
        }

        public enum AppStoreVersions: String, ParameterValue, CodableEnum, CaseIterable {
            case ageRatingDeclaration
            case app
            case appClipDefaultExperience
            case appStoreReviewDetail
            case appStoreState
            case appStoreVersionExperiments
            case appStoreVersionExperimentsV2
            case appStoreVersionLocalizations
            case appStoreVersionPhasedRelease
            case appStoreVersionSubmission
            case build
            case copyright
            case createdDate
            case customerReviews
            case downloadable
            case earliestReleaseDate
            case platform
            case releaseType
            case routingAppCoverage
            case versionString

            var allCases: [Self] {
                [
                    .ageRatingDeclaration,
                    .app,
                    .appClipDefaultExperience,
                    .appStoreReviewDetail,
                    .appStoreState,
                    .appStoreVersionExperiments,
                    .appStoreVersionExperimentsV2,
                    .appStoreVersionLocalizations,
                    .appStoreVersionPhasedRelease,
                    .appStoreVersionSubmission,
                    .build,
                    .copyright,
                    .createdDate,
                    .customerReviews,
                    .downloadable,
                    .earliestReleaseDate,
                    .platform,
                    .releaseType,
                    .routingAppCoverage,
                    .versionString,
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

        public enum BetaAppLocalizations: String, ParameterValue, CodableEnum, CaseIterable {
            case app
            case description
            case feedbackEmail
            case locale
            case marketingUrl
            case privacyPolicyUrl
            case tvOsPrivacyPolicy

            var allCases: [Self] {
                [
                    .app,
                    .description,
                    .feedbackEmail,
                    .locale,
                    .marketingUrl,
                    .privacyPolicyUrl,
                    .tvOsPrivacyPolicy,
                ]
            }
        }

        public enum BetaAppReviewDetails: String, ParameterValue, CodableEnum, CaseIterable {
            case app
            case contactEmail
            case contactFirstName
            case contactLastName
            case contactPhone
            case demoAccountName
            case demoAccountPassword
            case demoAccountRequired
            case notes

            var allCases: [Self] {
                [
                    .app,
                    .contactEmail,
                    .contactFirstName,
                    .contactLastName,
                    .contactPhone,
                    .demoAccountName,
                    .demoAccountPassword,
                    .demoAccountRequired,
                    .notes,
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

        public enum BetaLicenseAgreements: String, ParameterValue, CodableEnum, CaseIterable {
            case agreementText
            case app

            var allCases: [Self] {
                [
                    .agreementText,
                    .app,
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

        public enum CustomerReviews: String, ParameterValue, CodableEnum, CaseIterable {
            case body
            case createdDate
            case rating
            case response
            case reviewerNickname
            case territory
            case title

            var allCases: [Self] {
                [
                    .body,
                    .createdDate,
                    .rating,
                    .response,
                    .reviewerNickname,
                    .territory,
                    .title,
                ]
            }
        }

        public enum EndUserLicenseAgreements: String, ParameterValue, CodableEnum, CaseIterable {
            case agreementText
            case app
            case territories

            var allCases: [Self] {
                [
                    .agreementText,
                    .app,
                    .territories,
                ]
            }
        }

        public enum GameCenterDetails: String, ParameterValue, CodableEnum, CaseIterable {
            case achievementReleases
            case app
            case arcadeEnabled
            case challengeEnabled
            case defaultGroupLeaderboard
            case defaultLeaderboard
            case gameCenterAchievements
            case gameCenterAppVersions
            case gameCenterGroup
            case gameCenterLeaderboardSets
            case gameCenterLeaderboards
            case leaderboardReleases
            case leaderboardSetReleases

            var allCases: [Self] {
                [
                    .achievementReleases,
                    .app,
                    .arcadeEnabled,
                    .challengeEnabled,
                    .defaultGroupLeaderboard,
                    .defaultLeaderboard,
                    .gameCenterAchievements,
                    .gameCenterAppVersions,
                    .gameCenterGroup,
                    .gameCenterLeaderboardSets,
                    .gameCenterLeaderboards,
                    .leaderboardReleases,
                    .leaderboardSetReleases,
                ]
            }
        }

        public enum GameCenterEnabledVersions: String, ParameterValue, CodableEnum, CaseIterable {
            case app
            case compatibleVersions
            case iconAsset
            case platform
            case versionString

            var allCases: [Self] {
                [
                    .app,
                    .compatibleVersions,
                    .iconAsset,
                    .platform,
                    .versionString,
                ]
            }
        }

        public enum InAppPurchases: String, ParameterValue, CodableEnum, CaseIterable {
            case app
            case appStoreReviewScreenshot
            case apps
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
            case referenceName
            case reviewNote
            case state

            var allCases: [Self] {
                [
                    .app,
                    .appStoreReviewScreenshot,
                    .apps,
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
                    .referenceName,
                    .reviewNote,
                    .state,
                ]
            }
        }

        public enum PerfPowerMetrics: String, ParameterValue, CodableEnum, CaseIterable {
            case deviceType
            case metricType
            case platform

            var allCases: [Self] {
                [
                    .deviceType,
                    .metricType,
                    .platform,
                ]
            }
        }

        public enum PreReleaseVersions: String, ParameterValue, CodableEnum, CaseIterable {
            case app
            case builds
            case platform
            case version

            var allCases: [Self] {
                [
                    .app,
                    .builds,
                    .platform,
                    .version,
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

        public enum ReviewSubmissions: String, ParameterValue, CodableEnum, CaseIterable {
            case app
            case appStoreVersionForReview
            case canceled
            case items
            case lastUpdatedByActor
            case platform
            case state
            case submitted
            case submittedByActor
            case submittedDate

            var allCases: [Self] {
                [
                    .app,
                    .appStoreVersionForReview,
                    .canceled,
                    .items,
                    .lastUpdatedByActor,
                    .platform,
                    .state,
                    .submitted,
                    .submittedByActor,
                    .submittedDate,
                ]
            }
        }

        public enum SubscriptionGracePeriods: String, ParameterValue, CodableEnum, CaseIterable {
            case duration
            case optIn
            case renewalType
            case sandboxOptIn

            var allCases: [Self] {
                [
                    .duration,
                    .optIn,
                    .renewalType,
                    .sandboxOptIn,
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
     Relationship data to include in the response.
     */
    public enum Include: String, IncludeParameter, CaseIterable {
        case appClips
        case appCustomProductPages
        case appEncryptionDeclarations
        case appEvents
        case appInfos
        case appStoreVersionExperimentsV2
        case appStoreVersions
        case availableTerritories
        case betaAppLocalizations
        case betaAppReviewDetail
        case betaGroups
        case betaLicenseAgreement
        case builds
        case ciProduct
        case endUserLicenseAgreement
        case gameCenterDetail
        case gameCenterEnabledVersions
        case inAppPurchases
        case inAppPurchasesV2
        case preOrder
        case preReleaseVersions
        case prices
        case promotedPurchases
        case reviewSubmissions
        case subscriptionGracePeriod
        case subscriptionGroups
    }

    /**
     Number of included related resources to return.
     */
    public enum Limit: LimitParameter {
        /// Maximum number of related appClips returned (when they are included) - maximum 50
        case appClips(Int)
        /// Maximum number of related appCustomProductPages returned (when they are included) - maximum 50
        case appCustomProductPages(Int)
        /// Maximum number of related appEncryptionDeclarations returned (when they are included) - maximum 50
        case appEncryptionDeclarations(Int)
        /// Maximum number of related appEvents returned (when they are included) - maximum 50
        case appEvents(Int)
        /// Maximum number of related appInfos returned (when they are included) - maximum 50
        case appInfos(Int)
        /// Maximum number of related appStoreVersionExperimentsV2 returned (when they are included) - maximum 50
        case appStoreVersionExperimentsV2(Int)
        /// Maximum number of related appStoreVersions returned (when they are included) - maximum 50
        case appStoreVersions(Int)
        /// Maximum number of related availableTerritories returned (when they are included) - maximum 50
        case availableTerritories(Int)
        /// Maximum number of related betaAppLocalizations returned (when they are included) - maximum 50
        case betaAppLocalizations(Int)
        /// Maximum number of related betaGroups returned (when they are included) - maximum 50
        case betaGroups(Int)
        /// Maximum number of related builds returned (when they are included) - maximum 50
        case builds(Int)
        /// Maximum number of related gameCenterEnabledVersions returned (when they are included) - maximum 50
        case gameCenterEnabledVersions(Int)
        /// Maximum number of related inAppPurchases returned (when they are included) - maximum 50
        case inAppPurchases(Int)
        /// Maximum number of related inAppPurchasesV2 returned (when they are included) - maximum 50
        case inAppPurchasesV2(Int)
        /// Maximum number of related preReleaseVersions returned (when they are included) - maximum 50
        case preReleaseVersions(Int)
        /// Maximum number of related prices returned (when they are included) - maximum 50
        case prices(Int)
        /// Maximum number of related promotedPurchases returned (when they are included) - maximum 50
        case promotedPurchases(Int)
        /// Maximum number of related reviewSubmissions returned (when they are included) - maximum 50
        case reviewSubmissions(Int)
        /// Maximum number of related subscriptionGroups returned (when they are included) - maximum 50
        case subscriptionGroups(Int)
    }
}
