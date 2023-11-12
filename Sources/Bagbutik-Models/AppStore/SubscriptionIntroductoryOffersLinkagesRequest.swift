import Bagbutik_Core
import Foundation

public struct SubscriptionIntroductoryOffersLinkagesRequest: RequestBody {
    public let data: [Data]

    public init(data: [Data]) {
        self.data = data
    }

    public struct Data: Identifiable {
        public let id: String
        public var type: String { "subscriptionIntroductoryOffers" }

        public init(id: String) {
            self.id = id
        }
    }
}
