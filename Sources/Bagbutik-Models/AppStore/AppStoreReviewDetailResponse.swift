import Bagbutik_Core
import Foundation

/**
 # AppStoreReviewDetailResponse
 A response that contains a single App Store Review Details resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/appstorereviewdetailresponse>
 */
public struct AppStoreReviewDetailResponse {
    public let data: AppStoreReviewDetail
    public var included: [Included]?
    public let links: DocumentLinks

    public init(data: AppStoreReviewDetail,
                included: [Included]? = nil,
                links: DocumentLinks)
    {
        self.data = data
        self.included = included
        self.links = links
    }

    public func getAppStoreReviewAttachments() -> [AppStoreReviewAttachment] {
        guard let appStoreReviewAttachmentIds = data.relationships?.appStoreReviewAttachments?.data?.map(\.id),
              let appStoreReviewAttachments = included?.compactMap({ relationship -> AppStoreReviewAttachment? in
                  guard case let .appStoreReviewAttachment(appStoreReviewAttachment) = relationship else { return nil }
                  return appStoreReviewAttachmentIds.contains(appStoreReviewAttachment.id) ? appStoreReviewAttachment : nil
              })
        else {
            return []
        }
        return appStoreReviewAttachments
    }

    public func getAppStoreVersion() -> AppStoreVersion? {
        included?.compactMap { relationship -> AppStoreVersion? in
            guard case let .appStoreVersion(appStoreVersion) = relationship else { return nil }
            return appStoreVersion
        }.first { $0.id == data.relationships?.appStoreVersion?.data?.id }
    }

    public enum Included {
        case appStoreReviewAttachment(AppStoreReviewAttachment)
        case appStoreVersion(AppStoreVersion)
    }
}
