import Bagbutik_Core
import Foundation

/**
 # GameCenterMatchmakingQueue
 The data structure that represents a queue.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/gamecentermatchmakingqueue>
 */
public struct GameCenterMatchmakingQueue: Identifiable {
    /// The unique identifier for the rule.
    public let id: String
    /// The link representations of the object.
    public var links: ResourceLinks?
    /// The type of resource.
    public var type: String { "gameCenterMatchmakingQueues" }
    /// The attributes of the queue.
    public var attributes: Attributes?
    /// The relationships of the queue.
    public var relationships: Relationships?

    public init(id: String,
                links: ResourceLinks? = nil,
                attributes: Attributes? = nil,
                relationships: Relationships? = nil)
    {
        self.id = id
        self.links = links
        self.attributes = attributes
        self.relationships = relationships
    }

    /**
     # GameCenterMatchmakingQueue.Attributes
     The attributes of the rule set.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/gamecentermatchmakingqueue/attributes>
     */
    public struct Attributes {
        /// A name for the queue that’s unique within the scope of your development team.
        public var referenceName: String?

        public init(referenceName: String? = nil) {
            self.referenceName = referenceName
        }
    }

    /**
     # GameCenterMatchmakingQueue.Relationships
     The rule sets associated with the queue.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/gamecentermatchmakingqueue/relationships>
     */
    public struct Relationships {
        public var experimentRuleSet: ExperimentRuleSet?
        public var ruleSet: RuleSet?

        public init(experimentRuleSet: ExperimentRuleSet? = nil,
                    ruleSet: RuleSet? = nil)
        {
            self.experimentRuleSet = experimentRuleSet
            self.ruleSet = ruleSet
        }

        /**
         # GameCenterMatchmakingQueue.Relationships.ExperimentRuleSet
         An experimental rule set for testing this queue.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/gamecentermatchmakingqueue/relationships/experimentruleset>
         */
        public struct ExperimentRuleSet {
            @NullCodable public var data: Data?
            public var links: Links?

            public init(data: Data? = nil,
                        links: Links? = nil)
            {
                self.data = data
                self.links = links
            }

            /**
             # GameCenterMatchmakingQueue.Relationships.ExperimentRuleSet.Data
             The data structure of the request body for an experimental rule set.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/gamecentermatchmakingqueue/relationships/experimentruleset/data>
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

            /**
             # GameCenterMatchmakingQueue.Relationships.ExperimentRuleSet.Links
             The link representations of the experiment rule set object.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/gamecentermatchmakingqueue/relationships/experimentruleset/links>
             */
            public struct Links {
                /// A link object representation of the relationship.
                public var related: String?
                /// A string URI representation of the relationship.
                public var itself: String?

                public init(related: String? = nil,
                            self itself: String? = nil)
                {
                    self.related = related
                    self.itself = itself
                }
            }
        }

        /**
         # GameCenterMatchmakingQueue.Relationships.RuleSet
         The rule set associated with the queue.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/gamecentermatchmakingqueue/relationships/ruleset>
         */
        public struct RuleSet {
            @NullCodable public var data: Data?
            public var links: Links?

            public init(data: Data? = nil,
                        links: Links? = nil)
            {
                self.data = data
                self.links = links
            }

            /**
             # GameCenterMatchmakingQueue.Relationships.RuleSet.Data
             The data structure for the rule set.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/gamecentermatchmakingqueue/relationships/ruleset/data>
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

            /**
             # GameCenterMatchmakingQueue.Relationships.RuleSet.Links
             An object that represents rule set links.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/gamecentermatchmakingqueue/relationships/ruleset/links>
             */
            public struct Links {
                /// A link object representation of the rule set relationship.
                public var related: String?
                /// A string URI representation of the rule set relationship.
                public var itself: String?

                public init(related: String? = nil,
                            self itself: String? = nil)
                {
                    self.related = related
                    self.itself = itself
                }
            }
        }
    }
}
