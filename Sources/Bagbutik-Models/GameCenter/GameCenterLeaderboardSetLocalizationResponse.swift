import Bagbutik_Core
import Foundation

/**
 # GameCenterLeaderboardSetLocalizationResponse
 A response that contains a single leaderboard set localization resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/gamecenterleaderboardsetlocalizationresponse>
 */
public struct GameCenterLeaderboardSetLocalizationResponse {
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

    public enum Included {
        case gameCenterLeaderboardSet(GameCenterLeaderboardSet)
        case gameCenterLeaderboardSetImage(GameCenterLeaderboardSetImage)
    }
}
