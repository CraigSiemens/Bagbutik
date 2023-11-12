import Bagbutik_Core
import Foundation

public struct InAppPurchaseContent: Identifiable {
    public let id: String
    public var links: ResourceLinks?
    public var type: String { "inAppPurchaseContents" }
    public var attributes: Attributes?
    public var relationships: Relationships?

    public init(id: String,
                links: ResourceLinks? = nil,
                attributes: Attributes? = nil,
                relationships: Relationships? = nil)
    {
        self.id = id
        self.links = links
        self.attributes = attributes
        self.relationships = relationships
    }

    public struct Attributes {
        public var fileName: String?
        public var fileSize: Int?
        public var lastModifiedDate: Date?
        public var url: String?

        public init(fileName: String? = nil,
                    fileSize: Int? = nil,
                    lastModifiedDate: Date? = nil,
                    url: String? = nil)
        {
            self.fileName = fileName
            self.fileSize = fileSize
            self.lastModifiedDate = lastModifiedDate
            self.url = url
        }
    }

    public struct Relationships {
        public var inAppPurchaseV2: InAppPurchaseV2?

        public init(inAppPurchaseV2: InAppPurchaseV2? = nil) {
            self.inAppPurchaseV2 = inAppPurchaseV2
        }

        public struct InAppPurchaseV2 {
            @NullCodable public var data: Data?
            public var links: Links?

            public init(data: Data? = nil,
                        links: Links? = nil)
            {
                self.data = data
                self.links = links
            }

            public struct Data: Identifiable {
                public let id: String
                public var type: String { "inAppPurchases" }

                public init(id: String) {
                    self.id = id
                }
            }

            public struct Links {
                public var related: String?
                public var itself: String?

                public init(related: String? = nil,
                            self itself: String? = nil)
                {
                    self.related = related
                    self.itself = itself
                }
            }
        }
    }
}
