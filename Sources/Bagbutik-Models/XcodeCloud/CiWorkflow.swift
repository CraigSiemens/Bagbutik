import Bagbutik_Core
import Foundation

/**
 # CiWorkflow
 The data structure that represents a Workflows resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/ciworkflow>
 */
public struct CiWorkflow: Identifiable {
    /// The opaque resource ID that uniquely identifies a Workflows resource.
    public let id: String
    /// The navigational links that include the self-link.
    public var links: ResourceLinks?
    /// The resource type.
    public var type: String { "ciWorkflows" }
    /// The attributes that describe the Workflows resource.
    public var attributes: Attributes?
    /// The navigational links to related data and included resource types and IDs.
    public var relationships: Relationships?

    public init(id: String,
                links: ResourceLinks? = nil,
                attributes: Attributes? = nil,
                relationships: Relationships? = nil)
    {
        self.id = id
        self.links = links
        self.attributes = attributes
        self.relationships = relationships
    }

    /**
     # CiWorkflow.Attributes
     The attributes that describe a Workflows resource.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/ciworkflow/attributes>
     */
    public struct Attributes {
        /// The actions that are part of the workflow.
        public var actions: [CiAction]?
        /// The workflow’s start condition that starts new builds for changes to a branch.
        public var branchStartCondition: CiBranchStartCondition?
        /// A Boolean value that indicates whether Xcode Cloud should perform a clean build.
        public var clean: Bool?
        /// The relative path to your Xcode project or workspace.
        public var containerFilePath: String?
        /// The workflow’s description.
        public var description: String?
        /// A Boolean value that indicates whether the workflow is active or deactivated.
        public var isEnabled: Bool?
        /// A Boolean value that indicates whether edits to the workflow are restricted.
        public var isLockedForEditing: Bool?
        /// The date and time when the workflow was last modified.
        public var lastModifiedDate: Date?
        /// The name of the Xcode Cloud workflow; for example, `My Workflow`.
        public var name: String?
        /// The workflow’s start condition for pull request changes.
        public var pullRequestStartCondition: CiPullRequestStartCondition?
        /// The workflow’s start condition that starts new builds on a custom schedule.
        public var scheduledStartCondition: CiScheduledStartCondition?
        /// The workflow’s start condition that starts new builds for changes to a tag.
        public var tagStartCondition: CiTagStartCondition?

        public init(actions: [CiAction]? = nil,
                    branchStartCondition: CiBranchStartCondition? = nil,
                    clean: Bool? = nil,
                    containerFilePath: String? = nil,
                    description: String? = nil,
                    isEnabled: Bool? = nil,
                    isLockedForEditing: Bool? = nil,
                    lastModifiedDate: Date? = nil,
                    name: String? = nil,
                    pullRequestStartCondition: CiPullRequestStartCondition? = nil,
                    scheduledStartCondition: CiScheduledStartCondition? = nil,
                    tagStartCondition: CiTagStartCondition? = nil)
        {
            self.actions = actions
            self.branchStartCondition = branchStartCondition
            self.clean = clean
            self.containerFilePath = containerFilePath
            self.description = description
            self.isEnabled = isEnabled
            self.isLockedForEditing = isLockedForEditing
            self.lastModifiedDate = lastModifiedDate
            self.name = name
            self.pullRequestStartCondition = pullRequestStartCondition
            self.scheduledStartCondition = scheduledStartCondition
            self.tagStartCondition = tagStartCondition
        }
    }

    /**
     # CiWorkflow.Relationships
     The relationships of the Workflows resource you included in the request and those on which you can operate.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/ciworkflow/relationships>
     */
    public struct Relationships {
        /// The related macOS Versions resource.
        public var macOsVersion: MacOsVersion?
        /// The related Products resource.
        public var product: Product?
        /// The workflow’s related Git repository.
        public var repository: Repository?
        /// The related Xcode Versions resource.
        public var xcodeVersion: XcodeVersion?

        public init(macOsVersion: MacOsVersion? = nil,
                    product: Product? = nil,
                    repository: Repository? = nil,
                    xcodeVersion: XcodeVersion? = nil)
        {
            self.macOsVersion = macOsVersion
            self.product = product
            self.repository = repository
            self.xcodeVersion = xcodeVersion
        }

        /**
         # CiWorkflow.Relationships.MacOsVersion
         The data and links that describe the relationship between the Workflows and the macOS Versions resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/ciworkflow/relationships/macosversion>
         */
        public struct MacOsVersion {
            /// The ID and type of the related macOS Versions resource.
            @NullCodable public var data: Data?
            /// The navigational links that include the self-link.
            public var links: Links?

            public init(data: Data? = nil,
                        links: Links? = nil)
            {
                self.data = data
                self.links = links
            }

