import Bagbutik_Core
import Foundation

/**
 # GameCenterAchievementUpdateRequest
 The request body you use to update a Game Center achievement.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/gamecenterachievementupdaterequest>
 */
public struct GameCenterAchievementUpdateRequest: RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    public struct Data: Identifiable {
        public let id: String
        public var type: String { "gameCenterAchievements" }
        public var attributes: Attributes?

        public init(id: String,
                    attributes: Attributes? = nil)
        {
            self.id = id
            self.attributes = attributes
        }

        public struct Attributes {
            public var archived: Bool?
            public var points: Int?
            public var referenceName: String?
            public var repeatable: Bool?
            public var showBeforeEarned: Bool?

            public init(archived: Bool? = nil,
                        points: Int? = nil,
                        referenceName: String? = nil,
                        repeatable: Bool? = nil,
                        showBeforeEarned: Bool? = nil)
            {
                self.archived = archived
                self.points = points
                self.referenceName = referenceName
                self.repeatable = repeatable
                self.showBeforeEarned = showBeforeEarned
            }
        }
    }
}
