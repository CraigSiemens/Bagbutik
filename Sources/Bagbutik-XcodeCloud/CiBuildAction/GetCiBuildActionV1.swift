import Bagbutik_Core
import Bagbutik_Models

public extension Request {
    /**
     # Read Build Action Information
     Get information about a specific action Xcode Cloud performed as part of a build.

     The example request below retrieves detailed information about an action Xcode Cloud performed. It also requests detailed information about the action’s build by including the [Build Runs](https://developer.apple.com/documentation/appstoreconnectapi/xcode_cloud_workflows_and_builds/build_runs) resource in the query. Use the information provided in the response to display information on a dashboard or to access additional information; for example, information about other actions Xcode Cloud performed during the build.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/read_build_action_information>

     - Parameter id: The id of the requested resource
     - Parameter fields: Fields to return for included related types
     - Parameter includes: Relationship data to include in the response
     - Returns: A ``Request`` to send to an instance of ``BagbutikService``
     */
    static func getCiBuildActionV1(id: String,
                                   fields: [GetCiBuildActionV1.Field]? = nil,
                                   includes: [GetCiBuildActionV1.Include]? = nil) -> Request<CiBuildActionResponse, ErrorResponse>
    {
        .init(path: "/v1/ciBuildActions/\(id)", method: .get, parameters: .init(fields: fields,
                                                                                includes: includes))
    }
}

public enum GetCiBuildActionV1 {
    /**
     Fields to return for included related types.
     */
    public enum Field: FieldParameter {
        /// The fields to include for returned resources of type ciArtifacts
        case ciArtifacts([CiArtifacts])
        /// The fields to include for returned resources of type ciBuildActions
        case ciBuildActions([CiBuildActions])
        /// The fields to include for returned resources of type ciBuildRuns
        case ciBuildRuns([CiBuildRuns])
        /// The fields to include for returned resources of type ciIssues
        case ciIssues([CiIssues])
        /// The fields to include for returned resources of type ciTestResults
        case ciTestResults([CiTestResults])

        public enum CiArtifacts: String, ParameterValue, CodableEnum, CaseIterable {
            case downloadUrl
            case fileName
            case fileSize
            case fileType

            var allCases: [Self] {
                [
                    .downloadUrl,
                    .fileName,
                    .fileSize,
                    .fileType,
                ]
            }
        }

        public enum CiBuildActions: String, ParameterValue, CodableEnum, CaseIterable {
            case actionType
            case artifacts
            case buildRun
            case completionStatus
            case executionProgress
            case finishedDate
            case isRequiredToPass
            case issueCounts
            case issues
            case name
            case startedDate
            case testResults

            var allCases: [Self] {
                [
                    .actionType,
                    .artifacts,
                    .buildRun,
                    .completionStatus,
                    .executionProgress,
                    .finishedDate,
                    .isRequiredToPass,
                    .issueCounts,
                    .issues,
                    .name,
                    .startedDate,
                    .testResults,
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

        public enum CiIssues: String, ParameterValue, CodableEnum, CaseIterable {
            case category
            case fileSource
            case issueType
            case message

            var allCases: [Self] {
                [
                    .category,
                    .fileSource,
                    .issueType,
                    .message,
                ]
            }
        }

        public enum CiTestResults: String, ParameterValue, CodableEnum, CaseIterable {
            case className
            case destinationTestResults
            case fileSource
            case message
            case name
            case status

            var allCases: [Self] {
                [
                    .className,
                    .destinationTestResults,
                    .fileSource,
                    .message,
                    .name,
                    .status,
                ]
            }
        }
    }

    /**
     Relationship data to include in the response.
     */
    public enum Include: String, IncludeParameter, CaseIterable {
        case buildRun
    }
}
