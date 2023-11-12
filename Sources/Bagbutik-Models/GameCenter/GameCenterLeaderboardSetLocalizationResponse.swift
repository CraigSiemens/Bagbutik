import Bagbutik_Core
import Foundation

/**
 # GameCenterLeaderboardSetLocalizationResponse
 A response that contains a single leaderboard set localization resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/gamecenterleaderboardsetlocalizationresponse>
 */
public struct GameCenterLeaderboardSetLocalizationResponse: Codable {
    public let data: GameCenterLeaderboardSetLocalization
    public var included: [Included]?
    public let links: DocumentLinks

    public init(data: GameCenterLeaderboardSetLocalization,
                included: [Included]? = nil,
                links: DocumentLinks)
    {
        self.data = data
        self.included = included
        self.links = links
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        data = try container.decode(GameCenterLeaderboardSetLocalization.self, forKey: .data)
        included = try container.decodeIfPresent([Included].self, forKey: .included)
        links = try container.decode(DocumentLinks.self, forKey: .links)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(data, forKey: .data)
        try container.encodeIfPresent(included, forKey: .included)
        try container.encode(links, forKey: .links)
    }

    private enum CodingKeys: String, CodingKey {
        case data
        case included
        case links
    }

    public func getGameCenterLeaderboardSet() -> GameCenterLeaderboardSet? {
        included?.compactMap { relationship -> GameCenterLeaderboardSet? in
            guard case let .gameCenterLeaderboardSet(gameCenterLeaderboardSet) = relationship else { return nil }
            return gameCenterLeaderboardSet
        }.first { $0.id == data.relationships?.gameCenterLeaderboardSet?.data?.id }
    }

    public func getGameCenterLeaderboardSetImage() -> GameCenterLeaderboardSetImage? {
        included?.compactMap { relationship -> GameCenterLeaderboardSetImage? in
            guard case let .gameCenterLeaderboardSetImage(gameCenterLeaderboardSetImage) = relationship else { return nil }
            return gameCenterLeaderboardSetImage
        }.first { $0.id == data.relationships?.gameCenterLeaderboardSetImage?.data?.id }
    }

    public enum Included: Codable {
        case gameCenterLeaderboardSet(GameCenterLeaderboardSet)
        case gameCenterLeaderboardSetImage(GameCenterLeaderboardSetImage)

        public init(from decoder: Decoder) throws {
            if let gameCenterLeaderboardSet = try? GameCenterLeaderboardSet(from: decoder) {
                self = .gameCenterLeaderboardSet(gameCenterLeaderboardSet)
            } else if let gameCenterLeaderboardSetImage = try? GameCenterLeaderboardSetImage(from: decoder) {
                self = .gameCenterLeaderboardSetImage(gameCenterLeaderboardSetImage)
            } else {
                throw DecodingError.typeMismatch(Included.self, DecodingError.Context(codingPath: decoder.codingPath,
                                                                                      debugDescription: "Unknown Included"))
            }
        }

        public func encode(to encoder: Encoder) throws {
            switch self {
            case let .gameCenterLeaderboardSet(value):
                try value.encode(to: encoder)
            case let .gameCenterLeaderboardSetImage(value):
                try value.encode(to: encoder)
            }
        }

        private enum CodingKeys: String, CodingKey {
            case type
        }
    }
}
