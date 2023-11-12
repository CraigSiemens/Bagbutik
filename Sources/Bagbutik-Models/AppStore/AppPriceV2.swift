import Bagbutik_Core
import Foundation

public struct AppPriceV2: Identifiable {
    public let id: String
    public var links: ResourceLinks?
    public var type: String { "appPrices" }
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
        public var endDate: String?
        public var manual: Bool?
        public var startDate: String?

        public init(endDate: String? = nil,
                    manual: Bool? = nil,
                    startDate: String? = nil)
        {
            self.endDate = endDate
            self.manual = manual
            self.startDate = startDate
        }
    }

    public struct Relationships {
        public var appPricePoint: AppPricePoint?
        public var territory: Territory?

        public init(appPricePoint: AppPricePoint? = nil,
                    territory: Territory? = nil)
        {
            self.appPricePoint = appPricePoint
            self.territory = territory
        }

        public struct AppPricePoint {
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
                public var type: String { "appPricePoints" }

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
