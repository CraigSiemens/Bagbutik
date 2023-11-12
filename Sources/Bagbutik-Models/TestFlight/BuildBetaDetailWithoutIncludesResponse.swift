import Bagbutik_Core
import Foundation

public struct BuildBetaDetailWithoutIncludesResponse {
    public let data: Build
    public let links: DocumentLinks

    public init(data: Build,
                links: DocumentLinks)
    {
        self.data = data
        self.links = links
    }
}
