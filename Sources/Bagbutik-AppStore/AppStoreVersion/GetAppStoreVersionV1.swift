import Bagbutik_Core
import Bagbutik_Models

public extension Request {
    /**
     # Read App Store Version Information
     Get information for a specific app store version.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/read_app_store_version_information>

     - Parameter id: The id of the requested resource
     - Parameter fields: Fields to return for included related types
     - Parameter includes: Relationship data to include in the response
     - Parameter limits: Number of resources to return
     - Returns: A ``Request`` to send to an instance of ``BagbutikService``
     */
    static func getAppStoreVersionV1(id: String,
                                     fields: [GetAppStoreVersionV1.Field]? = nil,
                                     includes: [GetAppStoreVersionV1.Include]? = nil,
                                     limits: [GetAppStoreVersionV1.Limit]? = nil) -> Request<AppStoreVersionResponse, ErrorResponse>
    {
        .init(path: "/v1/appStoreVersions/\(id)", method: .get, parameters: .init(fields: fields,
                                                                                  includes: includes,
                                                                                  limits: limits))
    }
}

public enum GetAppStoreVersionV1 {
    /**
     Fields to return for included related types.
     */
    public enum Field: FieldParameter {
        /// The fields to include for returned resources of type ageRatingDeclarations
        @available(*, deprecated, message: "Apple has marked it as deprecated and it will be removed sometime in the future.")
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
        @available(*, deprecated, message: "Apple has marked it as deprecated and it will be removed sometime in the future.")
        case appStoreVersionSubmissions([AppStoreVersionSubmissions])
        /// The fields to include for returned resources of type appStoreVersions
        case appStoreVersions([AppStoreVersions])
        /// The fields to include for returned resources of type builds
        case builds([Builds])
        /// The fields to include for returned resources of type customerReviews
        case customerReviews([CustomerReviews])
        /// The fields to include for returned resources of type routingAppCoverages
        case routingAppCoverages([RoutingAppCoverages])

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

        public enum AppClipDefaultExperiences: String, ParameterValue, CodableEnum, CaseIterable {
            case action
            case appClip
            case appClipAppStoreReviewDetail
            case appClipDefaultExperienceLocalizations
            case appClipDefaultExperienceTemplate
            case releaseWithAppStoreVersion

            var allCases: [Self] {
                [
                    .action,
                    .appClip,
                    .appClipAppStoreReviewDetail,
                    .appClipDefaultExperienceLocalizations,
                    .appClipDefaultExperienceTemplate,
                    .releaseWithAppStoreVersion,
                ]
            }
        }

        public enum AppStoreReviewDetails: String, ParameterValue, CodableEnum, CaseIterable {
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

            var allCases: [Self] {
                [
                    .appStoreReviewAttachments,
                    .appStoreVersion,
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

        public enum AppStoreVersionExperiments: String, ParameterValue, CodableEnum, CaseIterable {
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

            var allCases: [Self] {
                [
                    .app,
                    .appStoreVersion,
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

        public enum AppStoreVersionLocalizations: String, ParameterValue, CodableEnum, CaseIterable {
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

            var allCases: [Self] {
                [
                    .appPreviewSets,
                    .appScreenshotSets,
                    .appStoreVersion,
                    .description,
                    .keywords,
                    .locale,
                    .marketingUrl,
                    .promotionalText,
                    .supportUrl,
                    .whatsNew,
                ]
            }
        }

        public enum AppStoreVersionPhasedReleases: String, ParameterValue, CodableEnum, CaseIterable {
            case appStoreVersion
            case currentDayNumber
            case phasedReleaseState
            case startDate
            case totalPauseDuration

            var allCases: [Self] {
                [
                    .appStoreVersion,
                    .currentDayNumber,
                    .phasedReleaseState,
                    .startDate,
                    .totalPauseDuration,
                ]
            }
        }

        public enum AppStoreVersionSubmissions: String, ParameterValue, CodableEnum, CaseIterable {
            case appStoreVersion

            var allCases: [Self] {
                [
                    .appStoreVersion,
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

        public enum RoutingAppCoverages: String, ParameterValue, CodableEnum, CaseIterable {
            case appStoreVersion
            case assetDeliveryState
            case fileName
            case fileSize
            case sourceFileChecksum
            case uploadOperations
            case uploaded

            var allCases: [Self] {
                [
                    .appStoreVersion,
                    .assetDeliveryState,
                    .fileName,
                    .fileSize,
                    .sourceFileChecksum,
                    .uploadOperations,
                    .uploaded,
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
