import Bagbutik_Core
import Foundation

public struct AppPricePointsV3Response: PagedResponse {
    public typealias Data = AppPricePointV3

    public let data: [AppPricePointV3]
    public var included: [Included]?
    public let links: PagedDocumentLinks
    public var meta: PagingInformation?

    public init(data: [AppPricePointV3],
                included: [Included]? = nil,
                links: PagedDocumentLinks,
                meta: PagingInformation? = nil)
    {
        self.data = data
        self.included = included
        self.links = links
        self.meta = meta
    }

    public func getApp(for appPricePointV3: AppPricePointV3) -> App? {
        included?.compactMap { relationship -> App? in
            guard case let .app(app) = relationship else { return nil }
            return app
        }.first { $0.id == appPricePointV3.relationships?.app?.data?.id }
    }

    public func getTerritory(for appPricePointV3: AppPricePointV3) -> Territory? {
        included?.compactMap { relationship -> Territory? in
            guard case let .territory(territory) = relationship else { return nil }
            return territory
        }.first { $0.id == appPricePointV3.relationships?.territory?.data?.id }
    }

    public enum Included {
        case app(App)
        case territory(Territory)
    }
}
