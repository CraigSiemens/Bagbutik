import Bagbutik_Core
import Foundation

public struct GameCenterAchievementLocalizationsResponse: PagedResponse {
    public typealias Data = GameCenterAchievementLocalization

    public let data: [GameCenterAchievementLocalization]
    public var included: [Included]?
    public let links: PagedDocumentLinks
    public var meta: PagingInformation?

    public init(data: [GameCenterAchievementLocalization],
                included: [Included]? = nil,
                links: PagedDocumentLinks,
                meta: PagingInformation? = nil)
    {
        self.data = data
        self.included = included
        self.links = links
        self.meta = meta
    }

    public func getGameCenterAchievement(for gameCenterAchievementLocalization: GameCenterAchievementLocalization) -> GameCenterAchievement? {
        included?.compactMap { relationship -> GameCenterAchievement? in
            guard case let .gameCenterAchievement(gameCenterAchievement) = relationship else { return nil }
            return gameCenterAchievement
        }.first { $0.id == gameCenterAchievementLocalization.relationships?.gameCenterAchievement?.data?.id }
    }

    public func getGameCenterAchievementImage(for gameCenterAchievementLocalization: GameCenterAchievementLocalization) -> GameCenterAchievementImage? {
        included?.compactMap { relationship -> GameCenterAchievementImage? in
            guard case let .gameCenterAchievementImage(gameCenterAchievementImage) = relationship else { return nil }
            return gameCenterAchievementImage
        }.first { $0.id == gameCenterAchievementLocalization.relationships?.gameCenterAchievementImage?.data?.id }
    }

    public enum Included {
        case gameCenterAchievement(GameCenterAchievement)
        case gameCenterAchievementImage(GameCenterAchievementImage)
    }
}
