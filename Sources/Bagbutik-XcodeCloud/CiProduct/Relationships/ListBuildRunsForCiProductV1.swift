import Bagbutik_Core
import Bagbutik_Models

public extension Request {
    /**
     # List All Xcode Cloud Builds for an Xcode Cloud Product
     List all builds Xcode Cloud performed for a specific product.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/list_all_xcode_cloud_builds_for_an_xcode_cloud_product>

     - Parameter id: The id of the requested resource
     - Parameter fields: Fields to return for included related types
     - Parameter filters: Attributes, relationships, and IDs by which to filter
     - Parameter includes: Relationship data to include in the response
     - Parameter limits: Number of resources to return
     - Returns: A ``Request`` to send to an instance of ``BagbutikService``
     */
    static func listBuildRunsForCiProductV1(id: String,
                                            fields: [ListBuildRunsForCiProductV1.Field]? = nil,
                                            filters: [ListBuildRunsForCiProductV1.Filter]? = nil,
                                            includes: [ListBuildRunsForCiProductV1.Include]? = nil,
                                            limits: [ListBuildRunsForCiProductV1.Limit]? = nil) -> Request<CiBuildRunsResponse, ErrorResponse>
    {
        .init(path: "/v1/ciProducts/\(id)/buildRuns", method: .get, parameters: .init(fields: fields,
                                                                                      filters: filters,
                                                                                      includes: includes,
                                                                                      limits: limits))
    }
}

public enum ListBuildRunsForCiProductV1 {
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
     Attributes, relationships, and IDs by which to filter.
     */
    public enum Filter: FilterParameter {
        /// Filter by id(s) of related 'builds'
        case builds([String])
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

    /**
     Number of included related resources to return.
     */
    public enum Limit: LimitParameter {
        /// Maximum number of related builds returned (when they are included) - maximum 50
        case builds(Int)
        /// Maximum resources per page - maximum 200
        case limit(Int)
    }
}
