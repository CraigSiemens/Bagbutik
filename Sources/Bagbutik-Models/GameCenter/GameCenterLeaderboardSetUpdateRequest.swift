import Bagbutik_Core
import Foundation

/**
 # GameCenterLeaderboardSetUpdateRequest
 The request body you use to update a leaderboard set.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/gamecenterleaderboardsetupdaterequest>
 */
public struct GameCenterLeaderboardSetUpdateRequest: RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    public struct Data: Identifiable {
        public let id: String
        public var type: String { "gameCenterLeaderboardSets" }
        public var attributes: Attributes?

        public init(id: String,
                    attributes: Attributes? = nil)
        {
            self.id = id
            self.attributes = attributes
        }

        public struct Attributes {
            public var referenceName: String?

            public init(referenceName: String? = nil) {
                self.referenceName = referenceName
            }
        }
    }
}
