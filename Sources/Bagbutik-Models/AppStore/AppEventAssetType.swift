import Bagbutik_Core
import Foundation

public enum AppEventAssetType: String, CodableEnum, CaseIterable {
    case eventCard = "EVENT_CARD"
    case eventDetailsPage = "EVENT_DETAILS_PAGE"

    var allCases: [Self] {
        [
            .eventCard,
            .eventDetailsPage,
        ]
    }
}
