import Bagbutik_Core
import Foundation

public struct InAppPurchaseV2UpdateRequest: RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    public struct Data: Identifiable {
        public let id: String
        public var type: String { "inAppPurchases" }
        public var attributes: Attributes?

        public init(id: String,
                    attributes: Attributes? = nil)
        {
            self.id = id
            self.attributes = attributes
        }

        public struct Attributes {
            @available(*, deprecated, message: "Apple has marked this property deprecated and it will be removed sometime in the future.")
            public var availableInAllTerritories: Bool? = nil
            public var familySharable: Bool?
            public var name: String?
            public var reviewNote: String?

            @available(*, deprecated, message: "This uses a property Apple has marked as deprecated.")
            public init(availableInAllTerritories: Bool? = nil,
                        familySharable: Bool? = nil,
                        name: String? = nil,
                        reviewNote: String? = nil)
            {
                self.availableInAllTerritories = availableInAllTerritories
                self.familySharable = familySharable
                self.name = name
                self.reviewNote = reviewNote
            }

            public init(familySharable: Bool? = nil,
                        name: String? = nil,
                        reviewNote: String? = nil)
            {
                self.familySharable = familySharable
                self.name = name
                self.reviewNote = reviewNote
            }
        }
    }
}
