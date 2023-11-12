import Bagbutik_Core
import Foundation

public struct SubscriptionOfferCodeCustomCodeResponse {
    public let data: SubscriptionOfferCodeCustomCode
    public var included: [SubscriptionOfferCode]?
    public let links: DocumentLinks

    public init(data: SubscriptionOfferCodeCustomCode,
                included: [SubscriptionOfferCode]? = nil,
                links: DocumentLinks)
    {
        self.data = data
        self.included = included
        self.links = links
    }
}
