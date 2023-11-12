import Bagbutik_Core
import Foundation

/**
 # GameCenterDetailsResponse
 A response that contains a list of Game Center detail resources.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/gamecenterdetailsresponse>
 */
public struct GameCenterDetailsResponse: PagedResponse {
    public typealias Data = GameCenterDetail

    public let data: [GameCenterDetail]
    public var included: [Included]?
    public let links: PagedDocumentLinks
    public var meta: PagingInformation?

    public init(data: [GameCenterDetail],
                included: [Included]? = nil,
                links: PagedDocumentLinks,
                meta: PagingInformation? = nil)
    {
        self.data = data
        self.included = included
        self.links = links
        self.meta = meta
    }

    public func getAchievementReleases(for gameCenterDetail: GameCenterDetail) -> [GameCenterAchievementRelease] {
        guard let achievementReleaseIds = gameCenterDetail.relationships?.achievementReleases?.data?.map(\.id),
              let achievementReleases = included?.compactMap({ relationship -> GameCenterAchievementRelease? in
                  guard case let .gameCenterAchievementRelease(achievementRelease) = relationship else { return nil }
                  return achievementReleaseIds.contains(achievementRelease.id) ? achievementRelease : nil
              })
        else {
            return []
        }
        return achievementReleases
    }

    public func getApp(for gameCenterDetail: GameCenterDetail) -> App? {
        included?.compactMap { relationship -> App? in
            guard case let .app(app) = relationship else { return nil }
            return app
        }.first { $0.id == gameCenterDetail.relationships?.app?.data?.id }
    }

    public func getDefaultGroupLeaderboard(for gameCenterDetail: GameCenterDetail) -> GameCenterLeaderboard? {
        included?.compactMap { relationship -> GameCenterLeaderboard? in
            guard case let .gameCenterLeaderboard(defaultGroupLeaderboard) = relationship else { return nil }
            return defaultGroupLeaderboard
        }.first { $0.id == gameCenterDetail.relationships?.defaultGroupLeaderboard?.data?.id }
    }

    public func getDefaultLeaderboard(for gameCenterDetail: GameCenterDetail) -> GameCenterLeaderboard? {
        included?.compactMap { relationship -> GameCenterLeaderboard? in
            guard case let .gameCenterLeaderboard(defaultLeaderboard) = relationship else { return nil }
            return defaultLeaderboard
        }.first { $0.id == gameCenterDetail.relationships?.defaultLeaderboard?.data?.id }
    }

    public func getGameCenterAchievements(for gameCenterDetail: GameCenterDetail) -> [GameCenterAchievement] {
        guard let gameCenterAchievementIds = gameCenterDetail.relationships?.gameCenterAchievements?.data?.map(\.id),
              let gameCenterAchievements = included?.compactMap({ relationship -> GameCenterAchievement? in
                  guard case let .gameCenterAchievement(gameCenterAchievement) = relationship else { return nil }
                  return gameCenterAchievementIds.contains(gameCenterAchievement.id) ? gameCenterAchievement : nil
              })
        else {
            return []
        }
        return gameCenterAchievements
    }

    public func getGameCenterAppVersions(for gameCenterDetail: GameCenterDetail) -> [GameCenterAppVersion] {
        guard let gameCenterAppVersionIds = gameCenterDetail.relationships?.gameCenterAppVersions?.data?.map(\.id),
              let gameCenterAppVersions = included?.compactMap({ relationship -> GameCenterAppVersion? in
                  guard case let .gameCenterAppVersion(gameCenterAppVersion) = relationship else { return nil }
                  return gameCenterAppVersionIds.contains(gameCenterAppVersion.id) ? gameCenterAppVersion : nil
              })
        else {
            return []
        }
        return gameCenterAppVersions
    }

    public func getGameCenterGroup(for gameCenterDetail: GameCenterDetail) -> GameCenterGroup? {
        included?.compactMap { relationship -> GameCenterGroup? in
            guard case let .gameCenterGroup(gameCenterGroup) = relationship else { return nil }
            return gameCenterGroup
        }.first { $0.id == gameCenterDetail.relationships?.gameCenterGroup?.data?.id }
    }

    public func getGameCenterLeaderboardSets(for gameCenterDetail: GameCenterDetail) -> [GameCenterLeaderboardSet] {
        guard let gameCenterLeaderboardSetIds = gameCenterDetail.relationships?.gameCenterLeaderboardSets?.data?.map(\.id),
              let gameCenterLeaderboardSets = included?.compactMap({ relationship -> GameCenterLeaderboardSet? in
                  guard case let .gameCenterLeaderboardSet(gameCenterLeaderboardSet) = relationship else { return nil }
                  return gameCenterLeaderboardSetIds.contains(gameCenterLeaderboardSet.id) ? gameCenterLeaderboardSet : nil
              })
        else {
            return []
        }
        return gameCenterLeaderboardSets
    }

    public func getGameCenterLeaderboards(for gameCenterDetail: GameCenterDetail) -> [GameCenterLeaderboard] {
        guard let gameCenterLeaderboardIds = gameCenterDetail.relationships?.gameCenterLeaderboards?.data?.map(\.id),
              let gameCenterLeaderboards = included?.compactMap({ relationship -> GameCenterLeaderboard? in
                  guard case let .gameCenterLeaderboard(gameCenterLeaderboard) = relationship else { return nil }
                  return gameCenterLeaderboardIds.contains(gameCenterLeaderboard.id) ? gameCenterLeaderboard : nil
              })
        else {
            return []
        }
        return gameCenterLeaderboards
    }

    public func getLeaderboardReleases(for gameCenterDetail: GameCenterDetail) -> [GameCenterLeaderboardRelease] {
        guard let leaderboardReleaseIds = gameCenterDetail.relationships?.leaderboardReleases?.data?.map(\.id),
              let leaderboardReleases = included?.compactMap({ relationship -> GameCenterLeaderboardRelease? in
                  guard case let .gameCenterLeaderboardRelease(leaderboardRelease) = relationship else { return nil }
                  return leaderboardReleaseIds.contains(leaderboardRelease.id) ? leaderboardRelease : nil
              })
        else {
            return []
        }
        return leaderboardReleases
    }

    public func getLeaderboardSetReleases(for gameCenterDetail: GameCenterDetail) -> [GameCenterLeaderboardSetRelease] {
        guard let leaderboardSetReleaseIds = gameCenterDetail.relationships?.leaderboardSetReleases?.data?.map(\.id),
              let leaderboardSetReleases = included?.compactMap({ relationship -> GameCenterLeaderboardSetRelease? in
                  guard case let .gameCenterLeaderboardSetRelease(leaderboardSetRelease) = relationship else { return nil }
                  return leaderboardSetReleaseIds.contains(leaderboardSetRelease.id) ? leaderboardSetRelease : nil
              })
        else {
            return []
        }
        return leaderboardSetReleases
    }

    public enum Included {
        case app(App)
        case gameCenterAchievement(GameCenterAchievement)
        case gameCenterAchievementRelease(GameCenterAchievementRelease)
        case gameCenterAppVersion(GameCenterAppVersion)
        case gameCenterGroup(GameCenterGroup)
        case gameCenterLeaderboard(GameCenterLeaderboard)
        case gameCenterLeaderboardRelease(GameCenterLeaderboardRelease)
        case gameCenterLeaderboardSet(GameCenterLeaderboardSet)
        case gameCenterLeaderboardSetRelease(GameCenterLeaderboardSetRelease)
    }
}
