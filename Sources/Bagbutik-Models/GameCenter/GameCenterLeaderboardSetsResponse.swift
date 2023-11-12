import Bagbutik_Core
import Foundation

/**
 # GameCenterLeaderboardSetsResponse
 A response that contains multiple leaderboard set resources.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/gamecenterleaderboardsetsresponse>
 */
public struct GameCenterLeaderboardSetsResponse: PagedResponse {
    public typealias Data = GameCenterLeaderboardSet

    public let data: [GameCenterLeaderboardSet]
    public var included: [Included]?
    public let links: PagedDocumentLinks
    public var meta: PagingInformation?

    public init(data: [GameCenterLeaderboardSet],
                included: [Included]? = nil,
                links: PagedDocumentLinks,
                meta: PagingInformation? = nil)
    {
        self.data = data
        self.included = included
        self.links = links
        self.meta = meta
    }

    public func getGameCenterDetail(for gameCenterLeaderboardSet: GameCenterLeaderboardSet) -> GameCenterDetail? {
        included?.compactMap { relationship -> GameCenterDetail? in
            guard case let .gameCenterDetail(gameCenterDetail) = relationship else { return nil }
            return gameCenterDetail
        }.first { $0.id == gameCenterLeaderboardSet.relationships?.gameCenterDetail?.data?.id }
    }

    public func getGameCenterGroup(for gameCenterLeaderboardSet: GameCenterLeaderboardSet) -> GameCenterGroup? {
        included?.compactMap { relationship -> GameCenterGroup? in
            guard case let .gameCenterGroup(gameCenterGroup) = relationship else { return nil }
            return gameCenterGroup
        }.first { $0.id == gameCenterLeaderboardSet.relationships?.gameCenterGroup?.data?.id }
    }

    public func getGameCenterLeaderboards(for gameCenterLeaderboardSet: GameCenterLeaderboardSet) -> [GameCenterLeaderboard] {
        guard let gameCenterLeaderboardIds = gameCenterLeaderboardSet.relationships?.gameCenterLeaderboards?.data?.map(\.id),
              let gameCenterLeaderboards = included?.compactMap({ relationship -> GameCenterLeaderboard? in
                  guard case let .gameCenterLeaderboard(gameCenterLeaderboard) = relationship else { return nil }
                  return gameCenterLeaderboardIds.contains(gameCenterLeaderboard.id) ? gameCenterLeaderboard : nil
              })
        else {
            return []
        }
        return gameCenterLeaderboards
    }

    public func getGroupLeaderboardSet(for gameCenterLeaderboardSet: GameCenterLeaderboardSet) -> GameCenterLeaderboardSet? {
        included?.compactMap { relationship -> GameCenterLeaderboardSet? in
            guard case let .gameCenterLeaderboardSet(groupLeaderboardSet) = relationship else { return nil }
            return groupLeaderboardSet
        }.first { $0.id == gameCenterLeaderboardSet.relationships?.groupLeaderboardSet?.data?.id }
    }

    public func getLocalizations(for gameCenterLeaderboardSet: GameCenterLeaderboardSet) -> [GameCenterLeaderboardSetLocalization] {
        guard let localizationIds = gameCenterLeaderboardSet.relationships?.localizations?.data?.map(\.id),
              let localizations = included?.compactMap({ relationship -> GameCenterLeaderboardSetLocalization? in
                  guard case let .gameCenterLeaderboardSetLocalization(localization) = relationship else { return nil }
                  return localizationIds.contains(localization.id) ? localization : nil
              })
        else {
            return []
        }
        return localizations
    }

    public func getReleases(for gameCenterLeaderboardSet: GameCenterLeaderboardSet) -> [GameCenterLeaderboardSetRelease] {
        guard let releaseIds = gameCenterLeaderboardSet.relationships?.releases?.data?.map(\.id),
              let releases = included?.compactMap({ relationship -> GameCenterLeaderboardSetRelease? in
                  guard case let .gameCenterLeaderboardSetRelease(release) = relationship else { return nil }
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
        case gameCenterLeaderboardSet(GameCenterLeaderboardSet)
        case gameCenterLeaderboardSetLocalization(GameCenterLeaderboardSetLocalization)
        case gameCenterLeaderboardSetRelease(GameCenterLeaderboardSetRelease)
    }
}
