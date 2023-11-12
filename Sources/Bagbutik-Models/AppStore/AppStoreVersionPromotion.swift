import Bagbutik_Core
import Foundation

public struct AppStoreVersionPromotion: Identifiable {
    public let id: String
    public var links: ResourceLinks?
    public var type: String { "appStoreVersionPromotions" }

    public init(id: String,
                links: ResourceLinks? = nil)
    {
        self.id = id
        self.links = links
    }
}
