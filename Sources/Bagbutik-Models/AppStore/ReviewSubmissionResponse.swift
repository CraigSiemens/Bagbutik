import Bagbutik_Core
import Foundation

public struct ReviewSubmissionResponse {
    public let data: ReviewSubmission
    public var included: [Included]?
    public let links: DocumentLinks

    public init(data: ReviewSubmission,
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

    public func getAppStoreVersionForReview() -> AppStoreVersion? {
        included?.compactMap { relationship -> AppStoreVersion? in
            guard case let .appStoreVersion(appStoreVersionForReview) = relationship else { return nil }
            return appStoreVersionForReview
        }.first { $0.id == data.relationships?.appStoreVersionForReview?.data?.id }
    }

    public func getItems() -> [ReviewSubmissionItem] {
        guard let itemIds = data.relationships?.items?.data?.map(\.id),
              let items = included?.compactMap({ relationship -> ReviewSubmissionItem? in
                  guard case let .reviewSubmissionItem(item) = relationship else { return nil }
                  return itemIds.contains(item.id) ? item : nil
              })
        else {
            return []
        }
        return items
    }

    public func getLastUpdatedByActor() -> Actor? {
        included?.compactMap { relationship -> Actor? in
            guard case let .actor(lastUpdatedByActor) = relationship else { return nil }
            return lastUpdatedByActor
        }.first { $0.id == data.relationships?.lastUpdatedByActor?.data?.id }
    }

    public func getSubmittedByActor() -> Actor? {
        included?.compactMap { relationship -> Actor? in
            guard case let .actor(submittedByActor) = relationship else { return nil }
            return submittedByActor
        }.first { $0.id == data.relationships?.submittedByActor?.data?.id }
    }

    public enum Included {
        case actor(Actor)
        case app(App)
        case appStoreVersion(AppStoreVersion)
        case reviewSubmissionItem(ReviewSubmissionItem)
    }
}
