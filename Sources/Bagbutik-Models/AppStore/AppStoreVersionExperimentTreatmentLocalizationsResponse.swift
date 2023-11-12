import Bagbutik_Core
import Foundation

public struct AppStoreVersionExperimentTreatmentLocalizationsResponse: PagedResponse {
    public typealias Data = AppStoreVersionExperimentTreatmentLocalization

    public let data: [AppStoreVersionExperimentTreatmentLocalization]
    public var included: [Included]?
    public let links: PagedDocumentLinks
    public var meta: PagingInformation?

    public init(data: [AppStoreVersionExperimentTreatmentLocalization],
                included: [Included]? = nil,
                links: PagedDocumentLinks,
                meta: PagingInformation? = nil)
    {
        self.data = data
        self.included = included
        self.links = links
        self.meta = meta
    }

    public func getAppPreviewSets(for appStoreVersionExperimentTreatmentLocalization: AppStoreVersionExperimentTreatmentLocalization) -> [AppPreviewSet] {
        guard let appPreviewSetIds = appStoreVersionExperimentTreatmentLocalization.relationships?.appPreviewSets?.data?.map(\.id),
              let appPreviewSets = included?.compactMap({ relationship -> AppPreviewSet? in
                  guard case let .appPreviewSet(appPreviewSet) = relationship else { return nil }
                  return appPreviewSetIds.contains(appPreviewSet.id) ? appPreviewSet : nil
              })
        else {
            return []
        }
        return appPreviewSets
    }

    public func getAppScreenshotSets(for appStoreVersionExperimentTreatmentLocalization: AppStoreVersionExperimentTreatmentLocalization) -> [AppScreenshotSet] {
        guard let appScreenshotSetIds = appStoreVersionExperimentTreatmentLocalization.relationships?.appScreenshotSets?.data?.map(\.id),
              let appScreenshotSets = included?.compactMap({ relationship -> AppScreenshotSet? in
                  guard case let .appScreenshotSet(appScreenshotSet) = relationship else { return nil }
                  return appScreenshotSetIds.contains(appScreenshotSet.id) ? appScreenshotSet : nil
              })
        else {
            return []
        }
        return appScreenshotSets
    }

    public func getAppStoreVersionExperimentTreatment(for appStoreVersionExperimentTreatmentLocalization: AppStoreVersionExperimentTreatmentLocalization) -> AppStoreVersionExperimentTreatment? {
        included?.compactMap { relationship -> AppStoreVersionExperimentTreatment? in
            guard case let .appStoreVersionExperimentTreatment(appStoreVersionExperimentTreatment) = relationship else { return nil }
            return appStoreVersionExperimentTreatment
        }.first { $0.id == appStoreVersionExperimentTreatmentLocalization.relationships?.appStoreVersionExperimentTreatment?.data?.id }
    }

    public enum Included {
        case appPreviewSet(AppPreviewSet)
        case appScreenshotSet(AppScreenshotSet)
        case appStoreVersionExperimentTreatment(AppStoreVersionExperimentTreatment)
    }
}
