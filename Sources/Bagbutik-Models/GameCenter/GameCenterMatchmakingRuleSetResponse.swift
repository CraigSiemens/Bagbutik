import Bagbutik_Core
import Foundation

/**
 # GameCenterMatchmakingRuleSetResponse
 The response body for endpoints that create, modify, or get a single rule.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/gamecentermatchmakingrulesetresponse>
 */
public struct GameCenterMatchmakingRuleSetResponse {
    /// The rule set that you create, modify, or get.
    public let data: GameCenterMatchmakingRuleSet
    /// The related objects included in the response.
    public var included: [Included]?
    public let links: DocumentLinks

    public init(data: GameCenterMatchmakingRuleSet,
                included: [Included]? = nil,
                links: DocumentLinks)
    {
        self.data = data
        self.included = included
        self.links = links
    }

    public func getMatchmakingQueues() -> [GameCenterMatchmakingQueue] {
        guard let matchmakingQueueIds = data.relationships?.matchmakingQueues?.data?.map(\.id),
              let matchmakingQueues = included?.compactMap({ relationship -> GameCenterMatchmakingQueue? in
                  guard case let .gameCenterMatchmakingQueue(matchmakingQueue) = relationship else { return nil }
                  return matchmakingQueueIds.contains(matchmakingQueue.id) ? matchmakingQueue : nil
              })
        else {
            return []
        }
        return matchmakingQueues
    }

    public func getRules() -> [GameCenterMatchmakingRule] {
        guard let ruleIds = data.relationships?.rules?.data?.map(\.id),
              let rules = included?.compactMap({ relationship -> GameCenterMatchmakingRule? in
                  guard case let .gameCenterMatchmakingRule(rule) = relationship else { return nil }
                  return ruleIds.contains(rule.id) ? rule : nil
              })
        else {
            return []
        }
        return rules
    }

    public func getTeams() -> [GameCenterMatchmakingTeam] {
        guard let teamIds = data.relationships?.teams?.data?.map(\.id),
              let teams = included?.compactMap({ relationship -> GameCenterMatchmakingTeam? in
                  guard case let .gameCenterMatchmakingTeam(team) = relationship else { return nil }
                  return teamIds.contains(team.id) ? team : nil
              })
        else {
            return []
        }
        return teams
    }

    public enum Included {
        case gameCenterMatchmakingQueue(GameCenterMatchmakingQueue)
        case gameCenterMatchmakingRule(GameCenterMatchmakingRule)
        case gameCenterMatchmakingTeam(GameCenterMatchmakingTeam)
    }
}
