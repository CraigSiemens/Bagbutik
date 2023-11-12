import Bagbutik_Core
import Foundation

/**
 # GameCenterMatchmakingRuleSetTestCreateRequest
 The request body for testing the rules in a rule set.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/gamecentermatchmakingrulesettestcreaterequest>
 */
public struct GameCenterMatchmakingRuleSetTestCreateRequest: RequestBody {
    /// The data structure for the request body.
    public let data: Data
    /// The resource objects that Game Center uses in the test.
    public var included: [Included]?

    public init(data: Data,
                included: [Included]? = nil)
    {
        self.data = data
        self.included = included
    }

    /**
     # GameCenterMatchmakingRuleSetTestCreateRequest.Data
     The data structure of the request body for testing a rule set.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/gamecentermatchmakingrulesettestcreaterequest/data>
     */
    public struct Data {
        public var type: String { "gameCenterMatchmakingRuleSetTests" }
        public let relationships: Relationships

        public init(relationships: Relationships) {
            self.relationships = relationships
        }

        /**
         # GameCenterMatchmakingRuleSetTestCreateRequest.Data.Relationships
         The relationships of the rule set to other objects.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/gamecentermatchmakingrulesettestcreaterequest/data/relationships>
         */
        public struct Relationships {
            public let matchmakingRequests: MatchmakingRequests
            public let matchmakingRuleSet: MatchmakingRuleSet

            public init(matchmakingRequests: MatchmakingRequests,
                        matchmakingRuleSet: MatchmakingRuleSet)
            {
                self.matchmakingRequests = matchmakingRequests
                self.matchmakingRuleSet = matchmakingRuleSet
            }

            /**
             # GameCenterMatchmakingRuleSetTestCreateRequest.Data.Relationships.MatchmakingRequests
             The data structure representing the sample match requests.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/gamecentermatchmakingrulesettestcreaterequest/data/relationships/matchmakingrequests>
             */
            public struct MatchmakingRequests {
                public let data: [Data]

                public init(data: [Data]) {
                    self.data = data
                }

                /**
                 # GameCenterMatchmakingRuleSetTestCreateRequest.Data.Relationships.MatchmakingRequests.Data
                 The resource object for a match request.

                 Full documentation:
                 <https://developer.apple.com/documentation/appstoreconnectapi/gamecentermatchmakingrulesettestcreaterequest/data/relationships/matchmakingrequests/data>
                 */
                public struct Data: Identifiable {
                    /// The identifier for a ``GameCenterMatchmakingTestRequestInlineCreate`` resource object that you add to the `included` field of the request body.
                    public let id: String
                    /// The type of resource object.
                    public var type: String { "gameCenterMatchmakingTestRequests" }

                    public init(id: String) {
                        self.id = id
                    }
                }
            }

            /**
             # GameCenterMatchmakingRuleSetTestCreateRequest.Data.Relationships.MatchmakingRuleSet
             The data structure representation of the rule set to test.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/gamecentermatchmakingrulesettestcreaterequest/data/relationships/matchmakingruleset>
             */
            public struct MatchmakingRuleSet {
                public let data: Data

                public init(data: Data) {
                    self.data = data
                }

                /**
                 # GameCenterMatchmakingRuleSetTestCreateRequest.Data.Relationships.MatchmakingRuleSet.Data
                 A resource object for a rule set.

                 Full documentation:
                 <https://developer.apple.com/documentation/appstoreconnectapi/gamecentermatchmakingrulesettestcreaterequest/data/relationships/matchmakingruleset/data>
                 */
                public struct Data: Identifiable {
                    /// The identifier for the rule set that appears in the response when you create it.
                    public let id: String
                    /// The type of resource object.
                    public var type: String { "gameCenterMatchmakingRuleSets" }

                    public init(id: String) {
                        self.id = id
                    }
                }
            }
        }
    }

    public enum Included {
        case gameCenterMatchmakingTestPlayerPropertyInlineCreate(GameCenterMatchmakingTestPlayerPropertyInlineCreate)
        case gameCenterMatchmakingTestRequestInlineCreate(GameCenterMatchmakingTestRequestInlineCreate)
    }
}
