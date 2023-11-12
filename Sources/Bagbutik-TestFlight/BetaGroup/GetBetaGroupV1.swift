import Bagbutik_Core
import Bagbutik_Models

public extension Request {
    /**
     # Read Beta Group Information
     Get a specific beta group.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/read_beta_group_information>

     - Parameter id: The id of the requested resource
     - Parameter fields: Fields to return for included related types
     - Parameter includes: Relationship data to include in the response
     - Parameter limits: Number of resources to return
     - Returns: A ``Request`` to send to an instance of ``BagbutikService``
     */
    static func getBetaGroupV1(id: String,
                               fields: [GetBetaGroupV1.Field]? = nil,
                               includes: [GetBetaGroupV1.Include]? = nil,
                               limits: [GetBetaGroupV1.Limit]? = nil) -> Request<BetaGroupResponse, ErrorResponse>
    {
        .init(path: "/v1/betaGroups/\(id)", method: .get, parameters: .init(fields: fields,
                                                                            includes: includes,
                                                                            limits: limits))
    }
}

public enum GetBetaGroupV1 {
    /**
     Fields to return for included related types.
     */
    public enum Field: FieldParameter {
        /// The fields to include for returned resources of type apps
        case apps([Apps])
        /// The fields to include for returned resources of type betaGroups
        case betaGroups([BetaGroups])
        /// The fields to include for returned resources of type betaTesters
        case betaTesters([BetaTesters])
        /// The fields to include for returned resources of type builds
        case builds([Builds])

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

        public enum BetaTesters: String, ParameterValue, CodableEnum, CaseIterable {
            case apps
            case betaGroups
            case builds
            case email
            case firstName
            case inviteType
            case lastName

            var allCases: [Self] {
                [
                    .apps,
                    .betaGroups,
                    .builds,
                    .email,
                    .firstName,
                    .inviteType,
                    .lastName,
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
    }

    /**
     Relationship data to include in the response.
     */
    public enum Include: String, IncludeParameter, CaseIterable {
        case app
        case betaTesters
        case builds
    }

    /**
     Number of included related resources to return.
     */
    public enum Limit: LimitParameter {
        /// Maximum number of related betaTesters returned (when they are included) - maximum 50
        case betaTesters(Int)
        /// Maximum number of related builds returned (when they are included) - maximum 1000
        case builds(Int)
    }
}
