import Bagbutik_Core
import Foundation

public struct SubscriptionGroupLocalizationUpdateRequest: RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    public struct Data: Identifiable {
        public let id: String
        public var type: String { "subscriptionGroupLocalizations" }
        public var attributes: Attributes?

        public init(id: String,
                    attributes: Attributes? = nil)
        {
            self.id = id
            self.attributes = attributes
        }

        public struct Attributes {
            public var customAppName: String?
            public var name: String?

            public init(customAppName: String? = nil,
                        name: String? = nil)
            {
                self.customAppName = customAppName
                self.name = name
            }
        }
    }
}
