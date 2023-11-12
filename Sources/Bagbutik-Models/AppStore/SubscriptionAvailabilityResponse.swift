import Bagbutik_Core
import Foundation

public struct SubscriptionAvailabilityResponse {
    public let data: SubscriptionAvailability
    public var included: [Included]?
    public let links: DocumentLinks

    public init(data: SubscriptionAvailability,
                included: [Included]? = nil,
                links: DocumentLinks)
    {
        self.data = data
        self.included = included
        self.links = links
    }

    public func getAvailableTerritories() -> [Territory] {
        guard let availableTerritoryIds = data.relationships?.availableTerritories?.data?.map(\.id),
              let availableTerritories = included?.compactMap({ relationship -> Territory? in
                  guard case let .territory(availableTerritory) = relationship else { return nil }
                  return availableTerritoryIds.contains(availableTerritory.id) ? availableTerritory : nil
              })
        else {
            return []
        }
        return availableTerritories
    }

    public func getSubscription() -> Subscription? {
        included?.compactMap { relationship -> Subscription? in
            guard case let .subscription(subscription) = relationship else { return nil }
            return subscription
        }.first { $0.id == data.relationships?.subscription?.data?.id }
    }

    public enum Included {
        case subscription(Subscription)
        case territory(Territory)
    }
}
