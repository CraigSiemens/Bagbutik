import Bagbutik_Core
import Bagbutik_Models

public extension Request {
    /**
     # List All Builds Xcode Cloud Created in App Store Connect
     List All App Store Connect and TestFlight Builds when it performed a build.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/list_all_builds_xcode_cloud_created_in_app_store_connect>

     - Parameter id: The id of the requested resource
     - Parameter fields: Fields to return for included related types
     - Parameter filters: Attributes, relationships, and IDs by which to filter
     - Parameter includes: Relationship data to include in the response
     - Parameter sorts: Attributes by which to sort
     - Parameter limits: Number of resources to return
     - Returns: A ``Request`` to send to an instance of ``BagbutikService``
     */
    static func listBuildsForCiBuildRunV1(id: String,
                                          fields: [ListBuildsForCiBuildRunV1.Field]? = nil,
                                          filters: [ListBuildsForCiBuildRunV1.Filter]? = nil,
                                          includes: [ListBuildsForCiBuildRunV1.Include]? = nil,
                                          sorts: [ListBuildsForCiBuildRunV1.Sort]? = nil,
                                          limits: [ListBuildsForCiBuildRunV1.Limit]? = nil) -> Request<BuildsResponse, ErrorResponse>
    {
        .init(path: "/v1/ciBuildRuns/\(id)/builds", method: .get, parameters: .init(fields: fields,
                                                                                    filters: filters,
                                                                                    includes: includes,
                                                                                    sorts: sorts,
                                                                                    limits: limits))
    }
}

public enum ListBuildsForCiBuildRunV1 {
    /**
     Fields to return for included related types.
     */
    public enum Field: FieldParameter {
        /// The fields to include for returned resources of type appEncryptionDeclarations
        case appEncryptionDeclarations([AppEncryptionDeclarations])
        /// The fields to include for returned resources of type appStoreVersions
        case appStoreVersions([AppStoreVersions])
        /// The fields to include for returned resources of type apps
        case apps([Apps])
        /// The fields to include for returned resources of type betaAppReviewSubmissions
        case betaAppReviewSubmissions([BetaAppReviewSubmissions])
        /// The fields to include for returned resources of type betaBuildLocalizations
        case betaBuildLocalizations([BetaBuildLocalizations])
        /// The fields to include for returned resources of type betaGroups
        case betaGroups([BetaGroups])
        /// The fields to include for returned resources of type betaTesters
        case betaTesters([BetaTesters])
        /// The fields to include for returned resources of type buildBetaDetails
        case buildBetaDetails([BuildBetaDetails])
        /// The fields to include for returned resources of type buildBundles
        case buildBundles([BuildBundles])
        /// The fields to include for returned resources of type buildIcons
        case buildIcons([BuildIcons])
        /// The fields to include for returned resources of type builds
        case builds([Builds])
        /// The fields to include for returned resources of type preReleaseVersions
        case preReleaseVersions([PreReleaseVersions])

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

        public enum BetaAppReviewSubmissions: String, ParameterValue, CodableEnum, CaseIterable {
            case betaReviewState
            case build
            case submittedDate

            var allCases: [Self] {
                [
                    .betaReviewState,
                    .build,
                    .submittedDate,
                ]
            }
        }

        public enum BetaBuildLocalizations: String, ParameterValue, CodableEnum, CaseIterable {
            case build
            case locale
            case whatsNew

