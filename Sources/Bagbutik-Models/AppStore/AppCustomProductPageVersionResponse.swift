import Bagbutik_Core
import Foundation

public struct AppCustomProductPageVersionResponse {
    public let data: AppCustomProductPageVersion
    public var included: [Included]?
    public let links: DocumentLinks

    public init(data: AppCustomProductPageVersion,
                included: [Included]? = nil,
                links: DocumentLinks)
    {
        self.data = data
        self.included = included
        self.links = links
    }

    public func getAppCustomProductPage() -> AppCustomProductPage? {
        included?.compactMap { relationship -> AppCustomProductPage? in
            guard case let .appCustomProductPage(appCustomProductPage) = relationship else { return nil }
            return appCustomProductPage
        }.first { $0.id == data.relationships?.appCustomProductPage?.data?.id }
    }

    public func getAppCustomProductPageLocalizations() -> [AppCustomProductPageLocalization] {
        guard let appCustomProductPageLocalizationIds = data.relationships?.appCustomProductPageLocalizations?.data?.map(\.id),
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
