import Bagbutik_Core
import Foundation

/**
 # CiTestResult
 The data structure that represents a Test Results resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/citestresult>
 */
public struct CiTestResult: Codable, Identifiable {
    /// The opaque resource ID that uniquely identifies a Test Results resource.
    public let id: String
    /// The navigational links that include the self-link.
    public var links: ResourceLinks?
    /// The resource type.
    public var type: String { "ciTestResults" }
    /// The attributes that describe the Test Results resource.
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
     # CiTestResult.Attributes
     The attributes that describe a Test Results resource.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/citestresult/attributes>
     */
    public struct Attributes: Codable {
        /// The name of the class that contained the tests Xcode Cloud performed.
        public var className: String?
        /// Information about the test results for a specific test destination.
        public var destinationTestResults: [DestinationTestResults]?
        /// Information about a test file.
        public var fileSource: FileLocation?
        /// A message generated by a test.
        public var message: String?
        /// The name of the test result; for example, ExampleName.
        public var name: String?
        /// Test status information; for example, whether the test succeeded or failed.
        public var status: CiTestStatus?

        public init(className: String? = nil,
                    destinationTestResults: [DestinationTestResults]? = nil,
                    fileSource: FileLocation? = nil,
                    message: String? = nil,
                    name: String? = nil,
                    status: CiTestStatus? = nil)
        {
            self.className = className
            self.destinationTestResults = destinationTestResults
            self.fileSource = fileSource
            self.message = message
            self.name = name
            self.status = status
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            className = try container.decodeIfPresent(String.self, forKey: .className)
            destinationTestResults = try container.decodeIfPresent([DestinationTestResults].self, forKey: .destinationTestResults)
            fileSource = try container.decodeIfPresent(FileLocation.self, forKey: .fileSource)
            message = try container.decodeIfPresent(String.self, forKey: .message)
            name = try container.decodeIfPresent(String.self, forKey: .name)
            status = try container.decodeIfPresent(CiTestStatus.self, forKey: .status)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encodeIfPresent(className, forKey: .className)
            try container.encodeIfPresent(destinationTestResults, forKey: .destinationTestResults)
            try container.encodeIfPresent(fileSource, forKey: .fileSource)
            try container.encodeIfPresent(message, forKey: .message)
            try container.encodeIfPresent(name, forKey: .name)
            try container.encodeIfPresent(status, forKey: .status)
        }

        private enum CodingKeys: String, CodingKey {
            case className
            case destinationTestResults
            case fileSource
            case message
            case name
            case status
        }

        /**
         # CiTestResult.Attributes.DestinationTestResults
         The results of a test action Xcode Cloud performed using a specific test destination.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/citestresult/attributes/destinationtestresults>
         */
        public struct DestinationTestResults: Codable {
            /// The name of the simulated device used for tests.
            public var deviceName: String?
            /// The time it took to perform a test on a specific simulated device.
            public var duration: Double?
            /// The OS version of the simulated device that Xcode Cloud used to run a test.
            public var osVersion: String?
            /// The status of a test for a specific simulated device.
            public var status: CiTestStatus?
            /// The unique identifier of a test result for a specific simulated device.
            public var uuid: String?

            public init(deviceName: String? = nil,
                        duration: Double? = nil,
                        osVersion: String? = nil,
                        status: CiTestStatus? = nil,
                        uuid: String? = nil)
            {
                self.deviceName = deviceName
                self.duration = duration
                self.osVersion = osVersion
                self.status = status
                self.uuid = uuid
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                deviceName = try container.decodeIfPresent(String.self, forKey: .deviceName)
                duration = try container.decodeIfPresent(Double.self, forKey: .duration)
                osVersion = try container.decodeIfPresent(String.self, forKey: .osVersion)
                status = try container.decodeIfPresent(CiTestStatus.self, forKey: .status)
                uuid = try container.decodeIfPresent(String.self, forKey: .uuid)
            }

            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                try container.encodeIfPresent(deviceName, forKey: .deviceName)
                try container.encodeIfPresent(duration, forKey: .duration)
                try container.encodeIfPresent(osVersion, forKey: .osVersion)
                try container.encodeIfPresent(status, forKey: .status)
                try container.encodeIfPresent(uuid, forKey: .uuid)
            }

            private enum CodingKeys: String, CodingKey {
                case deviceName
                case duration
                case osVersion
                case status
                case uuid
            }
        }
    }
}
