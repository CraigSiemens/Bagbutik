import Bagbutik_Core
import Foundation

/**
 # GameCenterAppVersionsResponse
 A response that contains a list of app version resources.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/gamecenterappversionsresponse>
 */
public struct GameCenterAppVersionsResponse: PagedResponse {
    public typealias Data = GameCenterAppVersion

    public let data: [GameCenterAppVersion]
    public var included: [Included]?
    public let links: PagedDocumentLinks
    public var meta: PagingInformation?

    public init(data: [GameCenterAppVersion],
                included: [Included]? = nil,
                links: PagedDocumentLinks,
                meta: PagingInformation? = nil)
    {
        self.data = data
        self.included = included
        self.links = links
        self.meta = meta
    }

    public func getAppStoreVersion(for gameCenterAppVersion: GameCenterAppVersion) -> AppStoreVersion? {
        included?.compactMap { relationship -> AppStoreVersion? in
            guard case let .appStoreVersion(appStoreVersion) = relationship else { return nil }
            return appStoreVersion
        }.first { $0.id == gameCenterAppVersion.relationships?.appStoreVersion?.data?.id }
    }

    public func getCompatibilityVersions(for gameCenterAppVersion: GameCenterAppVersion) -> [GameCenterAppVersion] {
        guard let compatibilityVersionIds = gameCenterAppVersion.relationships?.compatibilityVersions?.data?.map(\.id),
              let compatibilityVersions = included?.compactMap({ relationship -> GameCenterAppVersion? in
                  guard case let .gameCenterAppVersion(compatibilityVersion) = relationship else { return nil }
                  return compatibilityVersionIds.contains(compatibilityVersion.id) ? compatibilityVersion : nil
              })
        else {
            return []
        }
        return compatibilityVersions
    }

    public enum Included {
        case appStoreVersion(AppStoreVersion)
        case gameCenterAppVersion(GameCenterAppVersion)
    }
}
