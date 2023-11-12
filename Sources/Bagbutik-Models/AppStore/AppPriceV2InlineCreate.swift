import Bagbutik_Core
import Foundation

/**
 # AppPriceV2InlineCreate
 The data structure that represents a App Price V2 Inline Create resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/apppricev2inlinecreate>
 */
public struct AppPriceV2InlineCreate: Identifiable {
    public var id: String?
    public var type: String { "appPrices" }

    public init(id: String? = nil) {
        self.id = id
    }
}
