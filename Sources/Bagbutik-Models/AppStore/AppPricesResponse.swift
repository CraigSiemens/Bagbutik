import Bagbutik_Core
import Foundation

/**
 # AppPricesResponse
 A response that contains a list of App Prices resources.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/apppricesresponse>
 */
public struct AppPricesResponse: PagedResponse {
    public typealias Data = AppPrice

    /// The resource data.
    public let data: [AppPrice]
    /// The requested relationship data.
    public var included: [Included]?
    /// Navigational links that include the self-link.
    public let links: PagedDocumentLinks
    /// Paging information.
    public var meta: PagingInformation?

    public init(data: [AppPrice],
                included: [Included]? = nil,
                links: PagedDocumentLinks,
                meta: PagingInformation? = nil)
    {
        self.data = data
        self.included = included
        self.links = links
        self.meta = meta
    }

    public func getApp(for appPrice: AppPrice) -> App? {
        included?.compactMap { relationship -> App? in
            guard case let .app(app) = relationship else { return nil }
            return app
        }.first { $0.id == appPrice.relationships?.app?.data?.id }
    }

    public func getPriceTier(for appPrice: AppPrice) -> AppPriceTier? {
        included?.compactMap { relationship -> AppPriceTier? in
            guard case let .appPriceTier(priceTier) = relationship else { return nil }
            return priceTier
        }.first { $0.id == appPrice.relationships?.priceTier?.data?.id }
    }

    public enum Included {
        case app(App)
        case appPriceTier(AppPriceTier)
    }
}
