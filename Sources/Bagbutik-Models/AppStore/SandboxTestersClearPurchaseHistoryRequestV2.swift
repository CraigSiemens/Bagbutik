import Bagbutik_Core
import Foundation

public struct SandboxTestersClearPurchaseHistoryRequestV2: Identifiable {
    public let id: String
    public var links: ResourceLinks?
    public var type: String { "sandboxTestersClearPurchaseHistoryRequest" }

    public init(id: String,
                links: ResourceLinks? = nil)
    {
        self.id = id
        self.links = links
    }
}
