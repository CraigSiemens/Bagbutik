import Bagbutik_Core
import Foundation

/**
 # CiIssue
 The data structure that represents an Issues resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/ciissue>
 */
public struct CiIssue: Identifiable {
    /// The opaque resource ID that uniquely identifies an Issues resource.
    public let id: String
    /// The navigational links that include the self-link.
    public var links: ResourceLinks?
    /// The resource type.
    public var type: String { "ciIssues" }
    /// The attributes that describe the Issues resource.
    public var attributes: Attributes?

    public init(id: String,
                links: ResourceLinks? = nil,
                attributes: Attributes? = nil)
    {
        self.id = id
        self.links = links
        self.attributes = attributes
    }

    /**
     # CiIssue.Attributes
     The attributes that describe an Issues resource.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/ciissue/attributes>
     */
    public struct Attributes {
        /// ​A string representing the issue’s category; for example, the name of the build phase where the issue occurred.
        public var category: String?
        /// The file and line number where Xcode Cloud encountered an issue.
        public var fileSource: FileLocation?
        /// A string that indicates what kind of issue Xcode Cloud encountered.
        public var issueType: IssueType?
        /// Information about the issue that occurred.
        public var message: String?

        public init(category: String? = nil,
                    fileSource: FileLocation? = nil,
                    issueType: IssueType? = nil,
                    message: String? = nil)
        {
            self.category = category
            self.fileSource = fileSource
            self.issueType = issueType
            self.message = message
        }

        public enum IssueType: String {
            case analyzerWarning = "ANALYZER_WARNING"
            case error = "ERROR"
            case testFailure = "TEST_FAILURE"
            case warning = "WARNING"
        }
    }
}
