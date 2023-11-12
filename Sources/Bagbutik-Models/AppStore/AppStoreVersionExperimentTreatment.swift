import Bagbutik_Core
import Foundation

public struct AppStoreVersionExperimentTreatment: Identifiable {
    public let id: String
    public var links: ResourceLinks?
    public var type: String { "appStoreVersionExperimentTreatments" }
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
        public var appIcon: ImageAsset?
        public var appIconName: String?
        public var name: String?
        public var promotedDate: Date?

        public init(appIcon: ImageAsset? = nil,
                    appIconName: String? = nil,
                    name: String? = nil,
                    promotedDate: Date? = nil)
        {
            self.appIcon = appIcon
            self.appIconName = appIconName
            self.name = name
            self.promotedDate = promotedDate
        }
    }

    public struct Relationships {
        public var appStoreVersionExperiment: AppStoreVersionExperiment?
        public var appStoreVersionExperimentTreatmentLocalizations: AppStoreVersionExperimentTreatmentLocalizations?
        public var appStoreVersionExperimentV2: AppStoreVersionExperimentV2?

        public init(appStoreVersionExperiment: AppStoreVersionExperiment? = nil,
                    appStoreVersionExperimentTreatmentLocalizations: AppStoreVersionExperimentTreatmentLocalizations? = nil,
                    appStoreVersionExperimentV2: AppStoreVersionExperimentV2? = nil)
        {
            self.appStoreVersionExperiment = appStoreVersionExperiment
            self.appStoreVersionExperimentTreatmentLocalizations = appStoreVersionExperimentTreatmentLocalizations
            self.appStoreVersionExperimentV2 = appStoreVersionExperimentV2
        }

        public struct AppStoreVersionExperiment {
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
                public var type: String { "appStoreVersionExperiments" }

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

        public struct AppStoreVersionExperimentTreatmentLocalizations {
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
                public var type: String { "appStoreVersionExperimentTreatmentLocalizations" }

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

        public struct AppStoreVersionExperimentV2 {
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
                public var type: String { "appStoreVersionExperiments" }

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
