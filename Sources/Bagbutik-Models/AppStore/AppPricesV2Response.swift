import Bagbutik_Core
import Foundation

public struct AppPricesV2Response: PagedResponse {
    public typealias Data = AppPriceV2

    public let data: [AppPriceV2]
    public var included: [Included]?
    public let links: PagedDocumentLinks
    public var meta: PagingInformation?

    public init(data: [AppPriceV2],
                included: [Included]? = nil,
                links: PagedDocumentLinks,
                meta: PagingInformation? = nil)
    {
        self.data = data
        self.included = included
        self.links = links
        self.meta = meta
    }

    public func getAppPricePoint(for appPriceV2: AppPriceV2) -> AppPricePointV3? {
        included?.compactMap { relationship -> AppPricePointV3? in
            guard case let .appPricePointV3(appPricePoint) = relationship else { return nil }
            return appPricePoint
        }.first { $0.id == appPriceV2.relationships?.appPricePoint?.data?.id }
    }

    public func getTerritory(for appPriceV2: AppPriceV2) -> Territory? {
        included?.compactMap { relationship -> Territory? in
            guard case let .territory(territory) = relationship else { return nil }
            return territory
        }.first { $0.id == appPriceV2.relationships?.territory?.data?.id }
    }

    public enum Included {
        case appPricePointV3(AppPricePointV3)
        case territory(Territory)
    }
}
