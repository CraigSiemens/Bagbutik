import Bagbutik_Core
import Foundation

public struct InAppPurchasesV2Response: PagedResponse {
    public typealias Data = InAppPurchaseV2

    public let data: [InAppPurchaseV2]
    public var included: [Included]?
    public let links: PagedDocumentLinks
    public var meta: PagingInformation?

    public init(data: [InAppPurchaseV2],
                included: [Included]? = nil,
                links: PagedDocumentLinks,
                meta: PagingInformation? = nil)
    {
        self.data = data
        self.included = included
        self.links = links
        self.meta = meta
    }

    public func getAppStoreReviewScreenshot(for inAppPurchaseV2: InAppPurchaseV2) -> InAppPurchaseAppStoreReviewScreenshot? {
        included?.compactMap { relationship -> InAppPurchaseAppStoreReviewScreenshot? in
            guard case let .inAppPurchaseAppStoreReviewScreenshot(appStoreReviewScreenshot) = relationship else { return nil }
            return appStoreReviewScreenshot
        }.first { $0.id == inAppPurchaseV2.relationships?.appStoreReviewScreenshot?.data?.id }
    }

    public func getContent(for inAppPurchaseV2: InAppPurchaseV2) -> InAppPurchaseContent? {
        included?.compactMap { relationship -> InAppPurchaseContent? in
            guard case let .inAppPurchaseContent(content) = relationship else { return nil }
            return content
        }.first { $0.id == inAppPurchaseV2.relationships?.content?.data?.id }
    }

    public func getIapPriceSchedule(for inAppPurchaseV2: InAppPurchaseV2) -> InAppPurchasePriceSchedule? {
        included?.compactMap { relationship -> InAppPurchasePriceSchedule? in
            guard case let .inAppPurchasePriceSchedule(iapPriceSchedule) = relationship else { return nil }
            return iapPriceSchedule
        }.first { $0.id == inAppPurchaseV2.relationships?.iapPriceSchedule?.data?.id }
    }

    public func getInAppPurchaseAvailability(for inAppPurchaseV2: InAppPurchaseV2) -> InAppPurchaseAvailability? {
        included?.compactMap { relationship -> InAppPurchaseAvailability? in
            guard case let .inAppPurchaseAvailability(inAppPurchaseAvailability) = relationship else { return nil }
            return inAppPurchaseAvailability
        }.first { $0.id == inAppPurchaseV2.relationships?.inAppPurchaseAvailability?.data?.id }
    }

    public func getInAppPurchaseLocalizations(for inAppPurchaseV2: InAppPurchaseV2) -> [InAppPurchaseLocalization] {
        guard let inAppPurchaseLocalizationIds = inAppPurchaseV2.relationships?.inAppPurchaseLocalizations?.data?.map(\.id),
              let inAppPurchaseLocalizations = included?.compactMap({ relationship -> InAppPurchaseLocalization? in
                  guard case let .inAppPurchaseLocalization(inAppPurchaseLocalization) = relationship else { return nil }
                  return inAppPurchaseLocalizationIds.contains(inAppPurchaseLocalization.id) ? inAppPurchaseLocalization : nil
              })
        else {
            return []
        }
        return inAppPurchaseLocalizations
    }

    public func getPricePoints(for inAppPurchaseV2: InAppPurchaseV2) -> [InAppPurchasePricePoint] {
        guard let pricePointIds = inAppPurchaseV2.relationships?.pricePoints?.data?.map(\.id),
              let pricePoints = included?.compactMap({ relationship -> InAppPurchasePricePoint? in
                  guard case let .inAppPurchasePricePoint(pricePoint) = relationship else { return nil }
                  return pricePointIds.contains(pricePoint.id) ? pricePoint : nil
              })
        else {
            return []
        }
        return pricePoints
    }

    public func getPromotedPurchase(for inAppPurchaseV2: InAppPurchaseV2) -> PromotedPurchase? {
        included?.compactMap { relationship -> PromotedPurchase? in
            guard case let .promotedPurchase(promotedPurchase) = relationship else { return nil }
            return promotedPurchase
        }.first { $0.id == inAppPurchaseV2.relationships?.promotedPurchase?.data?.id }
    }

    public enum Included {
        case inAppPurchaseAppStoreReviewScreenshot(InAppPurchaseAppStoreReviewScreenshot)
        case inAppPurchaseAvailability(InAppPurchaseAvailability)
        case inAppPurchaseContent(InAppPurchaseContent)
        case inAppPurchaseLocalization(InAppPurchaseLocalization)
        case inAppPurchasePricePoint(InAppPurchasePricePoint)
        case inAppPurchasePriceSchedule(InAppPurchasePriceSchedule)
        case promotedPurchase(PromotedPurchase)
    }
}
