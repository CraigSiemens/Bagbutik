import Bagbutik_Core
import Foundation

public struct SandboxTesterV2: Identifiable {
    public let id: String
    public var links: ResourceLinks?
    public var type: String { "sandboxTesters" }
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
        public var acAccountName: String?
        public var applePayCompatible: Bool?
        public var firstName: String?
        public var interruptPurchases: Bool?
        public var lastName: String?
        public var subscriptionRenewalRate: SubscriptionRenewalRate?
        public var territory: TerritoryCode?

        public init(acAccountName: String? = nil,
                    applePayCompatible: Bool? = nil,
                    firstName: String? = nil,
                    interruptPurchases: Bool? = nil,
                    lastName: String? = nil,
                    subscriptionRenewalRate: SubscriptionRenewalRate? = nil,
                    territory: TerritoryCode? = nil)
        {
            self.acAccountName = acAccountName
            self.applePayCompatible = applePayCompatible
            self.firstName = firstName
            self.interruptPurchases = interruptPurchases
            self.lastName = lastName
            self.subscriptionRenewalRate = subscriptionRenewalRate
            self.territory = territory
        }

        public enum SubscriptionRenewalRate: String {
            case monthlyRenewalEveryOneHour = "MONTHLY_RENEWAL_EVERY_ONE_HOUR"
            case monthlyRenewalEveryThirtyMinutes = "MONTHLY_RENEWAL_EVERY_THIRTY_MINUTES"
            case monthlyRenewalEveryFifteenMinutes = "MONTHLY_RENEWAL_EVERY_FIFTEEN_MINUTES"
            case monthlyRenewalEveryFiveMinutes = "MONTHLY_RENEWAL_EVERY_FIVE_MINUTES"
            case monthlyRenewalEveryThreeMinutes = "MONTHLY_RENEWAL_EVERY_THREE_MINUTES"
        }
    }
}
