import Bagbutik_Core
import Foundation

public struct SubscriptionGracePeriod: Identifiable {
    public let id: String
    public var links: ResourceLinks?
    public var type: String { "subscriptionGracePeriods" }
    public var attributes: Attributes?

    public init(id: String,
                links: ResourceLinks? = nil,
                attributes: Attributes? = nil)
    {
        self.id = id
        self.links = links
        self.attributes = attributes
    }

    public struct Attributes {
        public var duration: SubscriptionGracePeriodDuration?
        public var optIn: Bool?
        public var renewalType: RenewalType?
        public var sandboxOptIn: Bool?

        public init(duration: SubscriptionGracePeriodDuration? = nil,
                    optIn: Bool? = nil,
                    renewalType: RenewalType? = nil,
                    sandboxOptIn: Bool? = nil)
        {
            self.duration = duration
            self.optIn = optIn
            self.renewalType = renewalType
            self.sandboxOptIn = sandboxOptIn
        }

        public enum RenewalType: String {
            case allRenewals = "ALL_RENEWALS"
            case paidToPaidOnly = "PAID_TO_PAID_ONLY"
        }
    }
}
