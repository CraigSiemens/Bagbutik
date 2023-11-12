import Bagbutik_Core
import Foundation

public struct AppStoreVersionExperimentTreatmentLocalization: Identifiable {
    public let id: String
    public var links: ResourceLinks?
    public var type: String { "appStoreVersionExperimentTreatmentLocalizations" }
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
        public var locale: String?

        public init(locale: String? = nil) {
            self.locale = locale
        }
    }

    public struct Relationships {
        public var appPreviewSets: AppPreviewSets?
        public var appScreenshotSets: AppScreenshotSets?
        public var appStoreVersionExperimentTreatment: AppStoreVersionExperimentTreatment?

        public init(appPreviewSets: AppPreviewSets? = nil,
                    appScreenshotSets: AppScreenshotSets? = nil,
                    appStoreVersionExperimentTreatment: AppStoreVersionExperimentTreatment? = nil)
        {
            self.appPreviewSets = appPreviewSets
            self.appScreenshotSets = appScreenshotSets
            self.appStoreVersionExperimentTreatment = appStoreVersionExperimentTreatment
        }

        public struct AppPreviewSets {
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
                public var type: String { "appPreviewSets" }

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

        public struct AppScreenshotSets {
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
                public var type: String { "appScreenshotSets" }

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

        public struct AppStoreVersionExperimentTreatment {
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
    }
}
