import Bagbutik_Core
import Foundation

public struct AppCustomProductPageResponse {
    public let data: AppCustomProductPage
    public var included: [Included]?
    public let links: DocumentLinks

    public init(data: AppCustomProductPage,
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

    public func getAppCustomProductPageVersions() -> [AppCustomProductPageVersion] {
        guard let appCustomProductPageVersionIds = data.relationships?.appCustomProductPageVersions?.data?.map(\.id),
              let appCustomProductPageVersions = included?.compactMap({ relationship -> AppCustomProductPageVersion? in
                  guard case let .appCustomProductPageVersion(appCustomProductPageVersion) = relationship else { return nil }
                  return appCustomProductPageVersionIds.contains(appCustomProductPageVersion.id) ? appCustomProductPageVersion : nil
              })
        else {
            return []
        }
        return appCustomProductPageVersions
    }

    public enum Included {
        case app(App)
        case appCustomProductPageVersion(AppCustomProductPageVersion)
    }
}
