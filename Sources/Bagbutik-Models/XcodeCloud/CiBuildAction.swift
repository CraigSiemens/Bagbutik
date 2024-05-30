import Bagbutik_Core
import Foundation

/**
 # CiBuildAction
 The data structure that represents a Build Actions resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/cibuildaction>
 */
public struct CiBuildAction: Codable, Identifiable {
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

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: AnyCodingKey.self)
        id = try container.decode(String.self, forKey: "id")
        links = try container.decodeIfPresent(ResourceLinks.self, forKey: "links")
        attributes = try container.decodeIfPresent(Attributes.self, forKey: "attributes")
        relationships = try container.decodeIfPresent(Relationships.self, forKey: "relationships")
        if try container.decode(String.self, forKey: "type") != type {
            throw DecodingError.dataCorruptedError(forKey: "type", in: container, debugDescription: "Not matching \(type)")
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: AnyCodingKey.self)
        try container.encode(id, forKey: "id")
        try container.encodeIfPresent(links, forKey: "links")
        try container.encode(type, forKey: "type")
        try container.encodeIfPresent(attributes, forKey: "attributes")
        try container.encodeIfPresent(relationships, forKey: "relationships")
    }

    /**
     # CiBuildAction.Attributes
     The attributes that describe a Build Actions resource.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/cibuildaction/attributes>
     */
    public struct Attributes: Codable {
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

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: AnyCodingKey.self)
            actionType = try container.decodeIfPresent(CiActionType.self, forKey: "actionType")
            completionStatus = try container.decodeIfPresent(CiCompletionStatus.self, forKey: "completionStatus")
            executionProgress = try container.decodeIfPresent(CiExecutionProgress.self, forKey: "executionProgress")
            finishedDate = try container.decodeIfPresent(Date.self, forKey: "finishedDate")
            isRequiredToPass = try container.decodeIfPresent(Bool.self, forKey: "isRequiredToPass")
            issueCounts = try container.decodeIfPresent(CiIssueCounts.self, forKey: "issueCounts")
            name = try container.decodeIfPresent(String.self, forKey: "name")
            startedDate = try container.decodeIfPresent(Date.self, forKey: "startedDate")
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: AnyCodingKey.self)
            try container.encodeIfPresent(actionType, forKey: "actionType")
            try container.encodeIfPresent(completionStatus, forKey: "completionStatus")
            try container.encodeIfPresent(executionProgress, forKey: "executionProgress")
            try container.encodeIfPresent(finishedDate, forKey: "finishedDate")
            try container.encodeIfPresent(isRequiredToPass, forKey: "isRequiredToPass")
            try container.encodeIfPresent(issueCounts, forKey: "issueCounts")
            try container.encodeIfPresent(name, forKey: "name")
            try container.encodeIfPresent(startedDate, forKey: "startedDate")
        }
    }

    /**
     # CiBuildAction.Relationships
     The relationships of the Build Actions resource you included in the request and those on which you can operate.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/cibuildaction/relationships>
     */
    public struct Relationships: Codable {
        /// The data and links that describe the relationship between the Build Actions and the Build Runs resources.
        public var buildRun: BuildRun?

        public init(buildRun: BuildRun? = nil) {
            self.buildRun = buildRun
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: AnyCodingKey.self)
            buildRun = try container.decodeIfPresent(BuildRun.self, forKey: "buildRun")
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: AnyCodingKey.self)
            try container.encodeIfPresent(buildRun, forKey: "buildRun")
        }

        /**
         # CiBuildAction.Relationships.BuildRun
         The data and links that describe the relationship between the Build Actions and Build Runs resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/cibuildaction/relationships/buildrun>
         */
        public struct BuildRun: Codable {
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

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: AnyCodingKey.self)
                data = try container.decodeIfPresent(Data.self, forKey: "data")
                links = try container.decodeIfPresent(Links.self, forKey: "links")
            }

            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: AnyCodingKey.self)
                try container.encode(data, forKey: "data")
                try container.encodeIfPresent(links, forKey: "links")
            }

            /**
             # CiBuildAction.Relationships.BuildRun.Data
             The type and ID of a related Build Runs resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/cibuildaction/relationships/buildrun/data>
             */
            public struct Data: Codable, Identifiable {
                /// The opaque resource ID that uniquely identifies the related Build Runs resource.
                public let id: String
                /// The resource type.
                public var type: String { "ciBuildRuns" }

                public init(id: String) {
                    self.id = id
                }

                public init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: AnyCodingKey.self)
                    id = try container.decode(String.self, forKey: "id")
                    if try container.decode(String.self, forKey: "type") != type {
                        throw DecodingError.dataCorruptedError(forKey: "type", in: container, debugDescription: "Not matching \(type)")
                    }
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: AnyCodingKey.self)
                    try container.encode(id, forKey: "id")
                    try container.encode(type, forKey: "type")
                }
            }

            /**
             # CiBuildAction.Relationships.BuildRun.Links
             The links to the related Build Runs resource and the relationship’s self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/cibuildaction/relationships/buildrun/links>
             */
            public struct Links: Codable {
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

                public init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: AnyCodingKey.self)
                    related = try container.decodeIfPresent(String.self, forKey: "related")
                    itself = try container.decodeIfPresent(String.self, forKey: "self")
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: AnyCodingKey.self)
                    try container.encodeIfPresent(related, forKey: "related")
                    try container.encodeIfPresent(itself, forKey: "self")
                }
            }
        }
    }
}
