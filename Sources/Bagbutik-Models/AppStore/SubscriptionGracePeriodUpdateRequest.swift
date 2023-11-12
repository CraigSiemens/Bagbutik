import Bagbutik_Core
import Foundation

public struct SubscriptionGracePeriodUpdateRequest: RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    public struct Data: Identifiable {
        public let id: String
        public var type: String { "subscriptionGracePeriods" }
        public var attributes: Attributes?

        public init(id: String,
                    attributes: Attributes? = nil)
        {
            self.id = id
            self.attributes = attributes
        }

        public struct Attributes {
            public var duration: SubscriptionGracePeriodDuration?
            public var optIn: Bool?
            public var renewalType: SubscriptionGracePeriod.Attributes.RenewalType?
            public var sandboxOptIn: Bool?

            public init(duration: SubscriptionGracePeriodDuration? = nil,
                        optIn: Bool? = nil,
                        renewalType: SubscriptionGracePeriod.Attributes.RenewalType? = nil,
                        sandboxOptIn: Bool? = nil)
            {
                self.duration = duration
                self.optIn = optIn
                self.renewalType = renewalType
                self.sandboxOptIn = sandboxOptIn
            }
        }
    }
}
