import Bagbutik_Core
import Foundation

/**
 # TerritoryAvailabilityInlineCreate
 The request body you use to create a territory availability.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/territoryavailabilityinlinecreate>
 */
public struct TerritoryAvailabilityInlineCreate: Identifiable {
    public var id: String?
    public var type: String { "territoryAvailabilities" }

    public init(id: String? = nil) {
        self.id = id
    }
}
