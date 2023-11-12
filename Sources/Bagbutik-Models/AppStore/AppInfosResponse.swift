import Bagbutik_Core
import Foundation

/**
 # AppInfosResponse
 A response that contains a list of App Info resources.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/appinfosresponse>
 */
public struct AppInfosResponse: PagedResponse {
    public typealias Data = AppInfo

    /// The resource data.
    public let data: [AppInfo]
    public var included: [Included]?
    /// Navigational links that include the self-link.
    public let links: PagedDocumentLinks
    /// Paging information.
    public var meta: PagingInformation?

    public init(data: [AppInfo],
                included: [Included]? = nil,
                links: PagedDocumentLinks,
                meta: PagingInformation? = nil)
    {
        self.data = data
        self.included = included
        self.links = links
        self.meta = meta
    }

    public func getAgeRatingDeclaration(for appInfo: AppInfo) -> AgeRatingDeclaration? {
        included?.compactMap { relationship -> AgeRatingDeclaration? in
            guard case let .ageRatingDeclaration(ageRatingDeclaration) = relationship else { return nil }
            return ageRatingDeclaration
        }.first { $0.id == appInfo.relationships?.ageRatingDeclaration?.data?.id }
    }

    public func getApp(for appInfo: AppInfo) -> App? {
        included?.compactMap { relationship -> App? in
            guard case let .app(app) = relationship else { return nil }
            return app
        }.first { $0.id == appInfo.relationships?.app?.data?.id }
    }

    public func getAppInfoLocalizations(for appInfo: AppInfo) -> [AppInfoLocalization] {
        guard let appInfoLocalizationIds = appInfo.relationships?.appInfoLocalizations?.data?.map(\.id),
              let appInfoLocalizations = included?.compactMap({ relationship -> AppInfoLocalization? in
                  guard case let .appInfoLocalization(appInfoLocalization) = relationship else { return nil }
                  return appInfoLocalizationIds.contains(appInfoLocalization.id) ? appInfoLocalization : nil
              })
        else {
            return []
        }
        return appInfoLocalizations
    }

    public func getPrimaryCategory(for appInfo: AppInfo) -> AppCategory? {
        included?.compactMap { relationship -> AppCategory? in
            guard case let .appCategory(primaryCategory) = relationship else { return nil }
            return primaryCategory
        }.first { $0.id == appInfo.relationships?.primaryCategory?.data?.id }
    }

    public func getPrimarySubcategoryOne(for appInfo: AppInfo) -> AppCategory? {
        included?.compactMap { relationship -> AppCategory? in
            guard case let .appCategory(primarySubcategoryOne) = relationship else { return nil }
            return primarySubcategoryOne
        }.first { $0.id == appInfo.relationships?.primarySubcategoryOne?.data?.id }
    }

    public func getPrimarySubcategoryTwo(for appInfo: AppInfo) -> AppCategory? {
        included?.compactMap { relationship -> AppCategory? in
            guard case let .appCategory(primarySubcategoryTwo) = relationship else { return nil }
            return primarySubcategoryTwo
        }.first { $0.id == appInfo.relationships?.primarySubcategoryTwo?.data?.id }
    }

    public func getSecondaryCategory(for appInfo: AppInfo) -> AppCategory? {
        included?.compactMap { relationship -> AppCategory? in
            guard case let .appCategory(secondaryCategory) = relationship else { return nil }
            return secondaryCategory
        }.first { $0.id == appInfo.relationships?.secondaryCategory?.data?.id }
    }

    public func getSecondarySubcategoryOne(for appInfo: AppInfo) -> AppCategory? {
        included?.compactMap { relationship -> AppCategory? in
            guard case let .appCategory(secondarySubcategoryOne) = relationship else { return nil }
            return secondarySubcategoryOne
        }.first { $0.id == appInfo.relationships?.secondarySubcategoryOne?.data?.id }
    }

    public func getSecondarySubcategoryTwo(for appInfo: AppInfo) -> AppCategory? {
        included?.compactMap { relationship -> AppCategory? in
            guard case let .appCategory(secondarySubcategoryTwo) = relationship else { return nil }
            return secondarySubcategoryTwo
        }.first { $0.id == appInfo.relationships?.secondarySubcategoryTwo?.data?.id }
    }

    public enum Included {
        case ageRatingDeclaration(AgeRatingDeclaration)
        case app(App)
        case appCategory(AppCategory)
        case appInfoLocalization(AppInfoLocalization)
    }
}
