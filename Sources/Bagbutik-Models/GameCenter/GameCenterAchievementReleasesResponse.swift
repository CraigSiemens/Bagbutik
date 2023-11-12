import Bagbutik_Core
import Foundation

/**
 # GameCenterAchievementReleasesResponse
 A response that contains a list of achievement release resources.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/gamecenterachievementreleasesresponse>
 */
public struct GameCenterAchievementReleasesResponse: PagedResponse {
    public typealias Data = GameCenterAchievementRelease

    public let data: [GameCenterAchievementRelease]
    public var included: [Included]?
    public let links: PagedDocumentLinks
    public var meta: PagingInformation?

    public init(data: [GameCenterAchievementRelease],
                included: [Included]? = nil,
                links: PagedDocumentLinks,
                meta: PagingInformation? = nil)
    {
        self.data = data
        self.included = included
        self.links = links
        self.meta = meta
    }

    public func getGameCenterAchievement(for gameCenterAchievementRelease: GameCenterAchievementRelease) -> GameCenterAchievement? {
        included?.compactMap { relationship -> GameCenterAchievement? in
            guard case let .gameCenterAchievement(gameCenterAchievement) = relationship else { return nil }
            return gameCenterAchievement
        }.first { $0.id == gameCenterAchievementRelease.relationships?.gameCenterAchievement?.data?.id }
    }

    public func getGameCenterDetail(for gameCenterAchievementRelease: GameCenterAchievementRelease) -> GameCenterDetail? {
        included?.compactMap { relationship -> GameCenterDetail? in
            guard case let .gameCenterDetail(gameCenterDetail) = relationship else { return nil }
            return gameCenterDetail
        }.first { $0.id == gameCenterAchievementRelease.relationships?.gameCenterDetail?.data?.id }
    }

    public enum Included {
        case gameCenterAchievement(GameCenterAchievement)
        case gameCenterDetail(GameCenterDetail)
    }
}
