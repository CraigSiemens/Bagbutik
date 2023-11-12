import Bagbutik_Core
import Foundation

public struct GameCenterAchievementLocalizationUpdateRequest: RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    public struct Data: Identifiable {
        public let id: String
        public var type: String { "gameCenterAchievementLocalizations" }
        public var attributes: Attributes?

        public init(id: String,
                    attributes: Attributes? = nil)
        {
            self.id = id
            self.attributes = attributes
        }

        public struct Attributes {
            public var afterEarnedDescription: String?
            public var beforeEarnedDescription: String?
            public var name: String?

            public init(afterEarnedDescription: String? = nil,
                        beforeEarnedDescription: String? = nil,
                        name: String? = nil)
            {
                self.afterEarnedDescription = afterEarnedDescription
                self.beforeEarnedDescription = beforeEarnedDescription
                self.name = name
            }
        }
    }
}
