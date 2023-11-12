import Bagbutik_Core
import Foundation

/**
 # GameCenterAppVersionResponse
 A response that contains a single app version resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/gamecenterappversionresponse>
 */
public struct GameCenterAppVersionResponse {
    public let data: GameCenterAppVersion
    public var included: [Included]?
    public let links: DocumentLinks

    public init(data: GameCenterAppVersion,
                included: [Included]? = nil,
                links: DocumentLinks)
    {
        self.data = data
        self.included = included
        self.links = links
    }

    public func getAppStoreVersion() -> AppStoreVersion? {
        included?.compactMap { relationship -> AppStoreVersion? in
            guard case let .appStoreVersion(appStoreVersion) = relationship else { return nil }
            return appStoreVersion
        }.first { $0.id == data.relationships?.appStoreVersion?.data?.id }
    }

    public func getCompatibilityVersions() -> [GameCenterAppVersion] {
        guard let compatibilityVersionIds = data.relationships?.compatibilityVersions?.data?.map(\.id),
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
