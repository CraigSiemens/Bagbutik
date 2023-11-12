import Bagbutik_Core
import Foundation

public struct AppCustomProductPageVersionsResponse: PagedResponse {
    public typealias Data = AppCustomProductPageVersion

    public let data: [AppCustomProductPageVersion]
    public var included: [Included]?
    public let links: PagedDocumentLinks
    public var meta: PagingInformation?

    public init(data: [AppCustomProductPageVersion],
                included: [Included]? = nil,
                links: PagedDocumentLinks,
                meta: PagingInformation? = nil)
    {
        self.data = data
        self.included = included
        self.links = links
        self.meta = meta
    }

    public func getAppCustomProductPage(for appCustomProductPageVersion: AppCustomProductPageVersion) -> AppCustomProductPage? {
        included?.compactMap { relationship -> AppCustomProductPage? in
            guard case let .appCustomProductPage(appCustomProductPage) = relationship else { return nil }
            return appCustomProductPage
        }.first { $0.id == appCustomProductPageVersion.relationships?.appCustomProductPage?.data?.id }
    }

    public func getAppCustomProductPageLocalizations(for appCustomProductPageVersion: AppCustomProductPageVersion) -> [AppCustomProductPageLocalization] {
        guard let appCustomProductPageLocalizationIds = appCustomProductPageVersion.relationships?.appCustomProductPageLocalizations?.data?.map(\.id),
              let appCustomProductPageLocalizations = included?.compactMap({ relationship -> AppCustomProductPageLocalization? in
                  guard case let .appCustomProductPageLocalization(appCustomProductPageLocalization) = relationship else { return nil }
                  return appCustomProductPageLocalizationIds.contains(appCustomProductPageLocalization.id) ? appCustomProductPageLocalization : nil
              })
        else {
            return []
        }
        return appCustomProductPageLocalizations
    }

    public enum Included {
        case appCustomProductPage(AppCustomProductPage)
        case appCustomProductPageLocalization(AppCustomProductPageLocalization)
    }
}
