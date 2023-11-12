import Bagbutik_Core
import Foundation

/**
 # TerritoryAvailability
 The data structure that represents a territory availability resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/territoryavailability>
 */
public struct TerritoryAvailability: Identifiable {
    public let id: String
    public var links: ResourceLinks?
    public var type: String { "territoryAvailabilities" }
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
        public var available: Bool?
        public var contentStatuses: Items?
        public var preOrderEnabled: Bool?
        public var preOrderPublishDate: String?
        public var releaseDate: String?

        public init(available: Bool? = nil,
                    contentStatuses: Items? = nil,
                    preOrderEnabled: Bool? = nil,
                    preOrderPublishDate: String? = nil,
                    releaseDate: String? = nil)
        {
            self.available = available
            self.contentStatuses = contentStatuses
            self.preOrderEnabled = preOrderEnabled
            self.preOrderPublishDate = preOrderPublishDate
            self.releaseDate = releaseDate
        }

        public enum Items: String {
            case available = "AVAILABLE"
            case availableForPreorderOnDate = "AVAILABLE_FOR_PREORDER_ON_DATE"
            case processingToNotAvailable = "PROCESSING_TO_NOT_AVAILABLE"
            case processingToAvailable = "PROCESSING_TO_AVAILABLE"
            case processingToPreOrder = "PROCESSING_TO_PRE_ORDER"
            case availableForSaleUnreleasedApp = "AVAILABLE_FOR_SALE_UNRELEASED_APP"
            case preorderOnUnreleasedApp = "PREORDER_ON_UNRELEASED_APP"
            case availableForPreorder = "AVAILABLE_FOR_PREORDER"
            case missingRating = "MISSING_RATING"
            case cannotSellRestrictedRating = "CANNOT_SELL_RESTRICTED_RATING"
            case brazilRequiredTaxId = "BRAZIL_REQUIRED_TAX_ID"
            case missingGrn = "MISSING_GRN"
            case unverifiedGrn = "UNVERIFIED_GRN"
            case cannotSellSeventeenPlusApps = "CANNOT_SELL_SEVENTEEN_PLUS_APPS"
            case cannotSellSexuallyExplicit = "CANNOT_SELL_SEXUALLY_EXPLICIT"
            case cannotSellNonIosGames = "CANNOT_SELL_NON_IOS_GAMES"
            case cannotSellSeventeenPlusGames = "CANNOT_SELL_SEVENTEEN_PLUS_GAMES"
            case cannotSellFrequentIntenseGambling = "CANNOT_SELL_FREQUENT_INTENSE_GAMBLING"
            case cannotSellCasino = "CANNOT_SELL_CASINO"
            case cannotSellCasinoWithoutGrac = "CANNOT_SELL_CASINO_WITHOUT_GRAC"
            case cannotSellCasinoWithoutAgeVerification = "CANNOT_SELL_CASINO_WITHOUT_AGE_VERIFICATION"
            case cannotSellFrequentIntenseAlcoholTobaccoDrugs = "CANNOT_SELL_FREQUENT_INTENSE_ALCOHOL_TOBACCO_DRUGS"
            case cannotSellFrequentIntenseViolence = "CANNOT_SELL_FREQUENT_INTENSE_VIOLENCE"
            case cannotSellFrequentIntenseSexualContentNudity = "CANNOT_SELL_FREQUENT_INTENSE_SEXUAL_CONTENT_NUDITY"
            case cannotSellInfrequentMildAlcoholTobaccoDrugs = "CANNOT_SELL_INFREQUENT_MILD_ALCOHOL_TOBACCO_DRUGS"
            case cannotSellInfrequentMildSexualContentNudity = "CANNOT_SELL_INFREQUENT_MILD_SEXUAL_CONTENT_NUDITY"
            case cannotSellAdultOnly = "CANNOT_SELL_ADULT_ONLY"
            case cannotSellFrequentIntense = "CANNOT_SELL_FREQUENT_INTENSE"
            case cannotSellFrequentIntenseWithoutGrac = "CANNOT_SELL_FREQUENT_INTENSE_WITHOUT_GRAC"
            case cannotSellGamblingContests = "CANNOT_SELL_GAMBLING_CONTESTS"
            case cannotSellGambling = "CANNOT_SELL_GAMBLING"
            case cannotSellContests = "CANNOT_SELL_CONTESTS"
            case cannotSell = "CANNOT_SELL"
        }
    }

    public struct Relationships {
        public var territory: Territory?

        public init(territory: Territory? = nil) {
            self.territory = territory
        }

        public struct Territory {
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
                public var type: String { "territories" }

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
