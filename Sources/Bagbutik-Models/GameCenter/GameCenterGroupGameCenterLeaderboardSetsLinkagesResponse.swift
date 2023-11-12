import Bagbutik_Core
import Foundation

/**
 # GameCenterGroupGameCenterLeaderboardSetsLinkagesResponse
 A response that confirms a relationship between a group and leaderboard set.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/gamecentergroupgamecenterleaderboardsetslinkagesresponse>
 */
public struct GameCenterGroupGameCenterLeaderboardSetsLinkagesResponse: PagedResponse {
    public let data: [Data]
    public let links: PagedDocumentLinks
    public var meta: PagingInformation?

    public init(data: [Data],
                links: PagedDocumentLinks,
                meta: PagingInformation? = nil)
    {
        self.data = data
        self.links = links
        self.meta = meta
    }

    public struct Data: Identifiable {
        public let id: String
        public var type: String { "gameCenterLeaderboardSets" }

        public init(id: String) {
            self.id = id
        }
    }
}
