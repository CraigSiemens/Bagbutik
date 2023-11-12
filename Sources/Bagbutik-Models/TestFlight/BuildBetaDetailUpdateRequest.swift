import Bagbutik_Core
import Foundation

/**
 # BuildBetaDetailUpdateRequest
 The request body you use to update a Build Data Detail.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/buildbetadetailupdaterequest>
 */
public struct BuildBetaDetailUpdateRequest: RequestBody {
    /// The resource data.
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    /**
     # BuildBetaDetailUpdateRequest.Data
     The data element of the request body.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/buildbetadetailupdaterequest/data>
     */
    public struct Data: Identifiable {
        /// The opaque resource ID that uniquely identifies the resource.
        public let id: String
        /// The resource type.
        public var type: String { "buildBetaDetails" }
        /// The resource's attributes.
        public var attributes: Attributes?

        public init(id: String,
                    attributes: Attributes? = nil)
        {
            self.id = id
            self.attributes = attributes
        }

        /**
         # BuildBetaDetailUpdateRequest.Data.Attributes
         Attributes whose values you're changing as part of the update request.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/buildbetadetailupdaterequest/data/attributes>
         */
        public struct Attributes {
            /// A Boolean value that enables you to send test invitations to users automatically when the build is available to external groups.
            public var autoNotifyEnabled: Bool?

            public init(autoNotifyEnabled: Bool? = nil) {
                self.autoNotifyEnabled = autoNotifyEnabled
            }
        }
    }
}
