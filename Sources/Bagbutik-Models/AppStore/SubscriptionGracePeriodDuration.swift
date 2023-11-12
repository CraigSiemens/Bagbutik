import Bagbutik_Core
import Foundation

public enum SubscriptionGracePeriodDuration: String, CodableEnum, CaseIterable {
    case threeDays = "THREE_DAYS"
    case sixteenDays = "SIXTEEN_DAYS"
    case twentyEightDays = "TWENTY_EIGHT_DAYS"

    var allCases: [Self] {
        [
            .threeDays,
            .sixteenDays,
            .twentyEightDays,
        ]
    }
}
