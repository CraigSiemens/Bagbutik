import Bagbutik_Core
import Foundation

public struct SubscriptionOfferCodesResponse: PagedResponse {
    public typealias Data = SubscriptionOfferCode

    public let data: [SubscriptionOfferCode]
    public var included: [Included]?
    public let links: PagedDocumentLinks
    public var meta: PagingInformation?

    public init(data: [SubscriptionOfferCode],
                included: [Included]? = nil,
                links: PagedDocumentLinks,
                meta: PagingInformation? = nil)
    {
        self.data = data
        self.included = included
        self.links = links
        self.meta = meta
    }

    public func getCustomCodes(for subscriptionOfferCode: SubscriptionOfferCode) -> [SubscriptionOfferCodeCustomCode] {
        guard let customCodeIds = subscriptionOfferCode.relationships?.customCodes?.data?.map(\.id),
              let customCodes = included?.compactMap({ relationship -> SubscriptionOfferCodeCustomCode? in
                  guard case let .subscriptionOfferCodeCustomCode(customCode) = relationship else { return nil }
                  return customCodeIds.contains(customCode.id) ? customCode : nil
              })
        else {
            return []
        }
        return customCodes
    }

    public func getOneTimeUseCodes(for subscriptionOfferCode: SubscriptionOfferCode) -> [SubscriptionOfferCodeOneTimeUseCode] {
        guard let oneTimeUseCodeIds = subscriptionOfferCode.relationships?.oneTimeUseCodes?.data?.map(\.id),
              let oneTimeUseCodes = included?.compactMap({ relationship -> SubscriptionOfferCodeOneTimeUseCode? in
                  guard case let .subscriptionOfferCodeOneTimeUseCode(oneTimeUseCode) = relationship else { return nil }
                  return oneTimeUseCodeIds.contains(oneTimeUseCode.id) ? oneTimeUseCode : nil
              })
        else {
            return []
        }
        return oneTimeUseCodes
    }

    public func getPrices(for subscriptionOfferCode: SubscriptionOfferCode) -> [SubscriptionOfferCodePrice] {
        guard let priceIds = subscriptionOfferCode.relationships?.prices?.data?.map(\.id),
              let prices = included?.compactMap({ relationship -> SubscriptionOfferCodePrice? in
                  guard case let .subscriptionOfferCodePrice(price) = relationship else { return nil }
                  return priceIds.contains(price.id) ? price : nil
              })
        else {
            return []
        }
        return prices
    }

    public func getSubscription(for subscriptionOfferCode: SubscriptionOfferCode) -> Subscription? {
        included?.compactMap { relationship -> Subscription? in
            guard case let .subscription(subscription) = relationship else { return nil }
            return subscription
        }.first { $0.id == subscriptionOfferCode.relationships?.subscription?.data?.id }
    }

    public enum Included {
        case subscription(Subscription)
        case subscriptionOfferCodeCustomCode(SubscriptionOfferCodeCustomCode)
        case subscriptionOfferCodeOneTimeUseCode(SubscriptionOfferCodeOneTimeUseCode)
        case subscriptionOfferCodePrice(SubscriptionOfferCodePrice)
    }
}
