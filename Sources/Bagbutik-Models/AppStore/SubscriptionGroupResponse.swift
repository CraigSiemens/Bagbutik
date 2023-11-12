import Bagbutik_Core
import Foundation

public struct SubscriptionGroupResponse {
    public let data: SubscriptionGroup
    public var included: [Included]?
    public let links: DocumentLinks

    public init(data: SubscriptionGroup,
                included: [Included]? = nil,
                links: DocumentLinks)
    {
        self.data = data
        self.included = included
        self.links = links
    }

    public func getSubscriptionGroupLocalizations() -> [SubscriptionGroupLocalization] {
        guard let subscriptionGroupLocalizationIds = data.relationships?.subscriptionGroupLocalizations?.data?.map(\.id),
              let subscriptionGroupLocalizations = included?.compactMap({ relationship -> SubscriptionGroupLocalization? in
                  guard case let .subscriptionGroupLocalization(subscriptionGroupLocalization) = relationship else { return nil }
                  return subscriptionGroupLocalizationIds.contains(subscriptionGroupLocalization.id) ? subscriptionGroupLocalization : nil
              })
        else {
            return []
        }
        return subscriptionGroupLocalizations
    }

    public func getSubscriptions() -> [Subscription] {
        guard let subscriptionIds = data.relationships?.subscriptions?.data?.map(\.id),
              let subscriptions = included?.compactMap({ relationship -> Subscription? in
                  guard case let .subscription(subscription) = relationship else { return nil }
                  return subscriptionIds.contains(subscription.id) ? subscription : nil
              })
        else {
            return []
        }
        return subscriptions
    }

    public enum Included {
        case subscription(Subscription)
        case subscriptionGroupLocalization(SubscriptionGroupLocalization)
    }
}
