import Bagbutik_Core
import Foundation

/**
 # AppPreviewSetsResponse
 A response that contains a list of App Preview Set resources.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/apppreviewsetsresponse>
 */
public struct AppPreviewSetsResponse: PagedResponse {
    public typealias Data = AppPreviewSet

    public let data: [AppPreviewSet]
    public var included: [Included]?
    public let links: PagedDocumentLinks
    public var meta: PagingInformation?

    public init(data: [AppPreviewSet],
                included: [Included]? = nil,
                links: PagedDocumentLinks,
                meta: PagingInformation? = nil)
    {
        self.data = data
        self.included = included
        self.links = links
        self.meta = meta
    }

    public func getAppCustomProductPageLocalization(for appPreviewSet: AppPreviewSet) -> AppCustomProductPageLocalization? {
        included?.compactMap { relationship -> AppCustomProductPageLocalization? in
            guard case let .appCustomProductPageLocalization(appCustomProductPageLocalization) = relationship else { return nil }
            return appCustomProductPageLocalization
        }.first { $0.id == appPreviewSet.relationships?.appCustomProductPageLocalization?.data?.id }
    }

    public func getAppPreviews(for appPreviewSet: AppPreviewSet) -> [AppPreview] {
        guard let appPreviewIds = appPreviewSet.relationships?.appPreviews?.data?.map(\.id),
              let appPreviews = included?.compactMap({ relationship -> AppPreview? in
                  guard case let .appPreview(appPreview) = relationship else { return nil }
                  return appPreviewIds.contains(appPreview.id) ? appPreview : nil
              })
        else {
            return []
        }
        return appPreviews
    }

    public func getAppStoreVersionExperimentTreatmentLocalization(for appPreviewSet: AppPreviewSet) -> AppStoreVersionExperimentTreatmentLocalization? {
        included?.compactMap { relationship -> AppStoreVersionExperimentTreatmentLocalization? in
            guard case let .appStoreVersionExperimentTreatmentLocalization(appStoreVersionExperimentTreatmentLocalization) = relationship else { return nil }
            return appStoreVersionExperimentTreatmentLocalization
        }.first { $0.id == appPreviewSet.relationships?.appStoreVersionExperimentTreatmentLocalization?.data?.id }
    }

    public func getAppStoreVersionLocalization(for appPreviewSet: AppPreviewSet) -> AppStoreVersionLocalization? {
        included?.compactMap { relationship -> AppStoreVersionLocalization? in
            guard case let .appStoreVersionLocalization(appStoreVersionLocalization) = relationship else { return nil }
            return appStoreVersionLocalization
        }.first { $0.id == appPreviewSet.relationships?.appStoreVersionLocalization?.data?.id }
    }

    public enum Included {
        case appCustomProductPageLocalization(AppCustomProductPageLocalization)
        case appPreview(AppPreview)
        case appStoreVersionExperimentTreatmentLocalization(AppStoreVersionExperimentTreatmentLocalization)
        case appStoreVersionLocalization(AppStoreVersionLocalization)
    }
}
