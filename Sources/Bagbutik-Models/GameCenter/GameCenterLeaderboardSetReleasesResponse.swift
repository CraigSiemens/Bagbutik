import Bagbutik_Core
import Foundation

/**
 # GameCenterLeaderboardSetReleasesResponse
 A response that contains multiple leaderboard set release resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/gamecenterleaderboardsetreleasesresponse>
 */
public struct GameCenterLeaderboardSetReleasesResponse: PagedResponse {
    public typealias Data = GameCenterLeaderboardSetRelease

    public let data: [GameCenterLeaderboardSetRelease]
    public var included: [Included]?
    public let links: PagedDocumentLinks
    public var meta: PagingInformation?

    public init(data: [GameCenterLeaderboardSetRelease],
                included: [Included]? = nil,
                links: PagedDocumentLinks,
                meta: PagingInformation? = nil)
    {
        self.data = data
        self.included = included
        self.links = links
        self.meta = meta
    }

    public func getGameCenterDetail(for gameCenterLeaderboardSetRelease: GameCenterLeaderboardSetRelease) -> GameCenterDetail? {
        included?.compactMap { relationship -> GameCenterDetail? in
            guard case let .gameCenterDetail(gameCenterDetail) = relationship else { return nil }
            return gameCenterDetail
        }.first { $0.id == gameCenterLeaderboardSetRelease.relationships?.gameCenterDetail?.data?.id }
    }

    public func getGameCenterLeaderboardSet(for gameCenterLeaderboardSetRelease: GameCenterLeaderboardSetRelease) -> GameCenterLeaderboardSet? {
        included?.compactMap { relationship -> GameCenterLeaderboardSet? in
            guard case let .gameCenterLeaderboardSet(gameCenterLeaderboardSet) = relationship else { return nil }
            return gameCenterLeaderboardSet
        }.first { $0.id == gameCenterLeaderboardSetRelease.relationships?.gameCenterLeaderboardSet?.data?.id }
    }

    public enum Included {
        case gameCenterDetail(GameCenterDetail)
        case gameCenterLeaderboardSet(GameCenterLeaderboardSet)
    }
}
