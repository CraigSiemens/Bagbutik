import Bagbutik_Core
import Foundation

public enum SubscriptionOfferEligibility: String, CodableEnum, CaseIterable {
    case stackWithIntroOffers = "STACK_WITH_INTRO_OFFERS"
    case replaceIntroOffers = "REPLACE_INTRO_OFFERS"

    var allCases: [Self] {
        [
            .stackWithIntroOffers,
            .replaceIntroOffers,
        ]
    }
}
