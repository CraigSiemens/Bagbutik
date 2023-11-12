import Bagbutik_Core
import Foundation

public struct InAppPurchaseV2Response {
    public let data: InAppPurchaseV2
    public var included: [Included]?
    public let links: DocumentLinks

    public init(data: InAppPurchaseV2,
                included: [Included]? = nil,
                links: DocumentLinks)
    {
        self.data = data
        self.included = included
        self.links = links
    }

    public func getAppStoreReviewScreenshot() -> InAppPurchaseAppStoreReviewScreenshot? {
        included?.compactMap { relationship -> InAppPurchaseAppStoreReviewScreenshot? in
            guard case let .inAppPurchaseAppStoreReviewScreenshot(appStoreReviewScreenshot) = relationship else { return nil }
            return appStoreReviewScreenshot
        }.first { $0.id == data.relationships?.appStoreReviewScreenshot?.data?.id }
    }

    public func getContent() -> InAppPurchaseContent? {
        included?.compactMap { relationship -> InAppPurchaseContent? in
            guard case let .inAppPurchaseContent(content) = relationship else { return nil }
            return content
        }.first { $0.id == data.relationships?.content?.data?.id }
    }

    public func getIapPriceSchedule() -> InAppPurchasePriceSchedule? {
        included?.compactMap { relationship -> InAppPurchasePriceSchedule? in
            guard case let .inAppPurchasePriceSchedule(iapPriceSchedule) = relationship else { return nil }
            return iapPriceSchedule
        }.first { $0.id == data.relationships?.iapPriceSchedule?.data?.id }
    }

    public func getInAppPurchaseAvailability() -> InAppPurchaseAvailability? {
        included?.compactMap { relationship -> InAppPurchaseAvailability? in
            guard case let .inAppPurchaseAvailability(inAppPurchaseAvailability) = relationship else { return nil }
            return inAppPurchaseAvailability
        }.first { $0.id == data.relationships?.inAppPurchaseAvailability?.data?.id }
    }

    public func getInAppPurchaseLocalizations() -> [InAppPurchaseLocalization] {
        guard let inAppPurchaseLocalizationIds = data.relationships?.inAppPurchaseLocalizations?.data?.map(\.id),
              let inAppPurchaseLocalizations = included?.compactMap({ relationship -> InAppPurchaseLocalization? in
                  guard case let .inAppPurchaseLocalization(inAppPurchaseLocalization) = relationship else { return nil }
                  return inAppPurchaseLocalizationIds.contains(inAppPurchaseLocalization.id) ? inAppPurchaseLocalization : nil
              })
        else {
            return []
        }
        return inAppPurchaseLocalizations
    }

    public func getPricePoints() -> [InAppPurchasePricePoint] {
        guard let pricePointIds = data.relationships?.pricePoints?.data?.map(\.id),
              let pricePoints = included?.compactMap({ relationship -> InAppPurchasePricePoint? in
                  guard case let .inAppPurchasePricePoint(pricePoint) = relationship else { return nil }
                  return pricePointIds.contains(pricePoint.id) ? pricePoint : nil
              })
        else {
            return []
        }
        return pricePoints
    }

    public func getPromotedPurchase() -> PromotedPurchase? {
        included?.compactMap { relationship -> PromotedPurchase? in
            guard case let .promotedPurchase(promotedPurchase) = relationship else { return nil }
            return promotedPurchase
        }.first { $0.id == data.relationships?.promotedPurchase?.data?.id }
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
