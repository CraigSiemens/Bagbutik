import Bagbutik_Core
import Foundation

public struct SubscriptionOfferCodeOneTimeUseCodeValue: Identifiable {
    public let id: String
    public var links: ResourceLinks?
    public var type: String { "subscriptionOfferCodeOneTimeUseCodeValues" }

    public init(id: String,
                links: ResourceLinks? = nil)
    {
        self.id = id
        self.links = links
    }
}
