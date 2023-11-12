import Bagbutik_Core
import Foundation

public struct SubscriptionPricesResponse: PagedResponse {
    public typealias Data = SubscriptionPrice

    public let data: [SubscriptionPrice]
    public var included: [Included]?
    public let links: PagedDocumentLinks
    public var meta: PagingInformation?

    public init(data: [SubscriptionPrice],
                included: [Included]? = nil,
                links: PagedDocumentLinks,
                meta: PagingInformation? = nil)
    {
        self.data = data
        self.included = included
        self.links = links
        self.meta = meta
    }

    public func getSubscriptionPricePoint(for subscriptionPrice: SubscriptionPrice) -> SubscriptionPricePoint? {
        included?.compactMap { relationship -> SubscriptionPricePoint? in
            guard case let .subscriptionPricePoint(subscriptionPricePoint) = relationship else { return nil }
            return subscriptionPricePoint
        }.first { $0.id == subscriptionPrice.relationships?.subscriptionPricePoint?.data?.id }
    }

    public func getTerritory(for subscriptionPrice: SubscriptionPrice) -> Territory? {
        included?.compactMap { relationship -> Territory? in
            guard case let .territory(territory) = relationship else { return nil }
            return territory
        }.first { $0.id == subscriptionPrice.relationships?.territory?.data?.id }
    }

    public enum Included {
        case subscriptionPricePoint(SubscriptionPricePoint)
        case territory(Territory)
    }
}