            var allCases: [Self] {
                [
                    .build,
                    .locale,
                    .whatsNew,
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

        public enum BuildBetaDetails: String, ParameterValue, CodableEnum, CaseIterable {
            case autoNotifyEnabled
            case build
            case externalBuildState
            case internalBuildState

            var allCases: [Self] {
                [
                    .autoNotifyEnabled,
                    .build,
                    .externalBuildState,
                    .internalBuildState,
                ]
            }
        }

        public enum BuildBundles: String, ParameterValue, CodableEnum, CaseIterable {
            case appClipDomainCacheStatus
            case appClipDomainDebugStatus
            case betaAppClipInvocations
            case buildBundleFileSizes
            case bundleId
            case bundleType
            case dSYMUrl
            case deviceProtocols
            case entitlements
            case fileName
            case hasOnDemandResources
            case hasPrerenderedIcon
            case hasSirikit
            case includesSymbols
            case isIosBuildMacAppStoreCompatible
            case locales
            case platformBuild
            case requiredCapabilities
            case sdkBuild
            case supportedArchitectures
            case usesLocationServices

            var allCases: [Self] {
                [
                    .appClipDomainCacheStatus,
                    .appClipDomainDebugStatus,
                    .betaAppClipInvocations,
                    .buildBundleFileSizes,
                    .bundleId,
                    .bundleType,
                    .dSYMUrl,
                    .deviceProtocols,
                    .entitlements,
                    .fileName,
                    .hasOnDemandResources,
                    .hasPrerenderedIcon,
                    .hasSirikit,
                    .includesSymbols,
                    .isIosBuildMacAppStoreCompatible,
                    .locales,
                    .platformBuild,
                    .requiredCapabilities,
                    .sdkBuild,
                    .supportedArchitectures,
                    .usesLocationServices,
                ]
            }
        }

        public enum BuildIcons: String, ParameterValue, CodableEnum, CaseIterable {
            case iconAsset
            case iconType
            case name

            var allCases: [Self] {
                [
                    .iconAsset,
                    .iconType,
                    .name,
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
    }

    /**
     Attributes, relationships, and IDs by which to filter.
     */
    public enum Filter: FilterParameter {
        /// Filter by id(s) of related 'app'
        case app([String])
        /// Filter by id(s) of related 'appStoreVersion'
        case appStoreVersion([String])
        /// Filter by attribute 'betaAppReviewSubmission.betaReviewState'
        case betaAppReviewSubmission_betaReviewState([BetaReviewState])
        /// Filter by id(s) of related 'betaGroups'
        case betaGroups([String])
        /// Filter by attribute 'buildAudienceType'
        case buildAudienceType([BuildAudienceType])
        /// Filter by attribute 'expired'
        case expired([String])
        /// Filter by id(s)
        case id([String])
        /// Filter by id(s) of related 'preReleaseVersion'
        case preReleaseVersion([String])
        /// Filter by attribute 'preReleaseVersion.platform'
        case preReleaseVersion_platform([Platform])
        /// Filter by attribute 'preReleaseVersion.version'
        case preReleaseVersion_version([String])
        /// Filter by attribute 'processingState'
        case processingState([ProcessingState])
        /// Filter by attribute 'usesNonExemptEncryption'
        case usesNonExemptEncryption([String])
        /// Filter by attribute 'version'
        case version([String])

        public enum ProcessingState: String, ParameterValue, CodableEnum, CaseIterable {
            case processing = "PROCESSING"
            case failed = "FAILED"
            case invalid = "INVALID"
            case valid = "VALID"

            var allCases: [Self] {
                [
                    .processing,
                    .failed,
                    .invalid,
                    .valid,
                ]
            }
        }
    }

    /**
     Relationship data to include in the response.
     */
    public enum Include: String, IncludeParameter, CaseIterable {
        case app
        case appEncryptionDeclaration
        case appStoreVersion
        case betaAppReviewSubmission
        case betaBuildLocalizations
        case betaGroups
        case buildBetaDetail
        case buildBundles
        case icons
        case individualTesters
        case preReleaseVersion
    }

    /**
     Attributes by which to sort.
     */
    public enum Sort: String, SortParameter, CaseIterable {
        case preReleaseVersionAscending = "preReleaseVersion"
        case preReleaseVersionDescending = "-preReleaseVersion"
        case uploadedDateAscending = "uploadedDate"
        case uploadedDateDescending = "-uploadedDate"
        case versionAscending = "version"
        case versionDescending = "-version"
    }

    /**
     Number of included related resources to return.
     */
    public enum Limit: LimitParameter {
        /// Maximum number of related betaBuildLocalizations returned (when they are included) - maximum 50
        case betaBuildLocalizations(Int)
        /// Maximum number of related betaGroups returned (when they are included) - maximum 50
        case betaGroups(Int)
        /// Maximum number of related buildBundles returned (when they are included) - maximum 50
        case buildBundles(Int)
        /// Maximum number of related icons returned (when they are included) - maximum 50
        case icons(Int)
        /// Maximum number of related individualTesters returned (when they are included) - maximum 50
        case individualTesters(Int)
        /// Maximum resources per page - maximum 200
        case limit(Int)
    }
}
