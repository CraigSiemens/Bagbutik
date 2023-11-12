import Bagbutik_Core
import Foundation

public struct AppCustomProductPageVersion: Identifiable {
    public let id: String
    public var links: ResourceLinks?
    public var type: String { "appCustomProductPageVersions" }
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
        public var state: State?
        public var version: String?

        public init(state: State? = nil,
                    version: String? = nil)
        {
            self.state = state
            self.version = version
        }

        public enum State: String {
            case prepareForSubmission = "PREPARE_FOR_SUBMISSION"
            case readyForReview = "READY_FOR_REVIEW"
            case waitingForReview = "WAITING_FOR_REVIEW"
            case inReview = "IN_REVIEW"
            case accepted = "ACCEPTED"
            case approved = "APPROVED"
            case replacedWithNewVersion = "REPLACED_WITH_NEW_VERSION"
            case rejected = "REJECTED"
        }
    }

    public struct Relationships {
        public var appCustomProductPage: AppCustomProductPage?
        public var appCustomProductPageLocalizations: AppCustomProductPageLocalizations?

        public init(appCustomProductPage: AppCustomProductPage? = nil,
                    appCustomProductPageLocalizations: AppCustomProductPageLocalizations? = nil)
        {
            self.appCustomProductPage = appCustomProductPage
            self.appCustomProductPageLocalizations = appCustomProductPageLocalizations
        }

        public struct AppCustomProductPage {
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
                public var type: String { "appCustomProductPages" }

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

        public struct AppCustomProductPageLocalizations {
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
                public var type: String { "appCustomProductPageLocalizations" }

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
