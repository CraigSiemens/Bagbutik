import Bagbutik_Core
import Foundation

/**
 # GameCenterGroupCreateRequest
 The request body you use to create a group.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/gamecentergroupcreaterequest>
 */
public struct GameCenterGroupCreateRequest: RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    public struct Data {
        public var type: String { "gameCenterGroups" }
        public var attributes: Attributes?

        public init(attributes: Attributes? = nil) {
            self.attributes = attributes
        }

        public struct Attributes {
            public var referenceName: String?

            public init(referenceName: String? = nil) {
                self.referenceName = referenceName
            }
        }
    }
}
