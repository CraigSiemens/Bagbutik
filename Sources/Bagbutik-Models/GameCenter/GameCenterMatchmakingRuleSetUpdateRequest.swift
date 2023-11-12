import Bagbutik_Core
import Foundation

/**
 # GameCenterMatchmakingRuleSetUpdateRequest
 The request body you use to modify a rule set.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/gamecentermatchmakingrulesetupdaterequest>
 */
public struct GameCenterMatchmakingRuleSetUpdateRequest: RequestBody {
    /// The data structure of the request body.
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    /**
     # GameCenterMatchmakingRuleSetUpdateRequest.Data
     The data structure of the request body you use to modify a rule set.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/gamecentermatchmakingrulesetupdaterequest/data>
     */
    public struct Data: Identifiable {
        /// The unique identifier for the rule set.
        public let id: String
        /// The type of resource.
        public var type: String { "gameCenterMatchmakingRuleSets" }
        public var attributes: Attributes?

        public init(id: String,
                    attributes: Attributes? = nil)
        {
            self.id = id
            self.attributes = attributes
        }

        /**
         # GameCenterMatchmakingRuleSetUpdateRequest.Data.Attributes
         The attributes of a rule set that you modify.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/gamecentermatchmakingrulesetupdaterequest/data/attributes>
         */
        public struct Attributes {
            /// The maximum number of players who can join the matches that Game Center finds using these rules.
            public var maxPlayers: Int?
            /// The minimum number of players who can join the matches that Game Center finds using these rules.
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
