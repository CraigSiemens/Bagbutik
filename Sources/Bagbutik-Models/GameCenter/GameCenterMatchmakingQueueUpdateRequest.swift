import Bagbutik_Core
import Foundation

/**
 # GameCenterMatchmakingQueueUpdateRequest
 The request body you use to modify a queue.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/gamecentermatchmakingqueueupdaterequest>
 */
public struct GameCenterMatchmakingQueueUpdateRequest: RequestBody {
    /// The data structure of the request body.
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    /**
     # GameCenterMatchmakingQueueUpdateRequest.Data
     The data structure of the request body you use to modify a queue.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/gamecentermatchmakingqueueupdaterequest/data>
     */
    public struct Data: Identifiable {
        /// The unique identifier for the queue.
        public let id: String
        /// The type of resource.
        public var type: String { "gameCenterMatchmakingQueues" }
        public var relationships: Relationships?

        public init(id: String,
                    relationships: Relationships? = nil)
        {
            self.id = id
            self.relationships = relationships
        }

        /**
         # GameCenterMatchmakingQueueUpdateRequest.Data.Relationships
         The rule sets related to the queue.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/gamecentermatchmakingqueueupdaterequest/data/relationships>
         */
        public struct Relationships {
            /// A rule set for testing the queue.
            public var experimentRuleSet: ExperimentRuleSet?
            /// The rule set for this queue.
            public var ruleSet: RuleSet?

            public init(experimentRuleSet: ExperimentRuleSet? = nil,
                        ruleSet: RuleSet? = nil)
            {
                self.experimentRuleSet = experimentRuleSet
                self.ruleSet = ruleSet
            }

            /**
             # GameCenterMatchmakingQueueUpdateRequest.Data.Relationships.ExperimentRuleSet
             The rule set for testing the queue.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/gamecentermatchmakingqueueupdaterequest/data/relationships/experimentruleset>
             */
            public struct ExperimentRuleSet {
                @NullCodable public var data: Data?

                public init(data: Data? = nil) {
                    self.data = data
                }

                /**
                 # GameCenterMatchmakingQueueUpdateRequest.Data.Relationships.ExperimentRuleSet.Data
                 The data structure for the experimental rule set.

                 Full documentation:
                 <https://developer.apple.com/documentation/appstoreconnectapi/gamecentermatchmakingqueueupdaterequest/data/relationships/experimentruleset/data>
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

            /**
             # GameCenterMatchmakingQueueUpdateRequest.Data.Relationships.RuleSet
             The rule set associated with the queue.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/gamecentermatchmakingqueueupdaterequest/data/relationships/ruleset>
             */
            public struct RuleSet {
                @NullCodable public var data: Data?

                public init(data: Data? = nil) {
                    self.data = data
                }

                /**
                 # GameCenterMatchmakingQueueUpdateRequest.Data.Relationships.RuleSet.Data
                 The data structure for the rule set.

                 Full documentation:
                 <https://developer.apple.com/documentation/appstoreconnectapi/gamecentermatchmakingqueueupdaterequest/data/relationships/ruleset/data>
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
