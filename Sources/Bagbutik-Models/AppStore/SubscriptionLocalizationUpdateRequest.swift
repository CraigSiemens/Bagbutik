import Bagbutik_Core
import Foundation

public struct SubscriptionLocalizationUpdateRequest: RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    public struct Data: Identifiable {
        public let id: String
        public var type: String { "subscriptionLocalizations" }
        public var attributes: Attributes?

        public init(id: String,
                    attributes: Attributes? = nil)
        {
            self.id = id
            self.attributes = attributes
        }

        public struct Attributes {
            public var description: String?
            public var name: String?

            public init(description: String? = nil,
                        name: String? = nil)
            {
                self.description = description
                self.name = name
            }
        }
    }
}
