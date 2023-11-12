import Bagbutik_Core
import Foundation

public struct SubscriptionOfferCodeOneTimeUseCodeCreateRequest: RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    public struct Data {
        public var type: String { "subscriptionOfferCodeOneTimeUseCodes" }
        public let attributes: Attributes
        public let relationships: Relationships

        public init(attributes: Attributes,
                    relationships: Relationships)
        {
            self.attributes = attributes
            self.relationships = relationships
        }

        public struct Attributes {
            public let expirationDate: String
            public let numberOfCodes: Int

            public init(expirationDate: String,
                        numberOfCodes: Int)
            {
                self.expirationDate = expirationDate
                self.numberOfCodes = numberOfCodes
            }
        }

        public struct Relationships {
            public let offerCode: OfferCode

            public init(offerCode: OfferCode) {
                self.offerCode = offerCode
            }

            public struct OfferCode {
                public let data: Data

                public init(data: Data) {
                    self.data = data
                }

                public struct Data: Identifiable {
                    public let id: String
                    public var type: String { "subscriptionOfferCodes" }

                    public init(id: String) {
                        self.id = id
                    }
                }
            }
        }
    }
}
