import Bagbutik_Core
import Foundation

/**
 # GameCenterLeaderboardSetLocalizationUpdateRequest
 The request body you use to update a leaderboard localization.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/gamecenterleaderboardsetlocalizationupdaterequest>
 */
public struct GameCenterLeaderboardSetLocalizationUpdateRequest: RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    public struct Data: Identifiable {
        public let id: String
        public var type: String { "gameCenterLeaderboardSetLocalizations" }
        public var attributes: Attributes?

        public init(id: String,
                    attributes: Attributes? = nil)
        {
            self.id = id
            self.attributes = attributes
        }

        public struct Attributes {
            public var name: String?

            public init(name: String? = nil) {
                self.name = name
            }
        }
    }
}
