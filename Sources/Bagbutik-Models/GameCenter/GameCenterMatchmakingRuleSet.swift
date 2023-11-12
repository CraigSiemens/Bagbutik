import Bagbutik_Core
import Foundation

/**
 # GameCenterMatchmakingRuleSet
 The data structure that represents a rule set.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/gamecentermatchmakingruleset>
 */
public struct GameCenterMatchmakingRuleSet: Identifiable {
    /// The unique identifier for the rule set.
    public let id: String
    public var links: ResourceLinks?
    /// The type of resource.
    public var type: String { "gameCenterMatchmakingRuleSets" }
    /// The attributes of the rule set.
    public var attributes: Attributes?
    /// The relationships to other objects belonging to the rule set.
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
     # GameCenterMatchmakingRuleSet.Attributes
     The attributes of the rule set.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/gamecentermatchmakingruleset/attributes>
     */
    public struct Attributes {
        /// The maximum number of players who can join the matches that Game Center finds using these rules.
        public var maxPlayers: Int?
        /// The minimum number of players who can join the matches that Game Center finds using these rules.
        public var minPlayers: Int?
        /// A name for the rule set that’s unique within the scope of your development team.
        public var referenceName: String?
        /// The version of the expression language that all the rules in this rule set use. The only possible value is `1`.
        public var ruleLanguageVersion: Int?

        public init(maxPlayers: Int? = nil,
                    minPlayers: Int? = nil,
                    referenceName: String? = nil,
                    ruleLanguageVersion: Int? = nil)
        {
            self.maxPlayers = maxPlayers
            self.minPlayers = minPlayers
            self.referenceName = referenceName
            self.ruleLanguageVersion = ruleLanguageVersion
        }
    }

    /**
     # GameCenterMatchmakingRuleSet.Relationships
     The relationships to other objects belonging to the rule set.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/gamecentermatchmakingruleset/relationships>
     */
    public struct Relationships {
        /// The queues belonging to the rule set.
        public var matchmakingQueues: MatchmakingQueues?
        /// The rules belonging to the rule set.
        public var rules: Rules?
        /// The teams belonging to the rule set.
        public var teams: Teams?

        public init(matchmakingQueues: MatchmakingQueues? = nil,
                    rules: Rules? = nil,
                    teams: Teams? = nil)
        {
            self.matchmakingQueues = matchmakingQueues
            self.rules = rules
            self.teams = teams
        }

        /**
         # GameCenterMatchmakingRuleSet.Relationships.MatchmakingQueues
         The queues related to the rule set.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/gamecentermatchmakingruleset/relationships/matchmakingqueues>
         */
        public struct MatchmakingQueues {
            @NullCodable public var data: [Data]?
            public var links: Links?
            public var meta: PagingInformation?

            public init(data: [Data]? = nil,
                        links: Links? = nil,
                        meta: PagingInformation? = nil)
            {
                self.data = data
                self.links = links
                self.meta = meta
            }

            /**
             # GameCenterMatchmakingRuleSet.Relationships.MatchmakingQueues.Data
             The data structure of a matchmaking queue.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/gamecentermatchmakingruleset/relationships/matchmakingqueues/data>
             */
            public struct Data: Identifiable {
                /// A unique identifier for a queue.
                public let id: String
                /// The type of resource.
                public var type: String { "gameCenterMatchmakingQueues" }

                public init(id: String) {
                    self.id = id
                }
            }

            /**
             # GameCenterMatchmakingRuleSet.Relationships.MatchmakingQueues.Links
             The link representations of the queue object.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/gamecentermatchmakingruleset/relationships/matchmakingqueues/links>
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
         # GameCenterMatchmakingRuleSet.Relationships.Rules
         The rules belonging to the rule set.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/gamecentermatchmakingruleset/relationships/rules>
         */
        public struct Rules {
            @NullCodable public var data: [Data]?
            public var links: Links?
            public var meta: PagingInformation?

            public init(data: [Data]? = nil,
                        links: Links? = nil,
                        meta: PagingInformation? = nil)
            {
                self.data = data
                self.links = links
                self.meta = meta
            }

            /**
             # GameCenterMatchmakingRuleSet.Relationships.Rules.Data
             The data structure of a matchmaking rule.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/gamecentermatchmakingruleset/relationships/rules/data>
             */
            public struct Data: Identifiable {
                /// A unique identifier for a rule.
                public let id: String
                /// The type of resource.
                public var type: String { "gameCenterMatchmakingRules" }

                public init(id: String) {
                    self.id = id
                }
            }

            /**
             # GameCenterMatchmakingRuleSet.Relationships.Rules.Links
             The link representations of the rule object.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/gamecentermatchmakingruleset/relationships/rules/links>
             */
            public struct Links {
                /// A link object representation of the  relationship.
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
         # GameCenterMatchmakingRuleSet.Relationships.Teams
         The teams belonging to the rule set.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/gamecentermatchmakingruleset/relationships/teams>
         */
        public struct Teams {
            @NullCodable public var data: [Data]?
            public var links: Links?
            public var meta: PagingInformation?

            public init(data: [Data]? = nil,
                        links: Links? = nil,
                        meta: PagingInformation? = nil)
            {
                self.data = data
                self.links = links
                self.meta = meta
            }

            /**
             # GameCenterMatchmakingRuleSet.Relationships.Teams.Data
             The data structure of a matchmaking team.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/gamecentermatchmakingruleset/relationships/teams/data>
             */
            public struct Data: Identifiable {
                /// A unique identifier for a team.
                public let id: String
                /// The type of resource.
                public var type: String { "gameCenterMatchmakingTeams" }

                public init(id: String) {
                    self.id = id
                }
            }

            public struct Links {
                public var related: String?
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
