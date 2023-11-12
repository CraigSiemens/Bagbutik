import Bagbutik_Core
import Foundation

/**
 # GameCenterAppVersionUpdateRequest
 The request body you use to update an app version.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/gamecenterappversionupdaterequest>
 */
public struct GameCenterAppVersionUpdateRequest: RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    public struct Data: Identifiable {
        public let id: String
        public var type: String { "gameCenterAppVersions" }
        public var attributes: Attributes?

        public init(id: String,
                    attributes: Attributes? = nil)
        {
            self.id = id
            self.attributes = attributes
        }

        public struct Attributes {
            public var enabled: Bool?

            public init(enabled: Bool? = nil) {
                self.enabled = enabled
            }
        }
    }
}
