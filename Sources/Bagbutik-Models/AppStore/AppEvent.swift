import Bagbutik_Core
import Foundation

public struct AppEvent: Identifiable {
    public let id: String
    public var links: ResourceLinks?
    public var type: String { "appEvents" }
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
        public var archivedTerritorySchedules: [ArchivedTerritorySchedules]?
        public var badge: Badge?
        public var deepLink: String?
        public var eventState: EventState?
        public var primaryLocale: String?
        public var priority: Priority?
        public var purchaseRequirement: PurchaseRequirement?
        public var purpose: Purpose?
        public var referenceName: String?
        public var territorySchedules: [TerritorySchedules]?

        public init(archivedTerritorySchedules: [ArchivedTerritorySchedules]? = nil,
                    badge: Badge? = nil,
                    deepLink: String? = nil,
                    eventState: EventState? = nil,
                    primaryLocale: String? = nil,
                    priority: Priority? = nil,
                    purchaseRequirement: PurchaseRequirement? = nil,
                    purpose: Purpose? = nil,
                    referenceName: String? = nil,
                    territorySchedules: [TerritorySchedules]? = nil)
        {
            self.archivedTerritorySchedules = archivedTerritorySchedules
            self.badge = badge
            self.deepLink = deepLink
            self.eventState = eventState
            self.primaryLocale = primaryLocale
            self.priority = priority
            self.purchaseRequirement = purchaseRequirement
            self.purpose = purpose
            self.referenceName = referenceName
            self.territorySchedules = territorySchedules
        }

        public struct ArchivedTerritorySchedules {
            public var eventEnd: Date?
            public var eventStart: Date?
            public var publishStart: Date?
            public var territories: [String]?

            public init(eventEnd: Date? = nil,
                        eventStart: Date? = nil,
                        publishStart: Date? = nil,
                        territories: [String]? = nil)
            {
                self.eventEnd = eventEnd
                self.eventStart = eventStart
                self.publishStart = publishStart
                self.territories = territories
            }
        }

        public enum Badge: String {
            case liveEvent = "LIVE_EVENT"
            case premiere = "PREMIERE"
            case challenge = "CHALLENGE"
            case competition = "COMPETITION"
            case newSeason = "NEW_SEASON"
            case majorUpdate = "MAJOR_UPDATE"
            case specialEvent = "SPECIAL_EVENT"
        }

        public enum EventState: String {
            case draft = "DRAFT"
            case readyForReview = "READY_FOR_REVIEW"
            case waitingForReview = "WAITING_FOR_REVIEW"
            case inReview = "IN_REVIEW"
            case rejected = "REJECTED"
            case accepted = "ACCEPTED"
            case approved = "APPROVED"
            case published = "PUBLISHED"
            case past = "PAST"
            case archived = "ARCHIVED"
        }

        public enum Priority: String {
            case high = "HIGH"
            case normal = "NORMAL"
        }

        public enum PurchaseRequirement: String {
            case noCostAssociated = "NO_COST_ASSOCIATED"
            case inAppPurchase = "IN_APP_PURCHASE"
            case subscription = "SUBSCRIPTION"
            case inAppPurchaseAndSubscription = "IN_APP_PURCHASE_AND_SUBSCRIPTION"
            case inAppPurchaseOrSubscription = "IN_APP_PURCHASE_OR_SUBSCRIPTION"
        }

        public enum Purpose: String {
            case appropriateForAllUsers = "APPROPRIATE_FOR_ALL_USERS"
            case attractNewUsers = "ATTRACT_NEW_USERS"
            case keepActiveUsersInformed = "KEEP_ACTIVE_USERS_INFORMED"
            case bringBackLapsedUsers = "BRING_BACK_LAPSED_USERS"
        }

        public struct TerritorySchedules {
            public var eventEnd: Date?
            public var eventStart: Date?
            public var publishStart: Date?
            public var territories: [String]?

            public init(eventEnd: Date? = nil,
                        eventStart: Date? = nil,
                        publishStart: Date? = nil,
                        territories: [String]? = nil)
            {
                self.eventEnd = eventEnd
                self.eventStart = eventStart
                self.publishStart = publishStart
                self.territories = territories
            }
        }
    }

    public struct Relationships {
        public var localizations: Localizations?

        public init(localizations: Localizations? = nil) {
            self.localizations = localizations
        }

        public struct Localizations {
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
                public var type: String { "appEventLocalizations" }

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
