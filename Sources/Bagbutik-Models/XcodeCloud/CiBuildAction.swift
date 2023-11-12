import Bagbutik_Core
import Foundation

/**
 # CiBuildAction
 The data structure that represents a Build Actions resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/cibuildaction>
 */
public struct CiBuildAction: Identifiable {
    /// The opaque resource ID that uniquely identifies a Build Actions resource.
    public let id: String
    /// The navigational links that include the self-link.
    public var links: ResourceLinks?
    /// The resource type.
    public var type: String { "ciBuildActions" }
    /// The attributes that describe the Build Actions resource.
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
     # CiBuildAction.Attributes
     The attributes that describe a Build Actions resource.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/cibuildaction/attributes>
     */
    public struct Attributes {
        /// The type of the build action.
        public var actionType: CiActionType?
        /// The status of the action.
        public var completionStatus: CiCompletionStatus?
        /// A string that indicates the progress of the build action.
        public var executionProgress: CiExecutionProgress?
        /// The date and time when Xcode Cloud finished performing the action.
        public var finishedDate: Date?
        /// A Boolean value that indicates whether the action must succeed in order for a build to succeed.
        public var isRequiredToPass: Bool?
        /// An integer value that represents the number of issues Xcode Cloud encountered when it performed the action.
        public var issueCounts: CiIssueCounts?
        /// The name of the build action; for example, `Archive iOS`.
        public var name: String?
        /// The date and time when Xcode Cloud started performing the action.
        public var startedDate: Date?

        public init(actionType: CiActionType? = nil,
                    completionStatus: CiCompletionStatus? = nil,
                    executionProgress: CiExecutionProgress? = nil,
                    finishedDate: Date? = nil,
                    isRequiredToPass: Bool? = nil,
                    issueCounts: CiIssueCounts? = nil,
                    name: String? = nil,
                    startedDate: Date? = nil)
        {
            self.actionType = actionType
            self.completionStatus = completionStatus
            self.executionProgress = executionProgress
            self.finishedDate = finishedDate
            self.isRequiredToPass = isRequiredToPass
            self.issueCounts = issueCounts
            self.name = name
            self.startedDate = startedDate
        }
    }

    /**
     # CiBuildAction.Relationships
     The relationships of the Build Actions resource you included in the request and those on which you can operate.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/cibuildaction/relationships>
     */
    public struct Relationships {
        /// The data and links that describe the relationship between the Build Actions and the Build Runs resources.
        public var buildRun: BuildRun?

        public init(buildRun: BuildRun? = nil) {
            self.buildRun = buildRun
        }

        /**
         # CiBuildAction.Relationships.BuildRun
         The data and links that describe the relationship between the Build Actions and Build Runs resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/cibuildaction/relationships/buildrun>
         */
        public struct BuildRun {
            /// The ID and type of the related Build Runs resource.
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
             # CiBuildAction.Relationships.BuildRun.Data
             The type and ID of a related Build Runs resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/cibuildaction/relationships/buildrun/data>
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

            /**
             # CiBuildAction.Relationships.BuildRun.Links
             The links to the related Build Runs resource and the relationship’s self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/cibuildaction/relationships/buildrun/links>
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
