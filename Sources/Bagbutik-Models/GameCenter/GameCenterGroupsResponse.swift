import Bagbutik_Core
import Foundation

/**
 # GameCenterGroupsResponse
 A response that contains one or more groups.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/gamecentergroupsresponse>
 */
public struct GameCenterGroupsResponse: PagedResponse {
    public typealias Data = GameCenterGroup

    public let data: [GameCenterGroup]
    public var included: [Included]?
    public let links: PagedDocumentLinks
    public var meta: PagingInformation?

    public init(data: [GameCenterGroup],
                included: [Included]? = nil,
                links: PagedDocumentLinks,
                meta: PagingInformation? = nil)
    {
        self.data = data
        self.included = included
        self.links = links
        self.meta = meta
    }

    public func getGameCenterAchievements(for gameCenterGroup: GameCenterGroup) -> [GameCenterAchievement] {
        guard let gameCenterAchievementIds = gameCenterGroup.relationships?.gameCenterAchievements?.data?.map(\.id),
              let gameCenterAchievements = included?.compactMap({ relationship -> GameCenterAchievement? in
                  guard case let .gameCenterAchievement(gameCenterAchievement) = relationship else { return nil }
                  return gameCenterAchievementIds.contains(gameCenterAchievement.id) ? gameCenterAchievement : nil
              })
        else {
            return []
        }
        return gameCenterAchievements
    }

    public func getGameCenterDetails(for gameCenterGroup: GameCenterGroup) -> [GameCenterDetail] {
        guard let gameCenterDetailIds = gameCenterGroup.relationships?.gameCenterDetails?.data?.map(\.id),
              let gameCenterDetails = included?.compactMap({ relationship -> GameCenterDetail? in
                  guard case let .gameCenterDetail(gameCenterDetail) = relationship else { return nil }
                  return gameCenterDetailIds.contains(gameCenterDetail.id) ? gameCenterDetail : nil
              })
        else {
            return []
        }
        return gameCenterDetails
    }

    public func getGameCenterLeaderboardSets(for gameCenterGroup: GameCenterGroup) -> [GameCenterLeaderboardSet] {
        guard let gameCenterLeaderboardSetIds = gameCenterGroup.relationships?.gameCenterLeaderboardSets?.data?.map(\.id),
              let gameCenterLeaderboardSets = included?.compactMap({ relationship -> GameCenterLeaderboardSet? in
                  guard case let .gameCenterLeaderboardSet(gameCenterLeaderboardSet) = relationship else { return nil }
                  return gameCenterLeaderboardSetIds.contains(gameCenterLeaderboardSet.id) ? gameCenterLeaderboardSet : nil
              })
        else {
            return []
        }
        return gameCenterLeaderboardSets
    }

    public func getGameCenterLeaderboards(for gameCenterGroup: GameCenterGroup) -> [GameCenterLeaderboard] {
        guard let gameCenterLeaderboardIds = gameCenterGroup.relationships?.gameCenterLeaderboards?.data?.map(\.id),
              let gameCenterLeaderboards = included?.compactMap({ relationship -> GameCenterLeaderboard? in
                  guard case let .gameCenterLeaderboard(gameCenterLeaderboard) = relationship else { return nil }
                  return gameCenterLeaderboardIds.contains(gameCenterLeaderboard.id) ? gameCenterLeaderboard : nil
              })
        else {
            return []
        }
        return gameCenterLeaderboards
    }

    public enum Included {
        case gameCenterAchievement(GameCenterAchievement)
        case gameCenterDetail(GameCenterDetail)
        case gameCenterLeaderboard(GameCenterLeaderboard)
        case gameCenterLeaderboardSet(GameCenterLeaderboardSet)
    }
}
