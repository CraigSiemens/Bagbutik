import Bagbutik_Core
import Foundation

/**
 # GameCenterLeaderboardsResponse
 A response that contains multiple leaderboard resources.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/gamecenterleaderboardsresponse>
 */
public struct GameCenterLeaderboardsResponse: PagedResponse {
    public typealias Data = GameCenterLeaderboard

    public let data: [GameCenterLeaderboard]
    public var included: [Included]?
    public let links: PagedDocumentLinks
    public var meta: PagingInformation?

    public init(data: [GameCenterLeaderboard],
                included: [Included]? = nil,
                links: PagedDocumentLinks,
                meta: PagingInformation? = nil)
    {
        self.data = data
        self.included = included
        self.links = links
        self.meta = meta
    }

    public func getGameCenterDetail(for gameCenterLeaderboard: GameCenterLeaderboard) -> GameCenterDetail? {
        included?.compactMap { relationship -> GameCenterDetail? in
            guard case let .gameCenterDetail(gameCenterDetail) = relationship else { return nil }
            return gameCenterDetail
        }.first { $0.id == gameCenterLeaderboard.relationships?.gameCenterDetail?.data?.id }
    }

    public func getGameCenterGroup(for gameCenterLeaderboard: GameCenterLeaderboard) -> GameCenterGroup? {
        included?.compactMap { relationship -> GameCenterGroup? in
            guard case let .gameCenterGroup(gameCenterGroup) = relationship else { return nil }
            return gameCenterGroup
        }.first { $0.id == gameCenterLeaderboard.relationships?.gameCenterGroup?.data?.id }
    }

    public func getGameCenterLeaderboardSets(for gameCenterLeaderboard: GameCenterLeaderboard) -> [GameCenterLeaderboardSet] {
        guard let gameCenterLeaderboardSetIds = gameCenterLeaderboard.relationships?.gameCenterLeaderboardSets?.data?.map(\.id),
              let gameCenterLeaderboardSets = included?.compactMap({ relationship -> GameCenterLeaderboardSet? in
                  guard case let .gameCenterLeaderboardSet(gameCenterLeaderboardSet) = relationship else { return nil }
                  return gameCenterLeaderboardSetIds.contains(gameCenterLeaderboardSet.id) ? gameCenterLeaderboardSet : nil
              })
        else {
            return []
        }
        return gameCenterLeaderboardSets
    }

    public func getGroupLeaderboard(for gameCenterLeaderboard: GameCenterLeaderboard) -> GameCenterLeaderboard? {
        included?.compactMap { relationship -> GameCenterLeaderboard? in
            guard case let .gameCenterLeaderboard(groupLeaderboard) = relationship else { return nil }
            return groupLeaderboard
        }.first { $0.id == gameCenterLeaderboard.relationships?.groupLeaderboard?.data?.id }
    }

    public func getLocalizations(for gameCenterLeaderboard: GameCenterLeaderboard) -> [GameCenterLeaderboardLocalization] {
        guard let localizationIds = gameCenterLeaderboard.relationships?.localizations?.data?.map(\.id),
              let localizations = included?.compactMap({ relationship -> GameCenterLeaderboardLocalization? in
                  guard case let .gameCenterLeaderboardLocalization(localization) = relationship else { return nil }
                  return localizationIds.contains(localization.id) ? localization : nil
              })
        else {
            return []
        }
        return localizations
    }

    public func getReleases(for gameCenterLeaderboard: GameCenterLeaderboard) -> [GameCenterLeaderboardRelease] {
        guard let releaseIds = gameCenterLeaderboard.relationships?.releases?.data?.map(\.id),
              let releases = included?.compactMap({ relationship -> GameCenterLeaderboardRelease? in
                  guard case let .gameCenterLeaderboardRelease(release) = relationship else { return nil }
                  return releaseIds.contains(release.id) ? release : nil
              })
        else {
            return []
        }
        return releases
    }

    public enum Included {
        case gameCenterDetail(GameCenterDetail)
        case gameCenterGroup(GameCenterGroup)
        case gameCenterLeaderboard(GameCenterLeaderboard)
        case gameCenterLeaderboardLocalization(GameCenterLeaderboardLocalization)
        case gameCenterLeaderboardRelease(GameCenterLeaderboardRelease)
        case gameCenterLeaderboardSet(GameCenterLeaderboardSet)
    }
}
