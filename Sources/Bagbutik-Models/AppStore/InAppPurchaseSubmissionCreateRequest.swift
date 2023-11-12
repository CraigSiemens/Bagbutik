import Bagbutik_Core
import Foundation

public struct InAppPurchaseSubmissionCreateRequest: RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    public struct Data {
        public var type: String { "inAppPurchaseSubmissions" }
        public let relationships: Relationships

        public init(relationships: Relationships) {
            self.relationships = relationships
        }

        public struct Relationships {
            public let inAppPurchaseV2: InAppPurchaseV2

            public init(inAppPurchaseV2: InAppPurchaseV2) {
                self.inAppPurchaseV2 = inAppPurchaseV2
            }

            public struct InAppPurchaseV2 {
                public let data: Data

                public init(data: Data) {
                    self.data = data
                }

                public struct Data: Identifiable {
                    public let id: String
                    public var type: String { "inAppPurchases" }

                    public init(id: String) {
                        self.id = id
                    }
                }
            }
        }
    }
}
