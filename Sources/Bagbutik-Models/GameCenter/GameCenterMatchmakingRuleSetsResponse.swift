import Bagbutik_Core
import Foundation

/**
 # GameCenterMatchmakingRuleSetsResponse
 The response body for endpoints that get multiple rule sets.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/gamecentermatchmakingrulesetsresponse>
 */
public struct GameCenterMatchmakingRuleSetsResponse: PagedResponse {
    public typealias Data = GameCenterMatchmakingRuleSet

    /// The rule sets that an endpoint gets.
    public let data: [GameCenterMatchmakingRuleSet]
    /// The related objects included in the response.
    public var included: [Included]?
    public let links: PagedDocumentLinks
    public var meta: PagingInformation?

    public init(data: [GameCenterMatchmakingRuleSet],
                included: [Included]? = nil,
                links: PagedDocumentLinks,
                meta: PagingInformation? = nil)
    {
        self.data = data
        self.included = included
        self.links = links
        self.meta = meta
    }

    public func getMatchmakingQueues(for gameCenterMatchmakingRuleSet: GameCenterMatchmakingRuleSet) -> [GameCenterMatchmakingQueue] {
        guard let matchmakingQueueIds = gameCenterMatchmakingRuleSet.relationships?.matchmakingQueues?.data?.map(\.id),
              let matchmakingQueues = included?.compactMap({ relationship -> GameCenterMatchmakingQueue? in
                  guard case let .gameCenterMatchmakingQueue(matchmakingQueue) = relationship else { return nil }
                  return matchmakingQueueIds.contains(matchmakingQueue.id) ? matchmakingQueue : nil
              })
        else {
            return []
        }
        return matchmakingQueues
    }

    public func getRules(for gameCenterMatchmakingRuleSet: GameCenterMatchmakingRuleSet) -> [GameCenterMatchmakingRule] {
        guard let ruleIds = gameCenterMatchmakingRuleSet.relationships?.rules?.data?.map(\.id),
              let rules = included?.compactMap({ relationship -> GameCenterMatchmakingRule? in
                  guard case let .gameCenterMatchmakingRule(rule) = relationship else { return nil }
                  return ruleIds.contains(rule.id) ? rule : nil
              })
        else {
            return []
        }
        return rules
    }

    public func getTeams(for gameCenterMatchmakingRuleSet: GameCenterMatchmakingRuleSet) -> [GameCenterMatchmakingTeam] {
        guard let teamIds = gameCenterMatchmakingRuleSet.relationships?.teams?.data?.map(\.id),
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
