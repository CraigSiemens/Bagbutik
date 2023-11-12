import Bagbutik_Core
import Foundation

public struct TerritoryInlineCreate: Identifiable {
    public var id: String?
    public var type: String { "territories" }

    public init(id: String? = nil) {
        self.id = id
    }
}
