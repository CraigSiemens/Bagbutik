import Bagbutik_Core
import Foundation

/**
 # AppClipDefaultExperienceResponse
 A response that contains a single Default App Clip Experiences resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/appclipdefaultexperienceresponse>
 */
public struct AppClipDefaultExperienceResponse {
    /// The resource data.
    public let data: AppClipDefaultExperience
    /// The requested relationship data.
    public var included: [Included]?
    /// Navigational links that include the self-link.
    public let links: DocumentLinks

    public init(data: AppClipDefaultExperience,
                included: [Included]? = nil,
                links: DocumentLinks)
    {
        self.data = data
        self.included = included
        self.links = links
    }

    public func getAppClip() -> AppClip? {
        included?.compactMap { relationship -> AppClip? in
            guard case let .appClip(appClip) = relationship else { return nil }
            return appClip
        }.first { $0.id == data.relationships?.appClip?.data?.id }
    }

    public func getAppClipAppStoreReviewDetail() -> AppClipAppStoreReviewDetail? {
        included?.compactMap { relationship -> AppClipAppStoreReviewDetail? in
            guard case let .appClipAppStoreReviewDetail(appClipAppStoreReviewDetail) = relationship else { return nil }
            return appClipAppStoreReviewDetail
        }.first { $0.id == data.relationships?.appClipAppStoreReviewDetail?.data?.id }
    }

    public func getAppClipDefaultExperienceLocalizations() -> [AppClipDefaultExperienceLocalization] {
        guard let appClipDefaultExperienceLocalizationIds = data.relationships?.appClipDefaultExperienceLocalizations?.data?.map(\.id),
              let appClipDefaultExperienceLocalizations = included?.compactMap({ relationship -> AppClipDefaultExperienceLocalization? in
                  guard case let .appClipDefaultExperienceLocalization(appClipDefaultExperienceLocalization) = relationship else { return nil }
                  return appClipDefaultExperienceLocalizationIds.contains(appClipDefaultExperienceLocalization.id) ? appClipDefaultExperienceLocalization : nil
              })
        else {
            return []
        }
        return appClipDefaultExperienceLocalizations
    }

    public func getReleaseWithAppStoreVersion() -> AppStoreVersion? {
        included?.compactMap { relationship -> AppStoreVersion? in
            guard case let .appStoreVersion(releaseWithAppStoreVersion) = relationship else { return nil }
            return releaseWithAppStoreVersion
        }.first { $0.id == data.relationships?.releaseWithAppStoreVersion?.data?.id }
    }

    public enum Included {
        case appClip(AppClip)
        case appClipAppStoreReviewDetail(AppClipAppStoreReviewDetail)
        case appClipDefaultExperienceLocalization(AppClipDefaultExperienceLocalization)
        case appStoreVersion(AppStoreVersion)
    }
}
