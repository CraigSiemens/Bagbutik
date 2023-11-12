import Bagbutik_Core
import Foundation

/**
 # GameCenterLeaderboardReleasesResponse
 A response that contains multiple leaderboard release resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/gamecenterleaderboardreleasesresponse>
 */
public struct GameCenterLeaderboardReleasesResponse: PagedResponse {
    public typealias Data = GameCenterLeaderboardRelease

    public let data: [GameCenterLeaderboardRelease]
    public var included: [Included]?
    public let links: PagedDocumentLinks
    public var meta: PagingInformation?

    public init(data: [GameCenterLeaderboardRelease],
                included: [Included]? = nil,
                links: PagedDocumentLinks,
                meta: PagingInformation? = nil)
    {
        self.data = data
        self.included = included
        self.links = links
        self.meta = meta
    }

    public func getGameCenterDetail(for gameCenterLeaderboardRelease: GameCenterLeaderboardRelease) -> GameCenterDetail? {
        included?.compactMap { relationship -> GameCenterDetail? in
            guard case let .gameCenterDetail(gameCenterDetail) = relationship else { return nil }
            return gameCenterDetail
        }.first { $0.id == gameCenterLeaderboardRelease.relationships?.gameCenterDetail?.data?.id }
    }

    public func getGameCenterLeaderboard(for gameCenterLeaderboardRelease: GameCenterLeaderboardRelease) -> GameCenterLeaderboard? {
        included?.compactMap { relationship -> GameCenterLeaderboard? in
            guard case let .gameCenterLeaderboard(gameCenterLeaderboard) = relationship else { return nil }
            return gameCenterLeaderboard
        }.first { $0.id == gameCenterLeaderboardRelease.relationships?.gameCenterLeaderboard?.data?.id }
    }

    public enum Included {
        case gameCenterDetail(GameCenterDetail)
        case gameCenterLeaderboard(GameCenterLeaderboard)
    }
}
