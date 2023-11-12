import Bagbutik_Core
import Foundation

public struct SubscriptionGroupSubmission: Identifiable {
    public let id: String
    public var links: ResourceLinks?
    public var type: String { "subscriptionGroupSubmissions" }

    public init(id: String,
                links: ResourceLinks? = nil)
    {
        self.id = id
        self.links = links
    }
}
