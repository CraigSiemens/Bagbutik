import Bagbutik_Core
import Foundation

/**
 # AppScreenshotSetAppScreenshotsLinkagesRequest
 A request body you use to reorder the screenshots in a screenshot set.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/appscreenshotsetappscreenshotslinkagesrequest>
 */
public struct AppScreenshotSetAppScreenshotsLinkagesRequest: Codable, RequestBody {
    public let data: [Data]

    public init(data: [Data]) {
        self.data = data
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        data = try container.decode([Data].self, forKey: .data)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(data, forKey: .data)
    }

    private enum CodingKeys: String, CodingKey {
        case data
    }

    /**
     # AppScreenshotSetAppScreenshotsLinkagesRequest.Data
     The data element of the request body.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/appscreenshotsetappscreenshotslinkagesrequest/data>
     */
    public struct Data: Codable, Identifiable {
        public let id: String
        public var type: String { "appScreenshots" }

        public init(id: String) {
            self.id = id
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            id = try container.decode(String.self, forKey: .id)
            if try container.decode(String.self, forKey: .type) != type {
                throw DecodingError.dataCorruptedError(forKey: .type, in: container, debugDescription: "Not matching \(type)")
            }
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(id, forKey: .id)
            try container.encode(type, forKey: .type)
        }

        private enum CodingKeys: String, CodingKey {
            case id
            case type
        }
    }
}
