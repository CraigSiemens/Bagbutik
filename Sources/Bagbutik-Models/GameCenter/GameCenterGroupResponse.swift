import Bagbutik_Core
import Foundation

/**
 # GameCenterGroupResponse
 A response that contains a single group resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/gamecentergroupresponse>
 */
public struct GameCenterGroupResponse {
    public let data: GameCenterGroup
    public var included: [Included]?
    public let links: DocumentLinks

    public init(data: GameCenterGroup,
                included: [Included]? = nil,
                links: DocumentLinks)
    {
        self.data = data
        self.included = included
        self.links = links
    }

    public func getGameCenterAchievements() -> [GameCenterAchievement] {
        guard let gameCenterAchievementIds = data.relationships?.gameCenterAchievements?.data?.map(\.id),
              let gameCenterAchievements = included?.compactMap({ relationship -> GameCenterAchievement? in
                  guard case let .gameCenterAchievement(gameCenterAchievement) = relationship else { return nil }
                  return gameCenterAchievementIds.contains(gameCenterAchievement.id) ? gameCenterAchievement : nil
              })
        else {
            return []
        }
        return gameCenterAchievements
    }

    public func getGameCenterDetails() -> [GameCenterDetail] {
        guard let gameCenterDetailIds = data.relationships?.gameCenterDetails?.data?.map(\.id),
              let gameCenterDetails = included?.compactMap({ relationship -> GameCenterDetail? in
                  guard case let .gameCenterDetail(gameCenterDetail) = relationship else { return nil }
                  return gameCenterDetailIds.contains(gameCenterDetail.id) ? gameCenterDetail : nil
              })
        else {
            return []
        }
        return gameCenterDetails
    }

    public func getGameCenterLeaderboardSets() -> [GameCenterLeaderboardSet] {
        guard let gameCenterLeaderboardSetIds = data.relationships?.gameCenterLeaderboardSets?.data?.map(\.id),
              let gameCenterLeaderboardSets = included?.compactMap({ relationship -> GameCenterLeaderboardSet? in
                  guard case let .gameCenterLeaderboardSet(gameCenterLeaderboardSet) = relationship else { return nil }
                  return gameCenterLeaderboardSetIds.contains(gameCenterLeaderboardSet.id) ? gameCenterLeaderboardSet : nil
              })
        else {
            return []
        }
        return gameCenterLeaderboardSets
    }

    public func getGameCenterLeaderboards() -> [GameCenterLeaderboard] {
        guard let gameCenterLeaderboardIds = data.relationships?.gameCenterLeaderboards?.data?.map(\.id),
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
