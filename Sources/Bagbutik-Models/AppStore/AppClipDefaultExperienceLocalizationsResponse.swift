import Bagbutik_Core
import Foundation

/**
 # AppClipDefaultExperienceLocalizationsResponse
 A response that contains a list of Default App Clip Experience Localizations resources.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/appclipdefaultexperiencelocalizationsresponse>
 */
public struct AppClipDefaultExperienceLocalizationsResponse: PagedResponse {
    public typealias Data = AppClipDefaultExperienceLocalization

    /// The resource data.
    public let data: [AppClipDefaultExperienceLocalization]
    /// The requested relationship data.
    public var included: [Included]?
    /// Navigational links that include the self-link.
    public let links: PagedDocumentLinks
    /// The paging information.
    public var meta: PagingInformation?

    public init(data: [AppClipDefaultExperienceLocalization],
                included: [Included]? = nil,
                links: PagedDocumentLinks,
                meta: PagingInformation? = nil)
    {
        self.data = data
        self.included = included
        self.links = links
        self.meta = meta
    }

    public func getAppClipDefaultExperience(for appClipDefaultExperienceLocalization: AppClipDefaultExperienceLocalization) -> AppClipDefaultExperience? {
        included?.compactMap { relationship -> AppClipDefaultExperience? in
            guard case let .appClipDefaultExperience(appClipDefaultExperience) = relationship else { return nil }
            return appClipDefaultExperience
        }.first { $0.id == appClipDefaultExperienceLocalization.relationships?.appClipDefaultExperience?.data?.id }
    }

    public func getAppClipHeaderImage(for appClipDefaultExperienceLocalization: AppClipDefaultExperienceLocalization) -> AppClipHeaderImage? {
        included?.compactMap { relationship -> AppClipHeaderImage? in
            guard case let .appClipHeaderImage(appClipHeaderImage) = relationship else { return nil }
            return appClipHeaderImage
        }.first { $0.id == appClipDefaultExperienceLocalization.relationships?.appClipHeaderImage?.data?.id }
    }

    public enum Included {
        case appClipDefaultExperience(AppClipDefaultExperience)
        case appClipHeaderImage(AppClipHeaderImage)
    }
}
