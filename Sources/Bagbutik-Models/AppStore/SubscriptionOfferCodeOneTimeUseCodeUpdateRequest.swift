import Bagbutik_Core
import Foundation

public struct SubscriptionOfferCodeOneTimeUseCodeUpdateRequest: RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    public struct Data: Identifiable {
        public let id: String
        public var type: String { "subscriptionOfferCodeOneTimeUseCodes" }
        public var attributes: Attributes?

        public init(id: String,
                    attributes: Attributes? = nil)
        {
            self.id = id
            self.attributes = attributes
        }

        public struct Attributes {
            public var active: Bool?

            public init(active: Bool? = nil) {
                self.active = active
            }
        }
    }
}
