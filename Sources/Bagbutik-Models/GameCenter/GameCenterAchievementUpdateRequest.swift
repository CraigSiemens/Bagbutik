import Bagbutik_Core
import Foundation

/**
 # GameCenterAchievementUpdateRequest
 The request body you use to update a Game Center achievement.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/gamecenterachievementupdaterequest>
 */
public struct GameCenterAchievementUpdateRequest: Codable, RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        data = try container.decode(Data.self, forKey: .data)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(data, forKey: .data)
    }

    private enum CodingKeys: String, CodingKey {
        case data
    }

    public struct Data: Codable, Identifiable {
        public let id: String
        public var type: String { "gameCenterAchievements" }
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

        public struct Attributes: Codable {
            public var archived: Bool?
            public var points: Int?
            public var referenceName: String?
            public var repeatable: Bool?
            public var showBeforeEarned: Bool?

            public init(archived: Bool? = nil,
                        points: Int? = nil,
                        referenceName: String? = nil,
                        repeatable: Bool? = nil,
                        showBeforeEarned: Bool? = nil)
            {
                self.archived = archived
                self.points = points
                self.referenceName = referenceName
                self.repeatable = repeatable
                self.showBeforeEarned = showBeforeEarned
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                archived = try container.decodeIfPresent(Bool.self, forKey: .archived)
                points = try container.decodeIfPresent(Int.self, forKey: .points)
                referenceName = try container.decodeIfPresent(String.self, forKey: .referenceName)
                repeatable = try container.decodeIfPresent(Bool.self, forKey: .repeatable)
                showBeforeEarned = try container.decodeIfPresent(Bool.self, forKey: .showBeforeEarned)
            }

            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                try container.encodeIfPresent(archived, forKey: .archived)
                try container.encodeIfPresent(points, forKey: .points)
                try container.encodeIfPresent(referenceName, forKey: .referenceName)
                try container.encodeIfPresent(repeatable, forKey: .repeatable)
                try container.encodeIfPresent(showBeforeEarned, forKey: .showBeforeEarned)
            }

            private enum CodingKeys: String, CodingKey {
                case archived
                case points
                case referenceName
                case repeatable
                case showBeforeEarned
            }
        }
    }
}
