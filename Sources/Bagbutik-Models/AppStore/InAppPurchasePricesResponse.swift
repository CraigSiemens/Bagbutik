import Bagbutik_Core
import Foundation

public struct InAppPurchasePricesResponse: PagedResponse {
    public typealias Data = InAppPurchasePrice

    public let data: [InAppPurchasePrice]
    public var included: [Included]?
    public let links: PagedDocumentLinks
    public var meta: PagingInformation?

    public init(data: [InAppPurchasePrice],
                included: [Included]? = nil,
                links: PagedDocumentLinks,
                meta: PagingInformation? = nil)
    {
        self.data = data
        self.included = included
        self.links = links
        self.meta = meta
    }

    public func getInAppPurchasePricePoint(for inAppPurchasePrice: InAppPurchasePrice) -> InAppPurchasePricePoint? {
        included?.compactMap { relationship -> InAppPurchasePricePoint? in
            guard case let .inAppPurchasePricePoint(inAppPurchasePricePoint) = relationship else { return nil }
            return inAppPurchasePricePoint
        }.first { $0.id == inAppPurchasePrice.relationships?.inAppPurchasePricePoint?.data?.id }
    }

    public func getTerritory(for inAppPurchasePrice: InAppPurchasePrice) -> Territory? {
        included?.compactMap { relationship -> Territory? in
            guard case let .territory(territory) = relationship else { return nil }
            return territory
        }.first { $0.id == inAppPurchasePrice.relationships?.territory?.data?.id }
    }

    public enum Included {
        case inAppPurchasePricePoint(InAppPurchasePricePoint)
        case territory(Territory)
    }
}
