import Bagbutik_Core
import Foundation

/**
 # PerfPowerMetric
 Unused.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/perfpowermetric>
 */
public struct PerfPowerMetric: Codable, Identifiable {
    public let id: String
    public var links: ResourceLinks?
    public var type: String { "perfPowerMetrics" }
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
     # PerfPowerMetric.Attributes
     Attributes that describe a Power and Performance Metrics resource.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/perfpowermetric/attributes>
     */
    public struct Attributes: Codable {
        /// A string that represents the device type.
        public var deviceType: String?
        /// For more information about metric types, see [MetricCategory](https://developer.apple.com/documentation/appstoreconnectapi/metriccategory).
        public var metricType: MetricType?
        public var platform: Platform?

        public init(deviceType: String? = nil,
                    metricType: MetricType? = nil,
                    platform: Platform? = nil)
        {
            self.deviceType = deviceType
            self.metricType = metricType
            self.platform = platform
        }

        public enum MetricType: String, Codable, CaseIterable {
            case disk = "DISK"
            case hang = "HANG"
            case battery = "BATTERY"
            case launch = "LAUNCH"
            case memory = "MEMORY"
            case animation = "ANIMATION"
            case termination = "TERMINATION"
        }

        public enum Platform: String, Codable, CaseIterable {
            case iOS = "IOS"
        }
    }
}
