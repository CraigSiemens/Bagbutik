import Bagbutik_Core
import Foundation

/**
 # GameCenterAppVersionCompatibilityVersionsLinkagesRequest
 The request body you use to create a relationship between an app version and a compatibility version.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/gamecenterappversioncompatibilityversionslinkagesrequest>
 */
public struct GameCenterAppVersionCompatibilityVersionsLinkagesRequest: RequestBody {
    public let data: [Data]

    public init(data: [Data]) {
        self.data = data
    }

    public struct Data: Identifiable {
        public let id: String
        public var type: String { "gameCenterAppVersions" }

        public init(id: String) {
            self.id = id
        }
    }
}
