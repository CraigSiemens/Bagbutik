import Bagbutik_Core
import Foundation

/**
 # CiArtifact
 The data structure that represents an Artifacts resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/ciartifact>
 */
public struct CiArtifact: Identifiable {
    /// The opaque resource ID that uniquely identifies an Artifacts resource.
    public let id: String
    /// The navigational links that include the self-link.
    public var links: ResourceLinks?
    /// The resource type.
    public var type: String { "ciArtifacts" }
    /// The attributes that describe the Artifacts resource.
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
     # CiArtifact.Attributes
     The attributes that describe an Artifacts resource.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/ciartifact/attributes>
     */
    public struct Attributes {
        /// The URL you use to download the Xcode Cloud build artifact.
        public var downloadUrl: String?
        /// The artifact’s filename as a string.
        public var fileName: String?
        /// An integer value that represents the artifact’s file size.
        public var fileSize: Int?
        /// A string that describes the type of the artifact.
        public var fileType: FileType?

        public init(downloadUrl: String? = nil,
                    fileName: String? = nil,
                    fileSize: Int? = nil,
                    fileType: FileType? = nil)
        {
            self.downloadUrl = downloadUrl
            self.fileName = fileName
            self.fileSize = fileSize
            self.fileType = fileType
        }

        public enum FileType: String {
            case archive = "ARCHIVE"
            case archiveExport = "ARCHIVE_EXPORT"
            case logBundle = "LOG_BUNDLE"
            case resultBundle = "RESULT_BUNDLE"
            case testProducts = "TEST_PRODUCTS"
            case xcodebuildProducts = "XCODEBUILD_PRODUCTS"
        }
    }
}
