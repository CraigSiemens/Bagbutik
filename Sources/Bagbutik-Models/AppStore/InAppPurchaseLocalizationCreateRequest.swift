import Bagbutik_Core
import Foundation

public struct InAppPurchaseLocalizationCreateRequest: RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    public struct Data {
        public var type: String { "inAppPurchaseLocalizations" }
        public let attributes: Attributes
        public let relationships: Relationships

        public init(attributes: Attributes,
                    relationships: Relationships)
        {
            self.attributes = attributes
            self.relationships = relationships
        }

        public struct Attributes {
            public var description: String?
            public let locale: String
            public let name: String

            public init(description: String? = nil,
                        locale: String,
                        name: String)
            {
                self.description = description
                self.locale = locale
                self.name = name
            }
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
