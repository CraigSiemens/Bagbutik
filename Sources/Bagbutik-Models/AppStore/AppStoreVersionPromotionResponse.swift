import Bagbutik_Core
import Foundation

public struct AppStoreVersionPromotionResponse {
    public let data: AppStoreVersionPromotion
    public let links: DocumentLinks

    public init(data: AppStoreVersionPromotion,
                links: DocumentLinks)
    {
        self.data = data
        self.links = links
    }
}
