import Bagbutik_Core
import Foundation

public struct SandboxTesterV2UpdateRequest: RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    public struct Data: Identifiable {
        public let id: String
        public var type: String { "sandboxTesters" }
        public var attributes: Attributes?

        public init(id: String,
                    attributes: Attributes? = nil)
        {
            self.id = id
            self.attributes = attributes
        }

        public struct Attributes {
            public var interruptPurchases: Bool?
            public var subscriptionRenewalRate: SandboxTesterV2.Attributes.SubscriptionRenewalRate?
            public var territory: TerritoryCode?

            public init(interruptPurchases: Bool? = nil,
                        subscriptionRenewalRate: SandboxTesterV2.Attributes.SubscriptionRenewalRate? = nil,
                        territory: TerritoryCode? = nil)
            {
                self.interruptPurchases = interruptPurchases
                self.subscriptionRenewalRate = subscriptionRenewalRate
                self.territory = territory
            }
        }
    }
}