            /**
             # CiWorkflow.Relationships.MacOsVersion.Data
             The type and ID of a related macOS Versions resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/ciworkflow/relationships/macosversion/data>
             */
            public struct Data: Identifiable {
                /// The opaque resource ID that uniquely identifies the related macOS Versions resource.
                public let id: String
                /// The resource type.
                public var type: String { "ciMacOsVersions" }

                public init(id: String) {
                    self.id = id
                }
            }

            /**
             # CiWorkflow.Relationships.MacOsVersion.Links
             The links to the related macOS Versions resource and the relationship’s self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/ciworkflow/relationships/macosversion/links>
             */
            public struct Links {
                /// The link to related data.
                public var related: String?
                /// The link to the resource.
                public var itself: String?

                public init(related: String? = nil,
                            self itself: String? = nil)
                {
                    self.related = related
                    self.itself = itself
                }
            }
        }

        /**
         # CiWorkflow.Relationships.Product
         The data and links that describe the relationship between the Workflows and the Products resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/ciworkflow/relationships/product>
         */
        public struct Product {
            /// The ID and type of the related Products resource.
            @NullCodable public var data: Data?
            /// The navigational links that include the self-link.
            public var links: Links?

            public init(data: Data? = nil,
                        links: Links? = nil)
            {
                self.data = data
                self.links = links
            }

            /**
             # CiWorkflow.Relationships.Product.Data
             The type and ID of a related Products resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/ciworkflow/relationships/product/data>
             */
            public struct Data: Identifiable {
                /// The opaque resource ID that uniquely identifies the related Products resource.
                public let id: String
                /// The resource type.
                public var type: String { "ciProducts" }

                public init(id: String) {
                    self.id = id
                }
            }

            /**
             # CiWorkflow.Relationships.Product.Links
             The links to the related Products resource and the relationship’s self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/ciworkflow/relationships/product/links>
             */
            public struct Links {
                /// The link to related data.
                public var related: String?
                /// The link to the resource.
                public var itself: String?

                public init(related: String? = nil,
                            self itself: String? = nil)
                {
                    self.related = related
                    self.itself = itself
                }
            }
        }

        /**
         # CiWorkflow.Relationships.Repository
         The data and links that describe the relationship between the Workflows and the Repositories resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/ciworkflow/relationships/repository>
         */
        public struct Repository {
            /// The ID and type of the related Repositories resource.
            @NullCodable public var data: Data?
            /// The navigational links that include the self-link.
            public var links: Links?

            public init(data: Data? = nil,
                        links: Links? = nil)
            {
                self.data = data
                self.links = links
            }

            /**
             # CiWorkflow.Relationships.Repository.Data
             The type and ID of a related Repositories resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/ciworkflow/relationships/repository/data>
             */
            public struct Data: Identifiable {
                /// The opaque resource ID that uniquely identifies the related Repositories resource.
                public let id: String
                /// The resource type.
                public var type: String { "scmRepositories" }

                public init(id: String) {
                    self.id = id
                }
            }

            /**
             # CiWorkflow.Relationships.Repository.Links
             The links to the related Repositories resource and the relationship’s self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/ciworkflow/relationships/repository/links>
             */
            public struct Links {
                /// The link to related data.
                public var related: String?
                /// The link to the resource.
                public var itself: String?

                public init(related: String? = nil,
                            self itself: String? = nil)
                {
                    self.related = related
                    self.itself = itself
                }
            }
        }

        /**
         # CiWorkflow.Relationships.XcodeVersion
         The data and links that describe the relationship between the Workflows and the Xcode Versions resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/ciworkflow/relationships/xcodeversion>
         */
        public struct XcodeVersion {
            /// The ID and type of the related Xcode Versions resource.
            @NullCodable public var data: Data?
            /// The navigational links that include the self-link.
            public var links: Links?

            public init(data: Data? = nil,
                        links: Links? = nil)
            {
                self.data = data
                self.links = links
            }

            /**
             # CiWorkflow.Relationships.XcodeVersion.Data
             The type and ID of a related Xcode Versions resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/ciworkflow/relationships/xcodeversion/data>
             */
            public struct Data: Identifiable {
                /// The opaque resource ID that uniquely identifies the related Xcode Versions resource.
                public let id: String
                /// The resource type.
                public var type: String { "ciXcodeVersions" }

                public init(id: String) {
                    self.id = id
                }
            }

            /**
             # CiWorkflow.Relationships.XcodeVersion.Links
             The links to the related Xcode Versions resource and the relationship’s self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/ciworkflow/relationships/xcodeversion/links>
             */
            public struct Links {
                /// The link to related data.
                public var related: String?
                /// The link to the resource.
                public var itself: String?

                public init(related: String? = nil,
                            self itself: String? = nil)
                {
                    self.related = related
                    self.itself = itself
                }
            }
        }
    }
}
