import Bagbutik_Core
import Foundation

/**
 # DeviceUpdateRequest
 The request body you use to update a Device.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/deviceupdaterequest>
 */
public struct DeviceUpdateRequest: RequestBody {
    /// The resource data.
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    /**
     # DeviceUpdateRequest.Data
     The data element of the request body.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/deviceupdaterequest/data>
     */
    public struct Data: Identifiable {
        public let id: String
        public var type: String { "devices" }
        public var attributes: Attributes?

        public init(id: String,
                    attributes: Attributes? = nil)
        {
            self.id = id
            self.attributes = attributes
        }

        /**
         # DeviceUpdateRequest.Data.Attributes
         Attributes whose values you're changing as part of the update request.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/deviceupdaterequest/data/attributes>
         */
        public struct Attributes {
            public var name: String?
            public var status: Device.Attributes.Status?

            public init(name: String? = nil,
                        status: Device.Attributes.Status? = nil)
            {
                self.name = name
                self.status = status
            }
        }
    }
}
