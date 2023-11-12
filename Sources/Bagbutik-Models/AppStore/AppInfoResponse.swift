import Bagbutik_Core
import Foundation

/**
 # AppInfoResponse
 A response that contains a single App Infos resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/appinforesponse>
 */
public struct AppInfoResponse {
    /// The resource data.
    public let data: AppInfo
    public var included: [Included]?
    /// Navigational links that include the self-link.
    public let links: DocumentLinks

    public init(data: AppInfo,
                included: [Included]? = nil,
                links: DocumentLinks)
    {
        self.data = data
        self.included = included
        self.links = links
    }

    public func getAgeRatingDeclaration() -> AgeRatingDeclaration? {
        included?.compactMap { relationship -> AgeRatingDeclaration? in
            guard case let .ageRatingDeclaration(ageRatingDeclaration) = relationship else { return nil }
            return ageRatingDeclaration
        }.first { $0.id == data.relationships?.ageRatingDeclaration?.data?.id }
    }

    public func getApp() -> App? {
        included?.compactMap { relationship -> App? in
            guard case let .app(app) = relationship else { return nil }
            return app
        }.first { $0.id == data.relationships?.app?.data?.id }
    }

    public func getAppInfoLocalizations() -> [AppInfoLocalization] {
        guard let appInfoLocalizationIds = data.relationships?.appInfoLocalizations?.data?.map(\.id),
              let appInfoLocalizations = included?.compactMap({ relationship -> AppInfoLocalization? in
                  guard case let .appInfoLocalization(appInfoLocalization) = relationship else { return nil }
                  return appInfoLocalizationIds.contains(appInfoLocalization.id) ? appInfoLocalization : nil
              })
        else {
            return []
        }
        return appInfoLocalizations
    }

    public func getPrimaryCategory() -> AppCategory? {
        included?.compactMap { relationship -> AppCategory? in
            guard case let .appCategory(primaryCategory) = relationship else { return nil }
            return primaryCategory
        }.first { $0.id == data.relationships?.primaryCategory?.data?.id }
    }

    public func getPrimarySubcategoryOne() -> AppCategory? {
        included?.compactMap { relationship -> AppCategory? in
            guard case let .appCategory(primarySubcategoryOne) = relationship else { return nil }
            return primarySubcategoryOne
        }.first { $0.id == data.relationships?.primarySubcategoryOne?.data?.id }
    }

    public func getPrimarySubcategoryTwo() -> AppCategory? {
        included?.compactMap { relationship -> AppCategory? in
            guard case let .appCategory(primarySubcategoryTwo) = relationship else { return nil }
            return primarySubcategoryTwo
        }.first { $0.id == data.relationships?.primarySubcategoryTwo?.data?.id }
    }

    public func getSecondaryCategory() -> AppCategory? {
        included?.compactMap { relationship -> AppCategory? in
            guard case let .appCategory(secondaryCategory) = relationship else { return nil }
            return secondaryCategory
        }.first { $0.id == data.relationships?.secondaryCategory?.data?.id }
    }

    public func getSecondarySubcategoryOne() -> AppCategory? {
        included?.compactMap { relationship -> AppCategory? in
            guard case let .appCategory(secondarySubcategoryOne) = relationship else { return nil }
            return secondarySubcategoryOne
        }.first { $0.id == data.relationships?.secondarySubcategoryOne?.data?.id }
    }

    public func getSecondarySubcategoryTwo() -> AppCategory? {
        included?.compactMap { relationship -> AppCategory? in
            guard case let .appCategory(secondarySubcategoryTwo) = relationship else { return nil }
            return secondarySubcategoryTwo
        }.first { $0.id == data.relationships?.secondarySubcategoryTwo?.data?.id }
    }

    public enum Included {
        case ageRatingDeclaration(AgeRatingDeclaration)
        case app(App)
        case appCategory(AppCategory)
        case appInfoLocalization(AppInfoLocalization)
    }
}
