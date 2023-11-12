import Bagbutik_Core
import Foundation

/**
 # GameCenterLeaderboardGroupLeaderboardLinkageRequest
 The request body you use to attach an individual leaderbaord to a group leaderboard.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/gamecenterleaderboardgroupleaderboardlinkagerequest>
 */
public struct GameCenterLeaderboardGroupLeaderboardLinkageRequest: RequestBody {
    @NullCodable public var data: Data?

    public init(data: Data? = nil) {
        self.data = data
    }

    public struct Data: Identifiable {
        public let id: String
        public var type: String { "gameCenterLeaderboards" }

        public init(id: String) {
            self.id = id
        }
    }
}
