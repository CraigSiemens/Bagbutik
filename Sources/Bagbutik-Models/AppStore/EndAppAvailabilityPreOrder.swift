import Bagbutik_Core
import Foundation

/**
 # EndAppAvailabilityPreOrder
 The data structure that represents the ending of an app preorder resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/endappavailabilitypreorder>
 */
public struct EndAppAvailabilityPreOrder: Identifiable {
    public let id: String
    public var links: ResourceLinks?
    public var type: String { "endAppAvailabilityPreOrders" }

    public init(id: String,
                links: ResourceLinks? = nil)
    {
        self.id = id
        self.links = links
    }
}
