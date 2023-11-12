import Bagbutik_Core
import Foundation

public struct BetaAppReviewDetailWithoutIncludesResponse {
    public let data: App
    public let links: DocumentLinks

    public init(data: App,
                links: DocumentLinks)
    {
        self.data = data
        self.links = links
    }
}
