import Bagbutik_Core
import Foundation

/**
 # AppPreOrder
 The data structure that represent an App Pre Orders resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/apppreorder>
 */
public struct AppPreOrder: Identifiable {
    public let id: String
    public var links: ResourceLinks?
    public var type: String { "appPreOrders" }
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

    /**
     # AppPreOrder.Attributes
     Attributes that describe an App Pre Orders resource.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/apppreorder/attributes>
     */
    public struct Attributes {
        public var appReleaseDate: String?
        public var preOrderAvailableDate: String?

        public init(appReleaseDate: String? = nil,
                    preOrderAvailableDate: String? = nil)
        {
            self.appReleaseDate = appReleaseDate
            self.preOrderAvailableDate = preOrderAvailableDate
        }
    }

    /**
     # AppPreOrder.Relationships
     The relationships you included in the request and those on which you can operate.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/apppreorder/relationships>
     */
    public struct Relationships {
        public var app: App?

        public init(app: App? = nil) {
            self.app = app
        }

        /**
         # AppPreOrder.Relationships.App
         The data and links that describe the relationship between the resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/apppreorder/relationships/app>
         */
        public struct App {
            @NullCodable public var data: Data?
            public var links: Links?

            public init(data: Data? = nil,
                        links: Links? = nil)
            {
                self.data = data
                self.links = links
            }

            /**
             # AppPreOrder.Relationships.App.Data
             The type and ID of a related resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/apppreorder/relationships/app/data>
             */
            public struct Data: Identifiable {
                public let id: String
                public var type: String { "apps" }

                public init(id: String) {
                    self.id = id
                }
            }

            /**
             # AppPreOrder.Relationships.App.Links
             The links to the related data and the relationship's self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/apppreorder/relationships/app/links>
             */
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
