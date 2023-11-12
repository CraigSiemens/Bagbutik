import Bagbutik_Core
import Foundation

/**
 # PerfPowerMetric
 Unused.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/perfpowermetric>
 */
public struct PerfPowerMetric: Identifiable {
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

    /**
     # PerfPowerMetric.Attributes
     Attributes that describe a Power and Performance Metrics resource.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/perfpowermetric/attributes>
     */
    public struct Attributes {
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

        public enum MetricType: String {
            case disk = "DISK"
            case hang = "HANG"
            case battery = "BATTERY"
            case launch = "LAUNCH"
            case memory = "MEMORY"
            case animation = "ANIMATION"
            case termination = "TERMINATION"
        }

        public enum Platform: String {
            case iOS = "IOS"
        }
    }
}
