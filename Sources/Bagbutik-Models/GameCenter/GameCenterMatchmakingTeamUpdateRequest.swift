import Bagbutik_Core
import Foundation

/**
 # GameCenterMatchmakingTeamUpdateRequest
 The request body you use to modify a team.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/gamecentermatchmakingteamupdaterequest>
 */
public struct GameCenterMatchmakingTeamUpdateRequest: RequestBody {
    /// The data structure of the request body.
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    /**
     # GameCenterMatchmakingTeamUpdateRequest.Data
     The data structure of the request body you use to modify a team.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/gamecentermatchmakingteamupdaterequest/data>
     */
    public struct Data: Identifiable {
        /// The unique identifier for the team.
        public let id: String
        /// The type of resource object.
        public var type: String { "gameCenterMatchmakingTeams" }
        public var attributes: Attributes?

        public init(id: String,
                    attributes: Attributes? = nil)
        {
            self.id = id
            self.attributes = attributes
        }

        /**
         # GameCenterMatchmakingTeamUpdateRequest.Data.Attributes
         The attributes of a team that you modify.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/gamecentermatchmakingteamupdaterequest/data/attributes>
         */
        public struct Attributes {
            /// The maximum number of players on the team.
            public var maxPlayers: Int?
            /// The minimum number of players on the team.
            public var minPlayers: Int?

            public init(maxPlayers: Int? = nil,
                        minPlayers: Int? = nil)
            {
                self.maxPlayers = maxPlayers
                self.minPlayers = minPlayers
            }
        }
    }
}
