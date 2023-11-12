import Bagbutik_Core
import Foundation

/**
 # AppClipResponse
 A response that contains a single App Clips resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/appclipresponse>
 */
public struct AppClipResponse {
    /// The resource data.
    public let data: AppClip
    /// The requested relationship data.
    public var included: [Included]?
    /// Navigational links that include the self-link.
    public let links: DocumentLinks

    public init(data: AppClip,
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

    public func getAppClipDefaultExperiences() -> [AppClipDefaultExperience] {
        guard let appClipDefaultExperienceIds = data.relationships?.appClipDefaultExperiences?.data?.map(\.id),
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
