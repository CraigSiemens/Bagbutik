import Bagbutik_Core
import Foundation

/**
 # BundleIdCapability
 The data structure that represents a Bundle ID Capabilities resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/bundleidcapability>
 */
public struct BundleIdCapability: Identifiable {
    /// The opaque resource ID that uniquely identifies the resource.
    public let id: String
    /// Navigational links that include the self-link.
    public var links: ResourceLinks?
    /// The resource type.
    public var type: String { "bundleIdCapabilities" }
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
     # BundleIdCapability.Attributes
     Attributes that describe a Bundle ID Capabilities resource.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/bundleidcapability/attributes>
     */
    public struct Attributes {
        public var capabilityType: CapabilityType?
        public var settings: [CapabilitySetting]?

        public init(capabilityType: CapabilityType? = nil,
                    settings: [CapabilitySetting]? = nil)
        {
            self.capabilityType = capabilityType
            self.settings = settings
        }
    }
}
