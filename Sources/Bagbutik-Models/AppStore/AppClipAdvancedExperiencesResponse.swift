import Bagbutik_Core
import Foundation

/**
 # AppClipAdvancedExperiencesResponse
 A response that contains a list of Advanced App Clip Experiences resources.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/appclipadvancedexperiencesresponse>
 */
public struct AppClipAdvancedExperiencesResponse: PagedResponse {
    public typealias Data = AppClipAdvancedExperience

    /// The resource data.
    public let data: [AppClipAdvancedExperience]
    /// The requested relationship data.
    public var included: [Included]?
    /// Navigational links that include the self-link.
    public let links: PagedDocumentLinks
    /// The paging information.
    public var meta: PagingInformation?

    public init(data: [AppClipAdvancedExperience],
                included: [Included]? = nil,
                links: PagedDocumentLinks,
                meta: PagingInformation? = nil)
    {
        self.data = data
        self.included = included
        self.links = links
        self.meta = meta
    }

    public func getAppClip(for appClipAdvancedExperience: AppClipAdvancedExperience) -> AppClip? {
        included?.compactMap { relationship -> AppClip? in
            guard case let .appClip(appClip) = relationship else { return nil }
            return appClip
        }.first { $0.id == appClipAdvancedExperience.relationships?.appClip?.data?.id }
    }

    public func getHeaderImage(for appClipAdvancedExperience: AppClipAdvancedExperience) -> AppClipAdvancedExperienceImage? {
        included?.compactMap { relationship -> AppClipAdvancedExperienceImage? in
            guard case let .appClipAdvancedExperienceImage(headerImage) = relationship else { return nil }
            return headerImage
        }.first { $0.id == appClipAdvancedExperience.relationships?.headerImage?.data?.id }
    }

    public func getLocalizations(for appClipAdvancedExperience: AppClipAdvancedExperience) -> [AppClipAdvancedExperienceLocalization] {
        guard let localizationIds = appClipAdvancedExperience.relationships?.localizations?.data?.map(\.id),
              let localizations = included?.compactMap({ relationship -> AppClipAdvancedExperienceLocalization? in
                  guard case let .appClipAdvancedExperienceLocalization(localization) = relationship else { return nil }
                  return localizationIds.contains(localization.id) ? localization : nil
              })
        else {
            return []
        }
        return localizations
    }

    public enum Included {
        case appClip(AppClip)
        case appClipAdvancedExperienceImage(AppClipAdvancedExperienceImage)
        case appClipAdvancedExperienceLocalization(AppClipAdvancedExperienceLocalization)
    }
}
