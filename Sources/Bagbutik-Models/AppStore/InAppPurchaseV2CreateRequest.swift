import Bagbutik_Core
import Foundation

public struct InAppPurchaseV2CreateRequest: RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    public struct Data {
        public var type: String { "inAppPurchases" }
        public let attributes: Attributes
        public let relationships: Relationships

        public init(attributes: Attributes,
                    relationships: Relationships)
        {
            self.attributes = attributes
            self.relationships = relationships
        }

        public struct Attributes {
            @available(*, deprecated, message: "Apple has marked this property deprecated and it will be removed sometime in the future.")
            public var availableInAllTerritories: Bool? = nil
            public var familySharable: Bool?
            public let inAppPurchaseType: InAppPurchaseType
            public let name: String
            public let productId: String
            public var reviewNote: String?

            @available(*, deprecated, message: "This uses a property Apple has marked as deprecated.")
            public init(availableInAllTerritories: Bool? = nil,
                        familySharable: Bool? = nil,
                        inAppPurchaseType: InAppPurchaseType,
                        name: String,
                        productId: String,
                        reviewNote: String? = nil)
            {
                self.availableInAllTerritories = availableInAllTerritories
                self.familySharable = familySharable
                self.inAppPurchaseType = inAppPurchaseType
                self.name = name
                self.productId = productId
                self.reviewNote = reviewNote
            }

            public init(familySharable: Bool? = nil,
                        inAppPurchaseType: InAppPurchaseType,
                        name: String,
                        productId: String,
                        reviewNote: String? = nil)
            {
                self.familySharable = familySharable
                self.inAppPurchaseType = inAppPurchaseType
                self.name = name
                self.productId = productId
                self.reviewNote = reviewNote
            }
        }

        public struct Relationships {
            public let app: App

            public init(app: App) {
                self.app = app
            }

            public struct App {
                public let data: Data

                public init(data: Data) {
                    self.data = data
                }

                public struct Data: Identifiable {
                    public let id: String
                    public var type: String { "apps" }

                    public init(id: String) {
                        self.id = id
                    }
                }
            }
        }
    }
}
