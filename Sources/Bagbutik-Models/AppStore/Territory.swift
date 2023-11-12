import Bagbutik_Core
import Foundation

/**
 # Territory
 The data structure that represents a Territories resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/territory>
 */
public struct Territory: Identifiable {
    public let id: String
    public var links: ResourceLinks?
    public var type: String { "territories" }
    public var attributes: Attributes?

    public init(id: String,
                links: ResourceLinks? = nil,
                attributes: Attributes? = nil)
    {
        self.id = id
        self.links = links
        self.attributes = attributes
    }

    /**
     # Territory.Attributes
     Attributes that describe a Territories resource.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/territory/attributes>
     */
    public struct Attributes {
        public var currency: String?

        public init(currency: String? = nil) {
            self.currency = currency
        }
    }
}
