import Bagbutik_Core
import Foundation

public struct AppCustomProductPage: Identifiable {
    public let id: String
    public var links: ResourceLinks?
    public var type: String { "appCustomProductPages" }
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
        public var name: String?
        public var url: String?
        public var visible: Bool?

        public init(name: String? = nil,
                    url: String? = nil,
                    visible: Bool? = nil)
        {
            self.name = name
            self.url = url
            self.visible = visible
        }
    }

    public struct Relationships {
        public var app: App?
        public var appCustomProductPageVersions: AppCustomProductPageVersions?

        public init(app: App? = nil,
                    appCustomProductPageVersions: AppCustomProductPageVersions? = nil)
        {
            self.app = app
            self.appCustomProductPageVersions = appCustomProductPageVersions
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

        public struct AppCustomProductPageVersions {
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
                public var type: String { "appCustomProductPageVersions" }

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
