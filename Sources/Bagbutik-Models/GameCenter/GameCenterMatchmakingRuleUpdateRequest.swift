import Bagbutik_Core
import Foundation

/**
 # GameCenterMatchmakingRuleUpdateRequest
 The request body you use to modify a rule.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/gamecentermatchmakingruleupdaterequest>
 */
public struct GameCenterMatchmakingRuleUpdateRequest: RequestBody {
    /// The data structure of the request body.
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    /**
     # GameCenterMatchmakingRuleUpdateRequest.Data
     The data structure of the request body you use to modify a rule.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/gamecentermatchmakingruleupdaterequest/data>
     */
    public struct Data: Identifiable {
        /// A unique identifier for the rule.
        public let id: String
        public var type: String { "gameCenterMatchmakingRules" }
        public var attributes: Attributes?

        public init(id: String,
                    attributes: Attributes? = nil)
        {
            self.id = id
            self.attributes = attributes
        }

        /**
         # GameCenterMatchmakingRuleUpdateRequest.Data.Attributes
         The attributes of a rule that you modify.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/gamecentermatchmakingruleupdaterequest/data/attributes>
         */
        public struct Attributes {
            /// A human-readable description of the rule.
            public var description: String?
            /// Code that returns a Boolean or numeric value that the matchmaking rules algorithm executes to compare or filter match requests.
            public var expression: String?
            /// A numeric value for the rule when `type` is either `DISTANCE` or `MATCH`.
            public var weight: Double?

            public init(description: String? = nil,
                        expression: String? = nil,
                        weight: Double? = nil)
            {
                self.description = description
                self.expression = expression
                self.weight = weight
            }
        }
    }
}
