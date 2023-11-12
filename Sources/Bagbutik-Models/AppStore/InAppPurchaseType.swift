import Bagbutik_Core
import Foundation

public enum InAppPurchaseType: String, ParameterValue, CodableEnum, CaseIterable {
    case consumable = "CONSUMABLE"
    case nonConsumable = "NON_CONSUMABLE"
    case nonRenewingSubscription = "NON_RENEWING_SUBSCRIPTION"

    var allCases: [Self] {
        [
            .consumable,
            .nonConsumable,
            .nonRenewingSubscription,
        ]
    }
}
