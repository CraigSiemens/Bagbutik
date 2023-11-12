import Bagbutik_Core
import Foundation

public struct SubscriptionOfferCodePricesResponse: PagedResponse {
    public typealias Data = SubscriptionOfferCodePrice

    public let data: [SubscriptionOfferCodePrice]
    public var included: [Included]?
    public let links: PagedDocumentLinks
    public var meta: PagingInformation?

    public init(data: [SubscriptionOfferCodePrice],
                included: [Included]? = nil,
                links: PagedDocumentLinks,
                meta: PagingInformation? = nil)
    {
        self.data = data
        self.included = included
        self.links = links
        self.meta = meta
    }

    public func getSubscriptionPricePoint(for subscriptionOfferCodePrice: SubscriptionOfferCodePrice) -> SubscriptionPricePoint? {
        included?.compactMap { relationship -> SubscriptionPricePoint? in
            guard case let .subscriptionPricePoint(subscriptionPricePoint) = relationship else { return nil }
            return subscriptionPricePoint
        }.first { $0.id == subscriptionOfferCodePrice.relationships?.subscriptionPricePoint?.data?.id }
    }

    public func getTerritory(for subscriptionOfferCodePrice: SubscriptionOfferCodePrice) -> Territory? {
        included?.compactMap { relationship -> Territory? in
            guard case let .territory(territory) = relationship else { return nil }
            return territory
        }.first { $0.id == subscriptionOfferCodePrice.relationships?.territory?.data?.id }
    }

    public enum Included {
        case subscriptionPricePoint(SubscriptionPricePoint)
        case territory(Territory)
    }
}
