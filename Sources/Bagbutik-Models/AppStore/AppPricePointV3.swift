import Bagbutik_Core
import Foundation

/**
 # AppPricePointV3
 The data structure that represents an App Price Point V3 resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/apppricepointv3>
 */
public struct AppPricePointV3: Identifiable {
    public let id: String
    public var links: ResourceLinks?
    public var type: String { "appPricePoints" }
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
        public var customerPrice: String?
        public var proceeds: String?

        public init(customerPrice: String? = nil,
                    proceeds: String? = nil)
        {
            self.customerPrice = customerPrice
            self.proceeds = proceeds
        }
    }

    public struct Relationships {
        public var app: App?
        public var territory: Territory?

        public init(app: App? = nil,
                    territory: Territory? = nil)
        {
            self.app = app
            self.territory = territory
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
