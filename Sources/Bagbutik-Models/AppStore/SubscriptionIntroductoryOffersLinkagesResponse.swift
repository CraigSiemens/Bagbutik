import Bagbutik_Core
import Foundation

public struct SubscriptionIntroductoryOffersLinkagesResponse: PagedResponse {
    public let data: [Data]
    public let links: PagedDocumentLinks
    public var meta: PagingInformation?

    public init(data: [Data],
                links: PagedDocumentLinks,
                meta: PagingInformation? = nil)
    {
        self.data = data
        self.links = links
        self.meta = meta
    }

    public struct Data: Identifiable {
        public let id: String
        public var type: String { "subscriptionIntroductoryOffers" }

        public init(id: String) {
            self.id = id
        }
    }
}
