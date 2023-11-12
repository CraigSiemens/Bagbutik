import Bagbutik_Core
import Bagbutik_Models

public extension Request {
    /**
     # List All Workflows for an Xcode Cloud Product
     List all workflows for a specific Xcode Cloud product.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/list_all_workflows_for_an_xcode_cloud_product>

     - Parameter id: The id of the requested resource
     - Parameter fields: Fields to return for included related types
     - Parameter includes: Relationship data to include in the response
     - Parameter limit: Maximum resources per page - maximum 200
     - Returns: A ``Request`` to send to an instance of ``BagbutikService``
     */
    static func listWorkflowsForCiProductV1(id: String,
                                            fields: [ListWorkflowsForCiProductV1.Field]? = nil,
                                            includes: [ListWorkflowsForCiProductV1.Include]? = nil,
                                            limit: Int? = nil) -> Request<CiWorkflowsResponse, ErrorResponse>
    {
        .init(path: "/v1/ciProducts/\(id)/workflows", method: .get, parameters: .init(fields: fields,
                                                                                      includes: includes,
                                                                                      limit: limit))
    }
}

public enum ListWorkflowsForCiProductV1 {
    /**
     Fields to return for included related types.
     */
    public enum Field: FieldParameter {
        /// The fields to include for returned resources of type ciMacOsVersions
        case ciMacOsVersions([CiMacOsVersions])
        /// The fields to include for returned resources of type ciProducts
        case ciProducts([CiProducts])
        /// The fields to include for returned resources of type ciWorkflows
        case ciWorkflows([CiWorkflows])
        /// The fields to include for returned resources of type ciXcodeVersions
        case ciXcodeVersions([CiXcodeVersions])
        /// The fields to include for returned resources of type scmRepositories
        case scmRepositories([ScmRepositories])

        public enum CiMacOsVersions: String, ParameterValue, CodableEnum, CaseIterable {
            case name
            case version
            case xcodeVersions

            var allCases: [Self] {
                [
                    .name,
                    .version,
                    .xcodeVersions,
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

        public enum CiXcodeVersions: String, ParameterValue, CodableEnum, CaseIterable {
            case macOsVersions
            case name
            case testDestinations
            case version

            var allCases: [Self] {
                [
                    .macOsVersions,
                    .name,
                    .testDestinations,
                    .version,
                ]
            }
        }

        public enum ScmRepositories: String, ParameterValue, CodableEnum, CaseIterable {
            case defaultBranch
            case gitReferences
            case httpCloneUrl
            case lastAccessedDate
            case ownerName
            case pullRequests
            case repositoryName
            case scmProvider
            case sshCloneUrl

            var allCases: [Self] {
                [
                    .defaultBranch,
                    .gitReferences,
                    .httpCloneUrl,
                    .lastAccessedDate,
                    .ownerName,
                    .pullRequests,
                    .repositoryName,
                    .scmProvider,
                    .sshCloneUrl,
                ]
            }
        }
    }

    /**
     Relationship data to include in the response.
     */
    public enum Include: String, IncludeParameter, CaseIterable {
        case macOsVersion
        case product
        case repository
        case xcodeVersion
    }
}
