import Bagbutik_Core
import Foundation

public enum SubscriptionCustomerEligibility: String, CodableEnum, CaseIterable {
    case new = "NEW"
    case existing = "EXISTING"
    case expired = "EXPIRED"

    var allCases: [Self] {
        [
            .new,
            .existing,
            .expired,
        ]
    }
}
