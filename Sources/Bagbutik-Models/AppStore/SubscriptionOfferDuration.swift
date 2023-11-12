import Bagbutik_Core
import Foundation

public enum SubscriptionOfferDuration: String, CodableEnum, CaseIterable {
    case oneDay = "ONE_DAY"
    case threeDays = "THREE_DAYS"
    case oneWeek = "ONE_WEEK"
    case twoWeeks = "TWO_WEEKS"
    case oneMonth = "ONE_MONTH"
    case twoMonths = "TWO_MONTHS"
    case threeMonths = "THREE_MONTHS"
    case sixMonths = "SIX_MONTHS"
    case oneYear = "ONE_YEAR"

    var allCases: [Self] {
        [
            .oneDay,
            .threeDays,
            .oneWeek,
            .twoWeeks,
            .oneMonth,
            .twoMonths,
            .threeMonths,
            .sixMonths,
            .oneYear,
        ]
    }
}
