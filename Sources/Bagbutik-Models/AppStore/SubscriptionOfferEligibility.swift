import Bagbutik_Core
import Foundation

public enum SubscriptionOfferEligibility: String, Codable, CaseIterable {
    case stackWithIntroOffers = "STACK_WITH_INTRO_OFFERS"
    case replaceIntroOffers = "REPLACE_INTRO_OFFERS"
}
