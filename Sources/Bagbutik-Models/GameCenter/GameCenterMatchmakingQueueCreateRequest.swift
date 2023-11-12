import Bagbutik_Core
import Foundation

/**
 # GameCenterMatchmakingQueueCreateRequest
 The request body you use to create a queue.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/gamecentermatchmakingqueuecreaterequest>
 */
public struct GameCenterMatchmakingQueueCreateRequest: RequestBody {
    /// The data structure of the request body.
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    /**
     # GameCenterMatchmakingQueueCreateRequest.Data
     The data structure of the request body you use to create a queue.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/gamecentermatchmakingqueuecreaterequest/data>
     */
    public struct Data {
        public var type: String { "gameCenterMatchmakingQueues" }
        public let attributes: Attributes
        public let relationships: Relationships

        public init(attributes: Attributes,
                    relationships: Relationships)
        {
            self.attributes = attributes
            self.relationships = relationships
        }

        /**
         # GameCenterMatchmakingQueueCreateRequest.Data.Attributes
         The attributes for a queue that you create.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/gamecentermatchmakingqueuecreaterequest/data/attributes>
         */
        public struct Attributes {
            /// A name for the queue that’s unique within the scope of your development team.
            public let referenceName: String

            public init(referenceName: String) {
                self.referenceName = referenceName
            }
        }

        /**
         # GameCenterMatchmakingQueueCreateRequest.Data.Relationships
         The rule sets that you include when creating a queue.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/gamecentermatchmakingqueuecreaterequest/data/relationships>
         */
        public struct Relationships {
            /// The experimental rule set to test the associated rules with live match requests. If you provide an experimental rule set, Game Center processes the match requests in the queue using both the experimental and the required rule set, except that it doesn’t return the results of the experimental rule set to clients. Then compare the results of the experimental rule set with the production rule set using metrics, such as the [List all queues](https://developer.apple.com/documentation/appstoreconnectapi/list_all_queues) and [Read queue information](https://developer.apple.com/documentation/appstoreconnectapi/read_queue_information) endpoints.
            public var experimentRuleSet: ExperimentRuleSet?
            /// The rule set to associate with this queue.
            public let ruleSet: RuleSet

            public init(experimentRuleSet: ExperimentRuleSet? = nil,
                        ruleSet: RuleSet)
            {
                self.experimentRuleSet = experimentRuleSet
                self.ruleSet = ruleSet
            }

            /**
             # GameCenterMatchmakingQueueCreateRequest.Data.Relationships.ExperimentRuleSet
             An experimental rule set for testing this queue.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/gamecentermatchmakingqueuecreaterequest/data/relationships/experimentruleset>
             */
            public struct ExperimentRuleSet {
                /// The data structure for the experimental rule set.
                @NullCodable public var data: Data?

                public init(data: Data? = nil) {
                    self.data = data
                }

                /**
                 # GameCenterMatchmakingQueueCreateRequest.Data.Relationships.ExperimentRuleSet.Data
                 The data structure of the request body for an experimental rule set.

                 Full documentation:
                 <https://developer.apple.com/documentation/appstoreconnectapi/gamecentermatchmakingqueuecreaterequest/data/relationships/experimentruleset/data>
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
             # GameCenterMatchmakingQueueCreateRequest.Data.Relationships.RuleSet
             The rule set associated with the queue.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/gamecentermatchmakingqueuecreaterequest/data/relationships/ruleset>
             */
            public struct RuleSet {
                /// The data structure for the rule set.
                public let data: Data

                public init(data: Data) {
                    self.data = data
                }

                /**
                 # GameCenterMatchmakingQueueCreateRequest.Data.Relationships.RuleSet.Data
                 The data structure of the request body for the rule set.

                 Full documentation:
                 <https://developer.apple.com/documentation/appstoreconnectapi/gamecentermatchmakingqueuecreaterequest/data/relationships/ruleset/data>
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
