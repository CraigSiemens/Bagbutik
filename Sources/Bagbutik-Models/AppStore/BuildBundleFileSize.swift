import Bagbutik_Core
import Foundation

/**
 # BuildBundleFileSize
 The data structure that represents a Build Bundle File Sizes resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/buildbundlefilesize>
 */
public struct BuildBundleFileSize: Codable, Identifiable {
    /// The opaque resource ID that uniquely identifies a Build Bundles File Sizes resource.
    public let id: String
    /// The resource type.
    public var type: String { "buildBundleFileSizes" }
    /// The attributes that describe the Build Bundle File Sizes resource.
    public var attributes: Attributes?

    public init(id: String,
                attributes: Attributes? = nil)
    {
        self.id = id
        self.attributes = attributes
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decode(String.self, forKey: .id)
        attributes = try container.decodeIfPresent(Attributes.self, forKey: .attributes)
        if try container.decode(String.self, forKey: .type) != type {
            throw DecodingError.dataCorruptedError(forKey: .type, in: container, debugDescription: "Not matching \(type)")
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(type, forKey: .type)
        try container.encodeIfPresent(attributes, forKey: .attributes)
    }

    private enum CodingKeys: String, CodingKey {
        case attributes
        case id
        case type
    }

    /**
     # BuildBundleFileSize.Attributes
     The attributes that describe a Build Bundle File Sizes resource.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/buildbundlefilesize/attributes>
     */
    public struct Attributes: Codable {
        /// A string that identifies the Apple device model.
        public var deviceModel: String?
        /// An integer value that represents the download size of the build bundle in bytes.
        public var downloadBytes: Int?
        /// An integer value that represents the installation size of the build bundle in bytes.
        public var installBytes: Int?
        /// A string that identifies the OS version supported by the app or App Clip.
        public var osVersion: String?

        public init(deviceModel: String? = nil,
                    downloadBytes: Int? = nil,
                    installBytes: Int? = nil,
                    osVersion: String? = nil)
        {
            self.deviceModel = deviceModel
            self.downloadBytes = downloadBytes
            self.installBytes = installBytes
            self.osVersion = osVersion
        }
    }
}
