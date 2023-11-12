import Bagbutik_Core
import Foundation

/**
 # GameCenterAchievementImageUpdateRequest
 The request body you use to update an achievement image.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/gamecenterachievementimageupdaterequest>
 */
public struct GameCenterAchievementImageUpdateRequest: RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    public struct Data: Identifiable {
        public let id: String
        public var type: String { "gameCenterAchievementImages" }
        public var attributes: Attributes?

        public init(id: String,
                    attributes: Attributes? = nil)
        {
            self.id = id
            self.attributes = attributes
        }

        public struct Attributes {
            public var uploaded: Bool?

            public init(uploaded: Bool? = nil) {
                self.uploaded = uploaded
            }
        }
    }
}
