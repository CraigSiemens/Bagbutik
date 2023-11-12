import Bagbutik_Core
import Foundation

/**
 # AppPreOrderUpdateRequest
 The request body you use to update an App Pre-Order.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/apppreorderupdaterequest>
 */
public struct AppPreOrderUpdateRequest: RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    /**
     # AppPreOrderUpdateRequest.Data
     The data element of the request body.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/apppreorderupdaterequest/data>
     */
    public struct Data: Identifiable {
        public let id: String
        public var type: String { "appPreOrders" }
        public var attributes: Attributes?

        public init(id: String,
                    attributes: Attributes? = nil)
        {
            self.id = id
            self.attributes = attributes
        }

        /**
         # AppPreOrderUpdateRequest.Data.Attributes
         Attributes whose values you're changing as part of the update request.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/apppreorderupdaterequest/data/attributes>
         */
        public struct Attributes {
            public var appReleaseDate: String?

            public init(appReleaseDate: String? = nil) {
                self.appReleaseDate = appReleaseDate
            }
        }
    }
}
