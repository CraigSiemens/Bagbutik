import Bagbutik_Core
import Foundation

/**
 # GameCenterMatchmakingRuleSetTest
 The data structure that represents the results of testing a rule set.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/gamecentermatchmakingrulesettest>
 */
public struct GameCenterMatchmakingRuleSetTest: Identifiable {
    /// A unique identifier for the rule set.
    public let id: String
    /// The link representations of the object.
    public var links: ResourceLinks?
    /// The type of resource object.
    public var type: String { "gameCenterMatchmakingRuleSetTests" }
    /// The object attributes.
    public var attributes: Attributes?

    public init(id: String,
                links: ResourceLinks? = nil,
                attributes: Attributes? = nil)
    {
        self.id = id
        self.links = links
        self.attributes = attributes
    }

    /**
     # GameCenterMatchmakingRuleSetTest.Attributes
     The results of testing a rule set.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/gamecentermatchmakingrulesettest/attributes>
     */
    public struct Attributes {
        public var matchmakingResults: [MatchmakingResults]?

        public init(matchmakingResults: [MatchmakingResults]? = nil) {
            self.matchmakingResults = matchmakingResults
        }

        /**
         # GameCenterMatchmakingRuleSetTest.Attributes.MatchmakingResults
         The data structure representing the results of a match request.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/gamecentermatchmakingrulesettest/attributes/matchmakingresults>
         */
        public struct MatchmakingResults {
            /// A unique identifier for the request.
            public var requestName: String?
            /// The assignments of players to teams.
            public var teamAssignments: [GameCenterMatchmakingTeamAssignment]?

            public init(requestName: String? = nil,
                        teamAssignments: [GameCenterMatchmakingTeamAssignment]? = nil)
            {
                self.requestName = requestName
                self.teamAssignments = teamAssignments
            }
        }
    }
}
