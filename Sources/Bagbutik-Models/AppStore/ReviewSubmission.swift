import Bagbutik_Core
import Foundation

public struct ReviewSubmission: Identifiable {
    public let id: String
    public var links: ResourceLinks?
    public var type: String { "reviewSubmissions" }
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
        public var platform: Platform?
        public var state: State?
        public var submittedDate: Date?

        public init(platform: Platform? = nil,
                    state: State? = nil,
                    submittedDate: Date? = nil)
        {
            self.platform = platform
            self.state = state
            self.submittedDate = submittedDate
        }

        public enum State: String {
            case readyForReview = "READY_FOR_REVIEW"
            case waitingForReview = "WAITING_FOR_REVIEW"
            case inReview = "IN_REVIEW"
            case unresolvedIssues = "UNRESOLVED_ISSUES"
            case canceling = "CANCELING"
            case completing = "COMPLETING"
            case complete = "COMPLETE"
        }
    }

    public struct Relationships {
        public var app: App?
        public var appStoreVersionForReview: AppStoreVersionForReview?
        public var items: Items?
        public var lastUpdatedByActor: LastUpdatedByActor?
        public var submittedByActor: SubmittedByActor?

        public init(app: App? = nil,
                    appStoreVersionForReview: AppStoreVersionForReview? = nil,
                    items: Items? = nil,
                    lastUpdatedByActor: LastUpdatedByActor? = nil,
                    submittedByActor: SubmittedByActor? = nil)
        {
            self.app = app
            self.appStoreVersionForReview = appStoreVersionForReview
            self.items = items
            self.lastUpdatedByActor = lastUpdatedByActor
            self.submittedByActor = submittedByActor
        }

        public struct App {
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
                public var type: String { "apps" }

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

        public struct AppStoreVersionForReview {
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
                public var type: String { "appStoreVersions" }

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

        public struct Items {
            @NullCodable public var data: [Item]?
            public var links: Links?
            public var meta: PagingInformation?

            public init(data: [Item]? = nil,
                        links: Links? = nil,
                        meta: PagingInformation? = nil)
            {
                self.data = data
                self.links = links
                self.meta = meta
            }

            public struct Item: Identifiable {
                public let id: String
                public var type: String { "reviewSubmissionItems" }

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

        public struct LastUpdatedByActor {
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
                public var type: String { "actors" }

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

        public struct SubmittedByActor {
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
                public var type: String { "actors" }

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
