import Bagbutik_Core
import Foundation

public struct SubscriptionIntroductoryOfferUpdateRequest: RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    public struct Data: Identifiable {
        public let id: String
        public var type: String { "subscriptionIntroductoryOffers" }
        public var attributes: Attributes?

        public init(id: String,
                    attributes: Attributes? = nil)
        {
            self.id = id
            self.attributes = attributes
        }

        public struct Attributes {
            public var endDate: String?

            public init(endDate: String? = nil) {
                self.endDate = endDate
            }
        }
    }
}
