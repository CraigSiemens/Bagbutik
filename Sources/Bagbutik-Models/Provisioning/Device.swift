import Bagbutik_Core
import Foundation

/**
 # Device
 The data structure that represents a Devices resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/device>
 */
public struct Device: Codable, Identifiable {
    /// The opaque resource ID that uniquely identifies the resource.
    public let id: String
    /// Navigational links that include the self-link.
    public var links: ResourceLinks?
    /// The resource type.
    public var type: String { "devices" }
    /// The resource's attributes.
    public var attributes: Attributes?

    public init(id: String,
                links: ResourceLinks? = nil,
                attributes: Attributes? = nil)
    {
        self.id = id
        self.links = links
        self.attributes = attributes
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decode(String.self, forKey: .id)
        links = try container.decodeIfPresent(ResourceLinks.self, forKey: .links)
        attributes = try container.decodeIfPresent(Attributes.self, forKey: .attributes)
        if try container.decode(String.self, forKey: .type) != type {
            throw DecodingError.dataCorruptedError(forKey: .type, in: container, debugDescription: "Not matching \(type)")
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encodeIfPresent(links, forKey: .links)
        try container.encode(type, forKey: .type)
        try container.encodeIfPresent(attributes, forKey: .attributes)
    }

    private enum CodingKeys: String, CodingKey {
        case attributes
        case id
        case links
        case type
    }

    /**
     # Device.Attributes
     Attributes that describe a Devices resource.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/device/attributes>
     */
    public struct Attributes: Codable {
        public var addedDate: Date?
        public var deviceClass: DeviceClass?
        public var model: String?
        public var name: String?
        public var platform: BundleIdPlatform?
        public var status: Status?
        public var udid: String?

        public init(addedDate: Date? = nil,
                    deviceClass: DeviceClass? = nil,
                    model: String? = nil,
                    name: String? = nil,
                    platform: BundleIdPlatform? = nil,
                    status: Status? = nil,
                    udid: String? = nil)
        {
            self.addedDate = addedDate
            self.deviceClass = deviceClass
            self.model = model
            self.name = name
            self.platform = platform
            self.status = status
            self.udid = udid
        }

        public enum DeviceClass: String, Codable, CaseIterable {
            case appleWatch = "APPLE_WATCH"
            case iPad = "IPAD"
            case iPhone = "IPHONE"
            case iPod = "IPOD"
            case appleTV = "APPLE_TV"
            case mac = "MAC"
        }

        public enum Status: String, ParameterValue, Codable, CaseIterable {
            case enabled = "ENABLED"
            case disabled = "DISABLED"
            case processing = "PROCESSING"
        }
    }
}
