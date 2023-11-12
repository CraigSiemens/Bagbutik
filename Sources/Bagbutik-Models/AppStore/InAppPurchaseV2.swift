import Bagbutik_Core
import Foundation

public struct InAppPurchaseV2: Identifiable {
    public let id: String
    public var links: ResourceLinks?
    public var type: String { "inAppPurchases" }
    public var attributes: Attributes?
    public var relationships: Relationships?

    public init(id: String,
                links: ResourceLinks? = nil,
                attributes: Attributes? = nil,
                relationships: Relationships? = nil)
    {
        self.id = id
        self.links = links
        self.attributes = attributes
        self.relationships = relationships
    }

    public struct Attributes {
        @available(*, deprecated, message: "Apple has marked this property deprecated and it will be removed sometime in the future.")
        public var availableInAllTerritories: Bool? = nil
        public var contentHosting: Bool?
        public var familySharable: Bool?
        public var inAppPurchaseType: InAppPurchaseType?
        public var name: String?
        public var productId: String?
        public var reviewNote: String?
        public var state: InAppPurchaseState?

        @available(*, deprecated, message: "This uses a property Apple has marked as deprecated.")
        public init(availableInAllTerritories: Bool? = nil,
                    contentHosting: Bool? = nil,
                    familySharable: Bool? = nil,
                    inAppPurchaseType: InAppPurchaseType? = nil,
                    name: String? = nil,
                    productId: String? = nil,
                    reviewNote: String? = nil,
                    state: InAppPurchaseState? = nil)
        {
            self.availableInAllTerritories = availableInAllTerritories
            self.contentHosting = contentHosting
            self.familySharable = familySharable
            self.inAppPurchaseType = inAppPurchaseType
            self.name = name
            self.productId = productId
            self.reviewNote = reviewNote
            self.state = state
        }

        public init(contentHosting: Bool? = nil,
                    familySharable: Bool? = nil,
                    inAppPurchaseType: InAppPurchaseType? = nil,
                    name: String? = nil,
                    productId: String? = nil,
                    reviewNote: String? = nil,
                    state: InAppPurchaseState? = nil)
        {
            self.contentHosting = contentHosting
            self.familySharable = familySharable
            self.inAppPurchaseType = inAppPurchaseType
            self.name = name
            self.productId = productId
            self.reviewNote = reviewNote
            self.state = state
        }
    }

    public struct Relationships {
        public var appStoreReviewScreenshot: AppStoreReviewScreenshot?
        public var content: Content?
        public var iapPriceSchedule: IapPriceSchedule?
        public var inAppPurchaseAvailability: InAppPurchaseAvailability?
        public var inAppPurchaseLocalizations: InAppPurchaseLocalizations?
        public var pricePoints: PricePoints?
        public var promotedPurchase: PromotedPurchase?

        public init(appStoreReviewScreenshot: AppStoreReviewScreenshot? = nil,
                    content: Content? = nil,
                    iapPriceSchedule: IapPriceSchedule? = nil,
                    inAppPurchaseAvailability: InAppPurchaseAvailability? = nil,
                    inAppPurchaseLocalizations: InAppPurchaseLocalizations? = nil,
                    pricePoints: PricePoints? = nil,
                    promotedPurchase: PromotedPurchase? = nil)
        {
            self.appStoreReviewScreenshot = appStoreReviewScreenshot
            self.content = content
            self.iapPriceSchedule = iapPriceSchedule
            self.inAppPurchaseAvailability = inAppPurchaseAvailability
            self.inAppPurchaseLocalizations = inAppPurchaseLocalizations
            self.pricePoints = pricePoints
            self.promotedPurchase = promotedPurchase
        }

        public struct AppStoreReviewScreenshot {
            @NullCodable public var data: Data?
            public var links: Links?

            public init(data: Data? = nil,
                        links: Links? = nil)
            {
                self.data = data
                self.links = links
            }

            public struct Data: Identifiable {
                public let id: String
                public var type: String { "inAppPurchaseAppStoreReviewScreenshots" }

