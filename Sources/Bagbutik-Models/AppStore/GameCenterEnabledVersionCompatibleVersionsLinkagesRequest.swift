import Bagbutik_Core
import Foundation

/**
 # GameCenterEnabledVersionCompatibleVersionsLinkagesRequest
 A request body you use to add or remove compatible versions from a Game Center-enabled version.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/gamecenterenabledversioncompatibleversionslinkagesrequest>
 */
public struct GameCenterEnabledVersionCompatibleVersionsLinkagesRequest: RequestBody {
    public let data: [Data]

    public init(data: [Data]) {
        self.data = data
    }

    /**
     # GameCenterEnabledVersionCompatibleVersionsLinkagesRequest.Data
     The data element of the request body.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/gamecenterenabledversioncompatibleversionslinkagesrequest/data>
     */
    public struct Data: Identifiable {
        public let id: String
        public var type: String { "gameCenterEnabledVersions" }

        public init(id: String) {
            self.id = id
        }
    }
}
