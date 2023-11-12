import Bagbutik_Core
import Bagbutik_Models

public extension Request {
    /**
     # Read the Xcode Cloud Build Information for a Build Action
     Get Xcode Cloud build information for a given build action.

     The example request below retrieves detailed information for a specific action Xcode Cloud performed. Use the data provided in the response to display detailed build information on a dashboard or to access related information.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/read_the_xcode_cloud_build_information_for_a_build_action>

     - Parameter id: The id of the requested resource
     - Parameter fields: Fields to return for included related types
     - Parameter includes: Relationship data to include in the response
     - Parameter limit: Maximum number of related builds returned (when they are included) - maximum 50
     - Returns: A ``Request`` to send to an instance of ``BagbutikService``
     */
    static func getBuildRunForCiBuildActionV1(id: String,
                                              fields: [GetBuildRunForCiBuildActionV1.Field]? = nil,
                                              includes: [GetBuildRunForCiBuildActionV1.Include]? = nil,
                                              limit: Int? = nil) -> Request<CiBuildRunResponse, ErrorResponse>
    {
        .init(path: "/v1/ciBuildActions/\(id)/buildRun", method: .get, parameters: .init(fields: fields,
                                                                                         includes: includes,
                                                                                         limit: limit))
    }
}

public enum GetBuildRunForCiBuildActionV1 {
    /**
     Fields to return for included related types.
     */
    public enum Field: FieldParameter {
        /// The fields to include for returned resources of type builds
        case builds([Builds])
        /// The fields to include for returned resources of type ciBuildRuns
        case ciBuildRuns([CiBuildRuns])
        /// The fields to include for returned resources of type ciProducts
        case ciProducts([CiProducts])
        /// The fields to include for returned resources of type ciWorkflows
        case ciWorkflows([CiWorkflows])
        /// The fields to include for returned resources of type scmGitReferences
        case scmGitReferences([ScmGitReferences])
        /// The fields to include for returned resources of type scmPullRequests
        case scmPullRequests([ScmPullRequests])

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

        public enum CiBuildRuns: String, ParameterValue, CodableEnum, CaseIterable {
            case actions
            case buildRun
            case builds
            case cancelReason
            case clean
            case completionStatus
            case createdDate
            case destinationBranch
            case destinationCommit
            case executionProgress
            case finishedDate
            case isPullRequestBuild
            case issueCounts
            case number
            case product
            case pullRequest
            case sourceBranchOrTag
            case sourceCommit
            case startReason
            case startedDate
            case workflow

            var allCases: [Self] {
                [
                    .actions,
                    .buildRun,
                    .builds,
                    .cancelReason,
                    .clean,
                    .completionStatus,
                    .createdDate,
                    .destinationBranch,
                    .destinationCommit,
                    .executionProgress,
                    .finishedDate,
                    .isPullRequestBuild,
                    .issueCounts,
                    .number,
                    .product,
                    .pullRequest,
                    .sourceBranchOrTag,
                    .sourceCommit,
                    .startReason,
                    .startedDate,
                    .workflow,
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

        public enum CiWorkflows: String, ParameterValue, CodableEnum, CaseIterable {
            case actions
            case branchStartCondition
            case buildRuns
            case clean
            case containerFilePath
            case description
            case isEnabled
            case isLockedForEditing
            case lastModifiedDate
            case macOsVersion
            case name
            case product
            case pullRequestStartCondition
            case repository
            case scheduledStartCondition
            case tagStartCondition
            case xcodeVersion

            var allCases: [Self] {
                [
                    .actions,
                    .branchStartCondition,
                    .buildRuns,
                    .clean,
                    .containerFilePath,
                    .description,
                    .isEnabled,
                    .isLockedForEditing,
                    .lastModifiedDate,
                    .macOsVersion,
                    .name,
                    .product,
                    .pullRequestStartCondition,
                    .repository,
                    .scheduledStartCondition,
                    .tagStartCondition,
                    .xcodeVersion,
                ]
            }
        }

        public enum ScmGitReferences: String, ParameterValue, CodableEnum, CaseIterable {
            case canonicalName
            case isDeleted
            case kind
            case name
            case repository

            var allCases: [Self] {
                [
                    .canonicalName,
                    .isDeleted,
                    .kind,
                    .name,
                    .repository,
                ]
            }
        }

        public enum ScmPullRequests: String, ParameterValue, CodableEnum, CaseIterable {
            case destinationBranchName
            case destinationRepositoryName
            case destinationRepositoryOwner
            case isClosed
            case isCrossRepository
            case number
            case repository
            case sourceBranchName
            case sourceRepositoryName
            case sourceRepositoryOwner
            case title
            case webUrl

            var allCases: [Self] {
                [
                    .destinationBranchName,
                    .destinationRepositoryName,
                    .destinationRepositoryOwner,
                    .isClosed,
                    .isCrossRepository,
                    .number,
                    .repository,
                    .sourceBranchName,
                    .sourceRepositoryName,
                    .sourceRepositoryOwner,
                    .title,
                    .webUrl,
                ]
            }
        }
    }

    /**
     Relationship data to include in the response.
     */
    public enum Include: String, IncludeParameter, CaseIterable {
        case builds
        case destinationBranch
        case product
        case pullRequest
        case sourceBranchOrTag
        case workflow
    }
}