                public init(id: String) {
                    self.id = id
                }
            }

            public struct Links {
                public var related: String?
                public var itself: String?

                public init(related: String? = nil,
                            self itself: String? = nil)
                {
                    self.related = related
                    self.itself = itself
                }
            }
        }

        public struct Content {
            @NullCodable public var data: Data?
            public var links: Links?

            public init(data: Data? = nil,
                        links: Links? = nil)
            {
                self.data = data
                self.links = links
            }

            public struct Data: Identifiable {
                public let id: String
                public var type: String { "inAppPurchaseContents" }

                public init(id: String) {
                    self.id = id
                }
            }

            public struct Links {
                public var related: String?
                public var itself: String?

                public init(related: String? = nil,
                            self itself: String? = nil)
                {
                    self.related = related
                    self.itself = itself
                }
            }
        }

        public struct IapPriceSchedule {
            @NullCodable public var data: Data?
            public var links: Links?

            public init(data: Data? = nil,
                        links: Links? = nil)
            {
                self.data = data
                self.links = links
            }

            public struct Data: Identifiable {
                public let id: String
                public var type: String { "inAppPurchasePriceSchedules" }

                public init(id: String) {
                    self.id = id
                }
            }

            public struct Links {
                public var related: String?
                public var itself: String?

                public init(related: String? = nil,
                            self itself: String? = nil)
                {
                    self.related = related
                    self.itself = itself
                }
            }
        }

        public struct InAppPurchaseAvailability {
            @NullCodable public var data: Data?
            public var links: Links?

            public init(data: Data? = nil,
                        links: Links? = nil)
            {
                self.data = data
                self.links = links
            }

            public struct Data: Identifiable {
                public let id: String
                public var type: String { "inAppPurchaseAvailabilities" }

                public init(id: String) {
                    self.id = id
                }
            }

            public struct Links {
                public var related: String?
                public var itself: String?

                public init(related: String? = nil,
                            self itself: String? = nil)
                {
                    self.related = related
                    self.itself = itself
                }
            }
        }

        public struct InAppPurchaseLocalizations {
            @NullCodable public var data: [Data]?
            public var links: Links?
            public var meta: PagingInformation?

            public init(data: [Data]? = nil,
                        links: Links? = nil,
                        meta: PagingInformation? = nil)
            {
                self.data = data
                self.links = links
                self.meta = meta
            }

            public struct Data: Identifiable {
                public let id: String
                public var type: String { "inAppPurchaseLocalizations" }

                public init(id: String) {
                    self.id = id
                }
            }

            public struct Links {
                public var related: String?
                public var itself: String?

                public init(related: String? = nil,
                            self itself: String? = nil)
                {
                    self.related = related
                    self.itself = itself
                }
            }
        }

        public struct PricePoints {
            @NullCodable public var data: [Data]?
            public var links: Links?
            public var meta: PagingInformation?

            public init(data: [Data]? = nil,
                        links: Links? = nil,
                        meta: PagingInformation? = nil)
            {
                self.data = data
                self.links = links
                self.meta = meta
            }

            public struct Data: Identifiable {
                public let id: String
                public var type: String { "inAppPurchasePricePoints" }

                public init(id: String) {
                    self.id = id
                }
            }

            public struct Links {
                public var related: String?
                public var itself: String?

                public init(related: String? = nil,
                            self itself: String? = nil)
                {
                    self.related = related
                    self.itself = itself
                }
            }
        }

        public struct PromotedPurchase {
            @NullCodable public var data: Data?
            public var links: Links?

            public init(data: Data? = nil,
                        links: Links? = nil)
            {
                self.data = data
                self.links = links
            }

            public struct Data: Identifiable {
                public let id: String
                public var type: String { "promotedPurchases" }

                public init(id: String) {
                    self.id = id
                }
            }

            public struct Links {
                public var related: String?
                public var itself: String?

                public init(related: String? = nil,
                            self itself: String? = nil)
                {
                    self.related = related
                    self.itself = itself
                }
            }
        }
    }
}
