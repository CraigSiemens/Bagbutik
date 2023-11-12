import Bagbutik_Core
import Foundation

/**
 # AppPriceInlineCreate
 The data structure that represents a App Price Inline Create resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/apppriceinlinecreate>
 */
public struct AppPriceInlineCreate: Identifiable {
    public var id: String?
    public var type: String { "appPrices" }

    public init(id: String? = nil) {
        self.id = id
    }
}
