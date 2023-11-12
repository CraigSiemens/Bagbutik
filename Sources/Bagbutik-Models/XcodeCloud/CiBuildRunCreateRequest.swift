import Bagbutik_Core
import Foundation

/**
 # CiBuildRunCreateRequest
 The request body you use to start a new Xcode Cloud build.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/cibuildruncreaterequest>
 */
public struct CiBuildRunCreateRequest: RequestBody {
    /// The resource data.
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    /**
     # CiBuildRunCreateRequest.Data
     The data element of the request you use to start a new Xcode Cloud build.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/cibuildruncreaterequest/data>
     */
    public struct Data {
        /// The resource type.
        public var type: String { "ciBuildRuns" }
        /// The attributes that describe the request that creates a Build Runs resource.
        public var attributes: Attributes?
        /// The types and IDs of the related data to update.
        public var relationships: Relationships?

        public init(attributes: Attributes? = nil,
                    relationships: Relationships? = nil)
        {
            self.attributes = attributes
            self.relationships = relationships
        }

        /**
         # CiBuildRunCreateRequest.Data.Attributes
         The attributes you set that describe the new Build Runs resource.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/cibuildruncreaterequest/data/attributes>
         */
        public struct Attributes {
            /// A Boolean value that indicates whether Xcode Cloud should perform a clean build.
            public var clean: Bool?

            public init(clean: Bool? = nil) {
                self.clean = clean
            }
        }

        /**
         # CiBuildRunCreateRequest.Data.Relationships
         The relationships to other resources that you can set with this request.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/cibuildruncreaterequest/data/relationships>
         */
        public struct Relationships {
            /// The related Build Runs resource.
            public var buildRun: BuildRun?
            /// The related Pull Requests resource.
            public var pullRequest: PullRequest?
            /// The related Git References resource.
            public var sourceBranchOrTag: SourceBranchOrTag?
            /// The related Workflows resource.
            public var workflow: Workflow?

            public init(buildRun: BuildRun? = nil,
                        pullRequest: PullRequest? = nil,
                        sourceBranchOrTag: SourceBranchOrTag? = nil,
                        workflow: Workflow? = nil)
            {
                self.buildRun = buildRun
                self.pullRequest = pullRequest
                self.sourceBranchOrTag = sourceBranchOrTag
                self.workflow = workflow
            }

            /**
             # CiBuildRunCreateRequest.Data.Relationships.BuildRun
             The relationship to the Build Runs resource you can set with the request that creates a Build Runs resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/cibuildruncreaterequest/data/relationships/buildrun>
             */
            public struct BuildRun {
                /// The ID and type of the related Build Runs resource.
                @NullCodable public var data: Data?

                public init(data: Data? = nil) {
                    self.data = data
                }

                /**
                 # CiBuildRunCreateRequest.Data.Relationships.BuildRun.Data
                 The type and ID of the Build Runs resource that you’re relating with the Build Runs resource you’re creating.

                 Full documentation:
                 <https://developer.apple.com/documentation/appstoreconnectapi/cibuildruncreaterequest/data/relationships/buildrun/data>
                 */
                public struct Data: Identifiable {
                    /// The opaque resource ID that uniquely identifies the related Build Runs resource.
                    public let id: String
                    /// The resource type.
                    public var type: String { "ciBuildRuns" }

                    public init(id: String) {
                        self.id = id
                    }
                }
            }

            /**
             # CiBuildRunCreateRequest.Data.Relationships.PullRequest
             The relationship to the Pull Requests resource you can set with the request that creates a Build Runs resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/cibuildruncreaterequest/data/relationships/pullrequest>
             */
            public struct PullRequest: RequestBody {
                /// The ID and type of the related Pull Requests resource.
                @NullCodable public var data: Data?

                public init(data: Data? = nil) {
                    self.data = data
                }

                /**
                 # CiBuildRunCreateRequest.Data.Relationships.PullRequest.Data
                 The type and ID of the Pull Requests resource that you’re relating with the Build Runs resource you’re creating.

                 Full documentation:
                 <https://developer.apple.com/documentation/appstoreconnectapi/cibuildruncreaterequest/data/relationships/pullrequest/data>
                 */
                public struct Data: Identifiable {
                    /// The opaque resource ID that uniquely identifies the related Pull Requests resource.
                    public let id: String
                    /// The resource type.
                    public var type: String { "scmPullRequests" }

                    public init(id: String) {
                        self.id = id
                    }
                }
            }

            /**
             # CiBuildRunCreateRequest.Data.Relationships.SourceBranchOrTag
             The relationship to the Git References resource that represents the source branch or tag you can set with the request that creates a Build Runs resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/cibuildruncreaterequest/data/relationships/sourcebranchortag>
             */
            public struct SourceBranchOrTag {
                /// The ID and type of the related Git References resource that represents the source branch or tag.
                @NullCodable public var data: Data?

                public init(data: Data? = nil) {
                    self.data = data
                }

                /**
                 # CiBuildRunCreateRequest.Data.Relationships.SourceBranchOrTag.Data
                 The type and ID of the Git References resource that represents the source branch or tag you relate with the Build Runs resource you’re creating.

                 Full documentation:
                 <https://developer.apple.com/documentation/appstoreconnectapi/cibuildruncreaterequest/data/relationships/sourcebranchortag/data>
                 */
                public struct Data: Identifiable {
                    /// The opaque resource ID that uniquely identifies the related Git References resource that represents the source branch or tag.
                    public let id: String
                    /// The resource type.
                    public var type: String { "scmGitReferences" }

                    public init(id: String) {
                        self.id = id
                    }
                }
            }

            /**
             # CiBuildRunCreateRequest.Data.Relationships.Workflow
             The relationship to the Workflows resource you can set with the request that creates a Build Runs resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/cibuildruncreaterequest/data/relationships/workflow>
             */
            public struct Workflow {
                /// The ID and type of the related Workflows resource.
                @NullCodable public var data: Data?

                public init(data: Data? = nil) {
                    self.data = data
                }

                /**
                 # CiBuildRunCreateRequest.Data.Relationships.Workflow.Data
                 The type and ID of the Workflows resource that you’re relating with the Build Runs resource you’re creating.

                 Full documentation:
                 <https://developer.apple.com/documentation/appstoreconnectapi/cibuildruncreaterequest/data/relationships/workflow/data>
                 */
                public struct Data: Identifiable {
                    /// The opaque resource ID that uniquely identifies the related Workflows resource.
                    public let id: String
                    /// The resource type.
                    public var type: String { "ciWorkflows" }

                    public init(id: String) {
                        self.id = id
                    }
                }
            }
        }
    }
}
