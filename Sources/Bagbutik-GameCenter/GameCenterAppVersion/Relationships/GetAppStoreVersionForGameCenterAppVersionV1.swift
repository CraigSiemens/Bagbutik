import Bagbutik_Core
import Bagbutik_Models

public extension Request {
    /**
     # Read the App Store version for an app version
     Read the app store version and related information for an app version.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/read_the_app_store_version_for_an_app_version>

     - Parameter id: The id of the requested resource
     - Parameter fields: Fields to return for included related types
     - Parameter includes: Relationship data to include in the response
     - Parameter limits: Number of resources to return
     - Returns: A ``Request`` to send to an instance of ``BagbutikService``
     */
    static func getAppStoreVersionForGameCenterAppVersionV1(id: String,
                                                            fields: [GetAppStoreVersionForGameCenterAppVersionV1.Field]? = nil,
                                                            includes: [GetAppStoreVersionForGameCenterAppVersionV1.Include]? = nil,
                                                            limits: [GetAppStoreVersionForGameCenterAppVersionV1.Limit]? = nil) -> Request<AppStoreVersionResponse, ErrorResponse>
    {
        .init(path: "/v1/gameCenterAppVersions/\(id)/appStoreVersion", method: .get, parameters: .init(fields: fields,
                                                                                                       includes: includes,
                                                                                                       limits: limits))
    }
}

public enum GetAppStoreVersionForGameCenterAppVersionV1 {
    /**
     Fields to return for included related types.
     */
    public enum Field: FieldParameter {
        /// The fields to include for returned resources of type ageRatingDeclarations
        case ageRatingDeclarations([AgeRatingDeclarations])
        /// The fields to include for returned resources of type appClipDefaultExperiences
        case appClipDefaultExperiences([AppClipDefaultExperiences])
        /// The fields to include for returned resources of type appStoreReviewDetails
        case appStoreReviewDetails([AppStoreReviewDetails])
        /// The fields to include for returned resources of type appStoreVersionExperiments
        case appStoreVersionExperiments([AppStoreVersionExperiments])
        /// The fields to include for returned resources of type appStoreVersionLocalizations
        case appStoreVersionLocalizations([AppStoreVersionLocalizations])
        /// The fields to include for returned resources of type appStoreVersionPhasedReleases
        case appStoreVersionPhasedReleases([AppStoreVersionPhasedReleases])
        /// The fields to include for returned resources of type appStoreVersionSubmissions
        case appStoreVersionSubmissions([AppStoreVersionSubmissions])
        /// The fields to include for returned resources of type appStoreVersions
        case appStoreVersions([AppStoreVersions])
        /// The fields to include for returned resources of type apps
        case apps([Apps])
        /// The fields to include for returned resources of type builds
        case builds([Builds])
        /// The fields to include for returned resources of type routingAppCoverages
        case routingAppCoverages([RoutingAppCoverages])

        public enum AgeRatingDeclarations: String {
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
        }

        public enum AppClipDefaultExperiences: String {
            case action
            case appClip
            case appClipAppStoreReviewDetail
            case appClipDefaultExperienceLocalizations
            case appClipDefaultExperienceTemplate
            case releaseWithAppStoreVersion
        }

        public enum AppStoreReviewDetails: String {
            case appStoreReviewAttachments
            case appStoreVersion
            case contactEmail
            case contactFirstName
            case contactLastName
            case contactPhone
            case demoAccountName
            case demoAccountPassword
            case demoAccountRequired
            case notes
        }

        public enum AppStoreVersionExperiments: String {
            case app
            case appStoreVersion
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
        }

        public enum AppStoreVersionLocalizations: String {
            case appPreviewSets
            case appScreenshotSets
            case appStoreVersion
            case description
            case keywords
            case locale
            case marketingUrl
            case promotionalText
            case supportUrl
            case whatsNew
        }

        public enum AppStoreVersionPhasedReleases: String {
            case appStoreVersion
            case currentDayNumber
            case phasedReleaseState
            case startDate
            case totalPauseDuration
        }

        public enum AppStoreVersionSubmissions: String {
            case appStoreVersion
        }

        public enum AppStoreVersions: String {
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
        }

        public enum Apps: String {
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
        }

        public enum Builds: String {
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
        }

        public enum RoutingAppCoverages: String {
            case appStoreVersion
            case assetDeliveryState
            case fileName
            case fileSize
            case sourceFileChecksum
            case uploadOperations
            case uploaded
        }
    }

    /**
     Relationship data to include in the response.
     */
    public enum Include: String, IncludeParameter, CaseIterable {
        case ageRatingDeclaration
        case app
        case appClipDefaultExperience
        case appStoreReviewDetail
        case appStoreVersionExperiments
        case appStoreVersionExperimentsV2
        case appStoreVersionLocalizations
        case appStoreVersionPhasedRelease
        case appStoreVersionSubmission
        case build
        case routingAppCoverage
    }

    /**
     Number of included related resources to return.
     */
    public enum Limit: LimitParameter {
        /// Maximum number of related appStoreVersionExperiments returned (when they are included) - maximum 50
        case appStoreVersionExperiments(Int)
        /// Maximum number of related appStoreVersionExperimentsV2 returned (when they are included) - maximum 50
        case appStoreVersionExperimentsV2(Int)
        /// Maximum number of related appStoreVersionLocalizations returned (when they are included) - maximum 50
        case appStoreVersionLocalizations(Int)
    }
}
