import Bagbutik_Core
import Foundation

public struct SubscriptionOfferCodeCustomCode: Identifiable {
    public let id: String
    public var links: ResourceLinks?
    public var type: String { "subscriptionOfferCodeCustomCodes" }
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
        public var active: Bool?
        public var createdDate: Date?
        public var customCode: String?
        public var expirationDate: String?
        public var numberOfCodes: Int?

        public init(active: Bool? = nil,
                    createdDate: Date? = nil,
                    customCode: String? = nil,
                    expirationDate: String? = nil,
                    numberOfCodes: Int? = nil)
        {
            self.active = active
            self.createdDate = createdDate
            self.customCode = customCode
            self.expirationDate = expirationDate
            self.numberOfCodes = numberOfCodes
        }
    }

    public struct Relationships {
        public var offerCode: OfferCode?

        public init(offerCode: OfferCode? = nil) {
            self.offerCode = offerCode
        }

        public struct OfferCode {
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
                public var type: String { "subscriptionOfferCodes" }

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
