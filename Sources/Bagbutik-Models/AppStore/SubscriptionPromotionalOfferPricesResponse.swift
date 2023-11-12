import Bagbutik_Core
import Foundation

public struct SubscriptionPromotionalOfferPricesResponse: PagedResponse {
    public typealias Data = SubscriptionPromotionalOfferPrice

    public let data: [SubscriptionPromotionalOfferPrice]
    public var included: [Included]?
    public let links: PagedDocumentLinks
    public var meta: PagingInformation?

    public init(data: [SubscriptionPromotionalOfferPrice],
                included: [Included]? = nil,
                links: PagedDocumentLinks,
                meta: PagingInformation? = nil)
    {
        self.data = data
        self.included = included
        self.links = links
        self.meta = meta
    }

    public func getSubscriptionPricePoint(for subscriptionPromotionalOfferPrice: SubscriptionPromotionalOfferPrice) -> SubscriptionPricePoint? {
        included?.compactMap { relationship -> SubscriptionPricePoint? in
            guard case let .subscriptionPricePoint(subscriptionPricePoint) = relationship else { return nil }
            return subscriptionPricePoint
        }.first { $0.id == subscriptionPromotionalOfferPrice.relationships?.subscriptionPricePoint?.data?.id }
    }

    public func getTerritory(for subscriptionPromotionalOfferPrice: SubscriptionPromotionalOfferPrice) -> Territory? {
        included?.compactMap { relationship -> Territory? in
            guard case let .territory(territory) = relationship else { return nil }
            return territory
        }.first { $0.id == subscriptionPromotionalOfferPrice.relationships?.territory?.data?.id }
    }

    public enum Included {
        case subscriptionPricePoint(SubscriptionPricePoint)
        case territory(Territory)
    }
}
