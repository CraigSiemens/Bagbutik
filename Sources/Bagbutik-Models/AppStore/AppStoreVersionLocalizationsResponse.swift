import Bagbutik_Core
import Foundation

/**
 # AppStoreVersionLocalizationsResponse
 A response that contains a list of App Store Version Localization resources.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/appstoreversionlocalizationsresponse>
 */
public struct AppStoreVersionLocalizationsResponse: PagedResponse {
    public typealias Data = AppStoreVersionLocalization

    public let data: [AppStoreVersionLocalization]
    public var included: [Included]?
    public let links: PagedDocumentLinks
    public var meta: PagingInformation?

    public init(data: [AppStoreVersionLocalization],
                included: [Included]? = nil,
                links: PagedDocumentLinks,
                meta: PagingInformation? = nil)
    {
        self.data = data
        self.included = included
        self.links = links
        self.meta = meta
    }

    public func getAppPreviewSets(for appStoreVersionLocalization: AppStoreVersionLocalization) -> [AppPreviewSet] {
        guard let appPreviewSetIds = appStoreVersionLocalization.relationships?.appPreviewSets?.data?.map(\.id),
              let appPreviewSets = included?.compactMap({ relationship -> AppPreviewSet? in
                  guard case let .appPreviewSet(appPreviewSet) = relationship else { return nil }
                  return appPreviewSetIds.contains(appPreviewSet.id) ? appPreviewSet : nil
              })
        else {
            return []
        }
        return appPreviewSets
    }

    public func getAppScreenshotSets(for appStoreVersionLocalization: AppStoreVersionLocalization) -> [AppScreenshotSet] {
        guard let appScreenshotSetIds = appStoreVersionLocalization.relationships?.appScreenshotSets?.data?.map(\.id),
              let appScreenshotSets = included?.compactMap({ relationship -> AppScreenshotSet? in
                  guard case let .appScreenshotSet(appScreenshotSet) = relationship else { return nil }
                  return appScreenshotSetIds.contains(appScreenshotSet.id) ? appScreenshotSet : nil
              })
        else {
            return []
        }
        return appScreenshotSets
    }

    public func getAppStoreVersion(for appStoreVersionLocalization: AppStoreVersionLocalization) -> AppStoreVersion? {
        included?.compactMap { relationship -> AppStoreVersion? in
            guard case let .appStoreVersion(appStoreVersion) = relationship else { return nil }
            return appStoreVersion
        }.first { $0.id == appStoreVersionLocalization.relationships?.appStoreVersion?.data?.id }
    }

    public enum Included {
        case appPreviewSet(AppPreviewSet)
        case appScreenshotSet(AppScreenshotSet)
        case appStoreVersion(AppStoreVersion)
    }
}
