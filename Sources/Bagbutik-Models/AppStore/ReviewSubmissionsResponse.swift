import Bagbutik_Core
import Foundation

public struct ReviewSubmissionsResponse: PagedResponse {
    public typealias Data = ReviewSubmission

    public let data: [ReviewSubmission]
    public var included: [Included]?
    public let links: PagedDocumentLinks
    public var meta: PagingInformation?

    public init(data: [ReviewSubmission],
                included: [Included]? = nil,
                links: PagedDocumentLinks,
                meta: PagingInformation? = nil)
    {
        self.data = data
        self.included = included
        self.links = links
        self.meta = meta
    }

    public func getApp(for reviewSubmission: ReviewSubmission) -> App? {
        included?.compactMap { relationship -> App? in
            guard case let .app(app) = relationship else { return nil }
            return app
        }.first { $0.id == reviewSubmission.relationships?.app?.data?.id }
    }

    public func getAppStoreVersionForReview(for reviewSubmission: ReviewSubmission) -> AppStoreVersion? {
        included?.compactMap { relationship -> AppStoreVersion? in
            guard case let .appStoreVersion(appStoreVersionForReview) = relationship else { return nil }
            return appStoreVersionForReview
        }.first { $0.id == reviewSubmission.relationships?.appStoreVersionForReview?.data?.id }
    }

    public func getItems(for reviewSubmission: ReviewSubmission) -> [ReviewSubmissionItem] {
        guard let itemIds = reviewSubmission.relationships?.items?.data?.map(\.id),
              let items = included?.compactMap({ relationship -> ReviewSubmissionItem? in
                  guard case let .reviewSubmissionItem(item) = relationship else { return nil }
                  return itemIds.contains(item.id) ? item : nil
              })
        else {
            return []
        }
        return items
    }

    public func getLastUpdatedByActor(for reviewSubmission: ReviewSubmission) -> Actor? {
        included?.compactMap { relationship -> Actor? in
            guard case let .actor(lastUpdatedByActor) = relationship else { return nil }
            return lastUpdatedByActor
        }.first { $0.id == reviewSubmission.relationships?.lastUpdatedByActor?.data?.id }
    }

    public func getSubmittedByActor(for reviewSubmission: ReviewSubmission) -> Actor? {
        included?.compactMap { relationship -> Actor? in
            guard case let .actor(submittedByActor) = relationship else { return nil }
            return submittedByActor
        }.first { $0.id == reviewSubmission.relationships?.submittedByActor?.data?.id }
    }

    public enum Included {
        case actor(Actor)
        case app(App)
        case appStoreVersion(AppStoreVersion)
        case reviewSubmissionItem(ReviewSubmissionItem)
    }
}
