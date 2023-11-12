import Bagbutik_Core
import Foundation

public struct PromotedPurchaseUpdateRequest: RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    public struct Data: Identifiable {
        public let id: String
        public var type: String { "promotedPurchases" }
        public var attributes: Attributes?

        public init(id: String,
                    attributes: Attributes? = nil)
        {
            self.id = id
            self.attributes = attributes
        }

        public struct Attributes {
            public var enabled: Bool?
            public var visibleForAllUsers: Bool?

            public init(enabled: Bool? = nil,
                        visibleForAllUsers: Bool? = nil)
            {
                self.enabled = enabled
                self.visibleForAllUsers = visibleForAllUsers
            }
        }
    }
}
