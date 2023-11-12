import Bagbutik_Core
import Foundation

/**
 # GameCenterMatchmakingRule
 The data structure that represents a matchmaking rule.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/gamecentermatchmakingrule>
 */
public struct GameCenterMatchmakingRule: Identifiable {
    /// The unique identifier for the rule.
    public let id: String
    public var links: ResourceLinks?
    public var type: String { "gameCenterMatchmakingRules" }
    /// The attributes of the rule.
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
     # GameCenterMatchmakingRule.Attributes
     The attributes of a matchmaking rule.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/gamecentermatchmakingrule/attributes>
     */
    public struct Attributes {
        /// A human-readable description of the rule.
        public var description: String?
        /// Code that returns a Boolean or numeric value that the matchmaking rules algorithm executes to compare or filter match requests.
        public var expression: String?
        /// A name for the rule that’s unique within the scope of its rule set.
        public var referenceName: String?
        /// The type or category of the rule that determines the return value and properties available in the expression.
        public var type: AttributesType?
        /// A numeric value for the rule when `type` is either `DISTANCE` or `MATCH`.
        public var weight: Double?

        public init(description: String? = nil,
                    expression: String? = nil,
                    referenceName: String? = nil,
                    type: AttributesType? = nil,
                    weight: Double? = nil)
        {
            self.description = description
            self.expression = expression
            self.referenceName = referenceName
            self.type = type
            self.weight = weight
        }

        public enum AttributesType: String {
            case compatible = "COMPATIBLE"
            case distance = "DISTANCE"
            case match = "MATCH"
            case team = "TEAM"
        }
    }
}
