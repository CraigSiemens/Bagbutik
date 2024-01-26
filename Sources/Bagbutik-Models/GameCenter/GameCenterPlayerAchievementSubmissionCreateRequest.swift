import Bagbutik_Core
import Foundation

/**
 # GameCenterPlayerAchievementSubmissionCreateRequest
 The request body you use to create an Game Center player achievement.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/gamecenterplayerachievementsubmissioncreaterequest>
 */
public struct GameCenterPlayerAchievementSubmissionCreateRequest: Codable, RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    public struct Data: Codable {
        public var type: String { "gameCenterPlayerAchievementSubmissions" }
        public let attributes: Attributes

        public init(attributes: Attributes) {
            self.attributes = attributes
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            attributes = try container.decode(Attributes.self, forKey: .attributes)
            if try container.decode(String.self, forKey: .type) != type {
                throw DecodingError.dataCorruptedError(forKey: .type, in: container, debugDescription: "Not matching \(type)")
            }
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(type, forKey: .type)
            try container.encode(attributes, forKey: .attributes)
        }

        private enum CodingKeys: String, CodingKey {
            case attributes
            case type
        }

        public struct Attributes: Codable {
            public let bundleId: String
            public var challengeIds: [String]?
            public let percentageAchieved: Int
            public let scopedPlayerId: String
            public var submittedDate: Date?
            public let vendorIdentifier: String

            public init(bundleId: String,
                        challengeIds: [String]? = nil,
                        percentageAchieved: Int,
                        scopedPlayerId: String,
                        submittedDate: Date? = nil,
                        vendorIdentifier: String)
            {
                self.bundleId = bundleId
                self.challengeIds = challengeIds
                self.percentageAchieved = percentageAchieved
                self.scopedPlayerId = scopedPlayerId
                self.submittedDate = submittedDate
                self.vendorIdentifier = vendorIdentifier
            }
        }
    }
}
