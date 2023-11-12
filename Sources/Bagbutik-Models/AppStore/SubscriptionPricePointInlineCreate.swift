import Bagbutik_Core
import Foundation

public struct SubscriptionPricePointInlineCreate: Identifiable {
    public var id: String?
    public var type: String { "subscriptionPricePoints" }

    public init(id: String? = nil) {
        self.id = id
    }
}
