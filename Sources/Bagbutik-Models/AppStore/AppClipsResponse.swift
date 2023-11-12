import Bagbutik_Core
import Foundation

/**
 # AppClipsResponse
 A response that contains a list of App Clips resources.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/appclipsresponse>
 */
public struct AppClipsResponse: PagedResponse {
    public typealias Data = AppClip

    /// The resource data.
    public let data: [AppClip]
    /// The requested relationship data.
    public var included: [Included]?
    /// Navigational links that include the self-link.
    public let links: PagedDocumentLinks
    /// The paging information.
    public var meta: PagingInformation?

    public init(data: [AppClip],
                included: [Included]? = nil,
                links: PagedDocumentLinks,
                meta: PagingInformation? = nil)
    {
        self.data = data
        self.included = included
        self.links = links
        self.meta = meta
    }

    public func getApp(for appClip: AppClip) -> App? {
        included?.compactMap { relationship -> App? in
            guard case let .app(app) = relationship else { return nil }
            return app
        }.first { $0.id == appClip.relationships?.app?.data?.id }
    }

    public func getAppClipDefaultExperiences(for appClip: AppClip) -> [AppClipDefaultExperience] {
        guard let appClipDefaultExperienceIds = appClip.relationships?.appClipDefaultExperiences?.data?.map(\.id),
              let appClipDefaultExperiences = included?.compactMap({ relationship -> AppClipDefaultExperience? in
                  guard case let .appClipDefaultExperience(appClipDefaultExperience) = relationship else { return nil }
                  return appClipDefaultExperienceIds.contains(appClipDefaultExperience.id) ? appClipDefaultExperience : nil
              })
        else {
            return []
        }
        return appClipDefaultExperiences
    }

    public enum Included {
        case app(App)
        case appClipDefaultExperience(AppClipDefaultExperience)
    }
}
