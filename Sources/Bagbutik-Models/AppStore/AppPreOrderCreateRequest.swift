import Bagbutik_Core
import Foundation

/**
 # AppPreOrderCreateRequest
 The request body you use to create an App Pre-Order.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/apppreordercreaterequest>
 */
public struct AppPreOrderCreateRequest: RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    /**
     # AppPreOrderCreateRequest.Data
     The data element of the request body.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/apppreordercreaterequest/data>
     */
    public struct Data {
        public var type: String { "appPreOrders" }
        public var attributes: Attributes?
        public let relationships: Relationships

        public init(attributes: Attributes? = nil,
                    relationships: Relationships)
        {
            self.attributes = attributes
            self.relationships = relationships
        }

        /**
         # AppPreOrderCreateRequest.Data.Attributes
         Attributes that you set that describe the new resource.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/apppreordercreaterequest/data/attributes>
         */
        public struct Attributes {
            public var appReleaseDate: String?

            public init(appReleaseDate: String? = nil) {
                self.appReleaseDate = appReleaseDate
            }
        }

        /**
         # AppPreOrderCreateRequest.Data.Relationships
         The relationships to other resources that you can set with this request.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/apppreordercreaterequest/data/relationships>
         */
        public struct Relationships {
            public let app: App

            public init(app: App) {
                self.app = app
            }

            /**
             # AppPreOrderCreateRequest.Data.Relationships.App
             The relationships to other resources that you can set with this request.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/apppreordercreaterequest/data/relationships/app>
             */
            public struct App {
                public let data: Data

                public init(data: Data) {
                    self.data = data
                }

                /**
                 # AppPreOrderCreateRequest.Data.Relationships.App.Data
                 The type and ID of the resource that you're relating with the resource you're creating.

                 Full documentation:
                 <https://developer.apple.com/documentation/appstoreconnectapi/apppreordercreaterequest/data/relationships/app/data>
                 */
                public struct Data: Identifiable {
                    public let id: String
                    public var type: String { "apps" }

                    public init(id: String) {
                        self.id = id
                    }
                }
            }
        }
    }
}
