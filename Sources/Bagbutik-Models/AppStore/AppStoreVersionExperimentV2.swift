import Bagbutik_Core
import Foundation

public struct AppStoreVersionExperimentV2: Identifiable {
    public let id: String
    public var links: ResourceLinks?
    public var type: String { "appStoreVersionExperiments" }
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
        public var endDate: Date?
        public var name: String?
        public var platform: Platform?
        public var reviewRequired: Bool?
        public var startDate: Date?
        public var state: State?
        public var trafficProportion: Int?

        public init(endDate: Date? = nil,
                    name: String? = nil,
                    platform: Platform? = nil,
                    reviewRequired: Bool? = nil,
                    startDate: Date? = nil,
                    state: State? = nil,
                    trafficProportion: Int? = nil)
        {
            self.endDate = endDate
            self.name = name
            self.platform = platform
            self.reviewRequired = reviewRequired
            self.startDate = startDate
            self.state = state
            self.trafficProportion = trafficProportion
        }

        public enum State: String {
            case prepareForSubmission = "PREPARE_FOR_SUBMISSION"
            case readyForReview = "READY_FOR_REVIEW"
            case waitingForReview = "WAITING_FOR_REVIEW"
            case inReview = "IN_REVIEW"
            case accepted = "ACCEPTED"
            case approved = "APPROVED"
            case rejected = "REJECTED"
            case completed = "COMPLETED"
            case stopped = "STOPPED"
        }
    }

    public struct Relationships {
        public var app: App?
        public var appStoreVersionExperimentTreatments: AppStoreVersionExperimentTreatments?
        public var controlVersions: ControlVersions?
        public var latestControlVersion: LatestControlVersion?

        public init(app: App? = nil,
                    appStoreVersionExperimentTreatments: AppStoreVersionExperimentTreatments? = nil,
                    controlVersions: ControlVersions? = nil,
                    latestControlVersion: LatestControlVersion? = nil)
        {
            self.app = app
            self.appStoreVersionExperimentTreatments = appStoreVersionExperimentTreatments
            self.controlVersions = controlVersions
            self.latestControlVersion = latestControlVersion
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

        public struct AppStoreVersionExperimentTreatments {
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
                public var type: String { "appStoreVersionExperimentTreatments" }

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

        public struct ControlVersions {
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

        public struct LatestControlVersion {
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
    }
}
