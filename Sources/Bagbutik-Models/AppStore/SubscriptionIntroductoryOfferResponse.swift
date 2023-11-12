import Bagbutik_Core
import Foundation

public struct SubscriptionIntroductoryOfferResponse {
    public let data: SubscriptionIntroductoryOffer
    public var included: [Included]?
    public let links: DocumentLinks

    public init(data: SubscriptionIntroductoryOffer,
                included: [Included]? = nil,
                links: DocumentLinks)
    {
        self.data = data
        self.included = included
        self.links = links
    }

    public func getSubscription() -> Subscription? {
        included?.compactMap { relationship -> Subscription? in
            guard case let .subscription(subscription) = relationship else { return nil }
            return subscription
        }.first { $0.id == data.relationships?.subscription?.data?.id }
    }

    public func getSubscriptionPricePoint() -> SubscriptionPricePoint? {
        included?.compactMap { relationship -> SubscriptionPricePoint? in
            guard case let .subscriptionPricePoint(subscriptionPricePoint) = relationship else { return nil }
            return subscriptionPricePoint
        }.first { $0.id == data.relationships?.subscriptionPricePoint?.data?.id }
    }

    public func getTerritory() -> Territory? {
        included?.compactMap { relationship -> Territory? in
            guard case let .territory(territory) = relationship else { return nil }
            return territory
        }.first { $0.id == data.relationships?.territory?.data?.id }
    }

    public enum Included {
        case subscription(Subscription)
        case subscriptionPricePoint(SubscriptionPricePoint)
        case territory(Territory)
    }
}
