import Bagbutik_Core
import Foundation

public struct SandboxTestersClearPurchaseHistoryRequestV2Response {
    public let data: SandboxTestersClearPurchaseHistoryRequestV2
    public let links: DocumentLinks

    public init(data: SandboxTestersClearPurchaseHistoryRequestV2,
                links: DocumentLinks)
    {
        self.data = data
        self.links = links
    }
}
