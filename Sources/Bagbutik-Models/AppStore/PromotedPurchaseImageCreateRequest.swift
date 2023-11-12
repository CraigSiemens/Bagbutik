import Bagbutik_Core
import Foundation

public struct PromotedPurchaseImageCreateRequest: RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    public struct Data {
        public var type: String { "promotedPurchaseImages" }
        public let attributes: Attributes
        public let relationships: Relationships

        public init(attributes: Attributes,
                    relationships: Relationships)
        {
            self.attributes = attributes
            self.relationships = relationships
        }

        public struct Attributes {
            public let fileName: String
            public let fileSize: Int

            public init(fileName: String,
                        fileSize: Int)
            {
                self.fileName = fileName
                self.fileSize = fileSize
            }
        }

        public struct Relationships {
            public let promotedPurchase: PromotedPurchase

            public init(promotedPurchase: PromotedPurchase) {
                self.promotedPurchase = promotedPurchase
            }

            public struct PromotedPurchase {
                public let data: Data

                public init(data: Data) {
                    self.data = data
                }

                public struct Data: Identifiable {
                    public let id: String
                    public var type: String { "promotedPurchases" }

                    public init(id: String) {
                        self.id = id
                    }
                }
            }
        }
    }
}
