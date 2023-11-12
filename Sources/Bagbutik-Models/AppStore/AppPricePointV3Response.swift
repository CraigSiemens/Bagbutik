import Bagbutik_Core
import Foundation

public struct AppPricePointV3Response {
    public let data: AppPricePointV3
    public var included: [Included]?
    public let links: DocumentLinks

    public init(data: AppPricePointV3,
                included: [Included]? = nil,
                links: DocumentLinks)
    {
        self.data = data
        self.included = included
        self.links = links
    }

    public func getApp() -> App? {
        included?.compactMap { relationship -> App? in
            guard case let .app(app) = relationship else { return nil }
            return app
        }.first { $0.id == data.relationships?.app?.data?.id }
    }

    public func getTerritory() -> Territory? {
        included?.compactMap { relationship -> Territory? in
            guard case let .territory(territory) = relationship else { return nil }
            return territory
        }.first { $0.id == data.relationships?.territory?.data?.id }
    }

    public enum Included {
        case app(App)
        case territory(Territory)
    }
}
