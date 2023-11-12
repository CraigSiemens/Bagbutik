import Bagbutik_Core
import Foundation

/**
 # GameCenterMatchmakingTeamCreateRequest
 The request body you use to create a team.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/gamecentermatchmakingteamcreaterequest>
 */
public struct GameCenterMatchmakingTeamCreateRequest: RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    /**
     # GameCenterMatchmakingTeamCreateRequest.Data
     The data structure of the request body you use to create a team.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/gamecentermatchmakingteamcreaterequest/data>
     */
    public struct Data {
        public var type: String { "gameCenterMatchmakingTeams" }
        public let attributes: Attributes
        public let relationships: Relationships

        public init(attributes: Attributes,
                    relationships: Relationships)
        {
            self.attributes = attributes
            self.relationships = relationships
        }

        /**
         # GameCenterMatchmakingTeamCreateRequest.Data.Attributes
         The attributes for a team that you create.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/gamecentermatchmakingteamcreaterequest/data/attributes>
         */
        public struct Attributes {
            /// The maximum number of players on the team.
            public let maxPlayers: Int
            /// The minimum number of players on the team.
            public let minPlayers: Int
            /// A name for the team that’s unique within the scope of its rule set.
            public let referenceName: String

            public init(maxPlayers: Int,
                        minPlayers: Int,
                        referenceName: String)
            {
                self.maxPlayers = maxPlayers
                self.minPlayers = minPlayers
                self.referenceName = referenceName
            }
        }

        /**
         # GameCenterMatchmakingTeamCreateRequest.Data.Relationships
         The relationships from the team to other objects.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/gamecentermatchmakingteamcreaterequest/data/relationships>
         */
        public struct Relationships {
            public let ruleSet: RuleSet

            public init(ruleSet: RuleSet) {
                self.ruleSet = ruleSet
            }

            /**
             # GameCenterMatchmakingTeamCreateRequest.Data.Relationships.RuleSet
             The relationship to the rule set that you provide when you create a team.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/gamecentermatchmakingteamcreaterequest/data/relationships/ruleset>
             */
            public struct RuleSet {
                public let data: Data

                public init(data: Data) {
                    self.data = data
                }

                /**
                 # GameCenterMatchmakingTeamCreateRequest.Data.Relationships.RuleSet.Data
                 The type and ID for the rule set that you’re adding the team to.

                 Full documentation:
                 <https://developer.apple.com/documentation/appstoreconnectapi/gamecentermatchmakingteamcreaterequest/data/relationships/ruleset/data>
                 */
                public struct Data: Identifiable {
                    /// The unique identifier for the rule set.
                    public let id: String
                    /// The type of resource.
                    public var type: String { "gameCenterMatchmakingRuleSets" }

                    public init(id: String) {
                        self.id = id
                    }
                }
            }
        }
    }
}
