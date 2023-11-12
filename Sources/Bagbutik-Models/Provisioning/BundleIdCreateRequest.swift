import Bagbutik_Core
import Foundation

/**
 # BundleIdCreateRequest
 The request body you use to create a Bundle ID.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/bundleidcreaterequest>
 */
public struct BundleIdCreateRequest: RequestBody {
    /// The resource data.
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    /**
     # BundleIdCreateRequest.Data
     The data element of the request body.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/bundleidcreaterequest/data>
     */
    public struct Data {
        public var type: String { "bundleIds" }
        public let attributes: Attributes

        public init(attributes: Attributes) {
            self.attributes = attributes
        }

        /**
         # BundleIdCreateRequest.Data.Attributes
         Attributes that you set that describe the new resource.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/bundleidcreaterequest/data/attributes>
         */
        public struct Attributes {
            public let identifier: String
            public let name: String
            public let platform: BundleIdPlatform
            public var seedId: String?

            public init(identifier: String,
                        name: String,
                        platform: BundleIdPlatform,
                        seedId: String? = nil)
            {
                self.identifier = identifier
                self.name = name
                self.platform = platform
                self.seedId = seedId
            }
        }
    }
}
