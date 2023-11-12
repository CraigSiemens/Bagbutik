import Bagbutik_Core
import Foundation

/**
 # AppPreviewSetResponse
 A response that contains a single App Preview Sets resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/apppreviewsetresponse>
 */
public struct AppPreviewSetResponse {
    public let data: AppPreviewSet
    public var included: [Included]?
    public let links: DocumentLinks

    public init(data: AppPreviewSet,
                included: [Included]? = nil,
                links: DocumentLinks)
    {
        self.data = data
        self.included = included
        self.links = links
    }

    public func getAppCustomProductPageLocalization() -> AppCustomProductPageLocalization? {
        included?.compactMap { relationship -> AppCustomProductPageLocalization? in
            guard case let .appCustomProductPageLocalization(appCustomProductPageLocalization) = relationship else { return nil }
            return appCustomProductPageLocalization
        }.first { $0.id == data.relationships?.appCustomProductPageLocalization?.data?.id }
    }

    public func getAppPreviews() -> [AppPreview] {
        guard let appPreviewIds = data.relationships?.appPreviews?.data?.map(\.id),
              let appPreviews = included?.compactMap({ relationship -> AppPreview? in
                  guard case let .appPreview(appPreview) = relationship else { return nil }
                  return appPreviewIds.contains(appPreview.id) ? appPreview : nil
              })
        else {
            return []
        }
        return appPreviews
    }

    public func getAppStoreVersionExperimentTreatmentLocalization() -> AppStoreVersionExperimentTreatmentLocalization? {
        included?.compactMap { relationship -> AppStoreVersionExperimentTreatmentLocalization? in
            guard case let .appStoreVersionExperimentTreatmentLocalization(appStoreVersionExperimentTreatmentLocalization) = relationship else { return nil }
            return appStoreVersionExperimentTreatmentLocalization
        }.first { $0.id == data.relationships?.appStoreVersionExperimentTreatmentLocalization?.data?.id }
    }

    public func getAppStoreVersionLocalization() -> AppStoreVersionLocalization? {
        included?.compactMap { relationship -> AppStoreVersionLocalization? in
            guard case let .appStoreVersionLocalization(appStoreVersionLocalization) = relationship else { return nil }
            return appStoreVersionLocalization
        }.first { $0.id == data.relationships?.appStoreVersionLocalization?.data?.id }
    }

    public enum Included {
        case appCustomProductPageLocalization(AppCustomProductPageLocalization)
        case appPreview(AppPreview)
        case appStoreVersionExperimentTreatmentLocalization(AppStoreVersionExperimentTreatmentLocalization)
        case appStoreVersionLocalization(AppStoreVersionLocalization)
    }
}
