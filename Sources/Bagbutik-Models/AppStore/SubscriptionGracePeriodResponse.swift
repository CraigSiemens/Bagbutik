import Bagbutik_Core
import Foundation

public struct SubscriptionGracePeriodResponse {
    public let data: SubscriptionGracePeriod
    public let links: DocumentLinks

    public init(data: SubscriptionGracePeriod,
                links: DocumentLinks)
    {
        self.data = data
        self.links = links
    }
}
