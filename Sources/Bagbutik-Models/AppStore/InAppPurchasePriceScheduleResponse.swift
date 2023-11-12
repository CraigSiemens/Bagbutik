import Bagbutik_Core
import Foundation

public struct InAppPurchasePriceScheduleResponse {
    public let data: InAppPurchasePriceSchedule
    public var included: [Included]?
    public let links: DocumentLinks

    public init(data: InAppPurchasePriceSchedule,
                included: [Included]? = nil,
                links: DocumentLinks)
    {
        self.data = data
        self.included = included
        self.links = links
    }

    public func getAutomaticPrices() -> [InAppPurchasePrice] {
        guard let automaticPriceIds = data.relationships?.automaticPrices?.data?.map(\.id),
              let automaticPrices = included?.compactMap({ relationship -> InAppPurchasePrice? in
                  guard case let .inAppPurchasePrice(automaticPrice) = relationship else { return nil }
                  return automaticPriceIds.contains(automaticPrice.id) ? automaticPrice : nil
              })
        else {
            return []
        }
        return automaticPrices
    }

    public func getBaseTerritory() -> Territory? {
        included?.compactMap { relationship -> Territory? in
            guard case let .territory(baseTerritory) = relationship else { return nil }
            return baseTerritory
        }.first { $0.id == data.relationships?.baseTerritory?.data?.id }
    }

    public func getInAppPurchase() -> InAppPurchaseV2? {
        included?.compactMap { relationship -> InAppPurchaseV2? in
            guard case let .inAppPurchaseV2(inAppPurchase) = relationship else { return nil }
            return inAppPurchase
        }.first { $0.id == data.relationships?.inAppPurchase?.data?.id }
    }

    public func getManualPrices() -> [InAppPurchasePrice] {
        guard let manualPriceIds = data.relationships?.manualPrices?.data?.map(\.id),
              let manualPrices = included?.compactMap({ relationship -> InAppPurchasePrice? in
                  guard case let .inAppPurchasePrice(manualPrice) = relationship else { return nil }
                  return manualPriceIds.contains(manualPrice.id) ? manualPrice : nil
              })
        else {
            return []
        }
        return manualPrices
    }

    public enum Included {
        case inAppPurchasePrice(InAppPurchasePrice)
        case inAppPurchaseV2(InAppPurchaseV2)
        case territory(Territory)
    }
}
