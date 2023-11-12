import Bagbutik_Core
import Foundation

/**
 # BundleIdUpdateRequest
 The request body you use to update a Bundle ID.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/bundleidupdaterequest>
 */
public struct BundleIdUpdateRequest: RequestBody {
    /// The resource data.
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    /**
     # BundleIdUpdateRequest.Data
     The data element of the request body.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/bundleidupdaterequest/data>
     */
    public struct Data: Identifiable {
        public let id: String
        public var type: String { "bundleIds" }
        public var attributes: Attributes?

        public init(id: String,
                    attributes: Attributes? = nil)
        {
            self.id = id
            self.attributes = attributes
        }

        /**
         # BundleIdUpdateRequest.Data.Attributes
         Attributes whose values you're changing as part of the update request.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/bundleidupdaterequest/data/attributes>
         */
        public struct Attributes {
            public var name: String?

            public init(name: String? = nil) {
                self.name = name
            }
        }
    }
}
