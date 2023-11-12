import Bagbutik_Core
import Bagbutik_Models

public extension Request {
    /**
     # List All App Infos for an App
     Get information about an app that is currently live on App Store, or that goes live with the next version.

     Use this endpoint to retrieve the derived app-level information for an app. If the app has both a “Ready for Sale” version and a version you’re preparing for release, it will have two app infos. One represents information about the app currently in the App Store, and the other represents the information that takes effect when you release the next version. Use the `appStoreState` attribute to differentiate them.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/list_all_app_infos_for_an_app>

     - Parameter id: The id of the requested resource
     - Parameter fields: Fields to return for included related types
     - Parameter includes: Relationship data to include in the response
     - Parameter limits: Number of resources to return
     - Returns: A ``Request`` to send to an instance of ``BagbutikService``
     */
    static func listAppInfosForAppV1(id: String,
                                     fields: [ListAppInfosForAppV1.Field]? = nil,
                                     includes: [ListAppInfosForAppV1.Include]? = nil,
                                     limits: [ListAppInfosForAppV1.Limit]? = nil) -> Request<AppInfosResponse, ErrorResponse>
    {
        .init(path: "/v1/apps/\(id)/appInfos", method: .get, parameters: .init(fields: fields,
                                                                               includes: includes,
                                                                               limits: limits))
    }
}

public enum ListAppInfosForAppV1 {
    /**
     Fields to return for included related types.
     */
    public enum Field: FieldParameter {
        /// The fields to include for returned resources of type ageRatingDeclarations
        case ageRatingDeclarations([AgeRatingDeclarations])
        /// The fields to include for returned resources of type appCategories
        case appCategories([AppCategories])
        /// The fields to include for returned resources of type appInfoLocalizations
        case appInfoLocalizations([AppInfoLocalizations])
        /// The fields to include for returned resources of type appInfos
        case appInfos([AppInfos])
        /// The fields to include for returned resources of type apps
        case apps([Apps])

        public enum AgeRatingDeclarations: String, ParameterValue, CodableEnum, CaseIterable {
            case alcoholTobaccoOrDrugUseOrReferences
            case contests
            case gambling
            case gamblingAndContests
            case gamblingSimulated
            case horrorOrFearThemes
            case kidsAgeBand
            case matureOrSuggestiveThemes
            case medicalOrTreatmentInformation
            case profanityOrCrudeHumor
            case seventeenPlus
            case sexualContentGraphicAndNudity
            case sexualContentOrNudity
            case unrestrictedWebAccess
            case violenceCartoonOrFantasy
            case violenceRealistic
            case violenceRealisticProlongedGraphicOrSadistic

            var allCases: [Self] {
                [
                    .alcoholTobaccoOrDrugUseOrReferences,
                    .contests,
                    .gambling,
                    .gamblingAndContests,
                    .gamblingSimulated,
                    .horrorOrFearThemes,
                    .kidsAgeBand,
                    .matureOrSuggestiveThemes,
                    .medicalOrTreatmentInformation,
                    .profanityOrCrudeHumor,
                    .seventeenPlus,
                    .sexualContentGraphicAndNudity,
                    .sexualContentOrNudity,
                    .unrestrictedWebAccess,
                    .violenceCartoonOrFantasy,
                    .violenceRealistic,
                    .violenceRealisticProlongedGraphicOrSadistic,
                ]
            }
        }

        public enum AppCategories: String, ParameterValue, CodableEnum, CaseIterable {
            case parent
            case platforms
            case subcategories

            var allCases: [Self] {
                [
                    .parent,
                    .platforms,
                    .subcategories,
                ]
            }
        }

        public enum AppInfoLocalizations: String, ParameterValue, CodableEnum, CaseIterable {
            case appInfo
            case locale
            case name
            case privacyChoicesUrl
            case privacyPolicyText
            case privacyPolicyUrl
            case subtitle

            var allCases: [Self] {
                [
                    .appInfo,
                    .locale,
                    .name,
                    .privacyChoicesUrl,
                    .privacyPolicyText,
                    .privacyPolicyUrl,
                    .subtitle,
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
    }

    /**
     Relationship data to include in the response.
     */
    public enum Include: String, IncludeParameter, CaseIterable {
        case ageRatingDeclaration
        case app
        case appInfoLocalizations
        case primaryCategory
        case primarySubcategoryOne
        case primarySubcategoryTwo
        case secondaryCategory
        case secondarySubcategoryOne
        case secondarySubcategoryTwo
    }

    /**
     Number of included related resources to return.
     */
    public enum Limit: LimitParameter {
        /// Maximum number of related appInfoLocalizations returned (when they are included) - maximum 50
        case appInfoLocalizations(Int)
        /// Maximum resources per page - maximum 200
        case limit(Int)
    }
}
