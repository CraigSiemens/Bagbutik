import Bagbutik_Core
import Foundation

/**
 # Device
 The data structure that represents a Devices resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/device>
 */
public struct Device: Identifiable {
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

    /**
     # Device.Attributes
     Attributes that describe a Devices resource.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/device/attributes>
     */
    public struct Attributes {
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

        public enum DeviceClass: String {
            case appleWatch = "APPLE_WATCH"
            case iPad = "IPAD"
            case iPhone = "IPHONE"
            case iPod = "IPOD"
            case appleTV = "APPLE_TV"
            case mac = "MAC"
        }

        public enum Status: String {
            case enabled = "ENABLED"
            case disabled = "DISABLED"
            case processing = "PROCESSING"
        }
    }
}
