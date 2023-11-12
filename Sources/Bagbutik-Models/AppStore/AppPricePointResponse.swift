import Bagbutik_Core
import Foundation

/**
 # AppPricePointResponse
 A response that contains a single App Price Points resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/apppricepointresponse>
 */
public struct AppPricePointResponse {
    public let data: AppPricePoint
    public var included: [Included]?
    public let links: DocumentLinks

    public init(data: AppPricePoint,
                included: [Included]? = nil,
                links: DocumentLinks)
    {
        self.data = data
        self.included = included
        self.links = links
    }

    public func getPriceTier() -> AppPriceTier? {
        included?.compactMap { relationship -> AppPriceTier? in
            guard case let .appPriceTier(priceTier) = relationship else { return nil }
            return priceTier
        }.first { $0.id == data.relationships?.priceTier?.data?.id }
    }

    public func getTerritory() -> Territory? {
        included?.compactMap { relationship -> Territory? in
            guard case let .territory(territory) = relationship else { return nil }
            return territory
        }.first { $0.id == data.relationships?.territory?.data?.id }
    }

    public enum Included {
        case appPriceTier(AppPriceTier)
        case territory(Territory)
    }
}
