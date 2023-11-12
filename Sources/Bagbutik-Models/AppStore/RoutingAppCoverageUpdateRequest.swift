import Bagbutik_Core
import Foundation

/**
 # RoutingAppCoverageUpdateRequest
 The request body you use to update a Routing App Coverage.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/routingappcoverageupdaterequest>
 */
public struct RoutingAppCoverageUpdateRequest: RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    /**
     # RoutingAppCoverageUpdateRequest.Data
     The data element of the request body.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/routingappcoverageupdaterequest/data>
     */
    public struct Data: Identifiable {
        public let id: String
        public var type: String { "routingAppCoverages" }
        public var attributes: Attributes?

        public init(id: String,
                    attributes: Attributes? = nil)
        {
            self.id = id
            self.attributes = attributes
        }

        /**
         # RoutingAppCoverageUpdateRequest.Data.Attributes
         Attributes whose values you're changing as part of the update request.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/routingappcoverageupdaterequest/data/attributes>
         */
        public struct Attributes {
            public var sourceFileChecksum: String?
            public var uploaded: Bool?

            public init(sourceFileChecksum: String? = nil,
                        uploaded: Bool? = nil)
            {
                self.sourceFileChecksum = sourceFileChecksum
                self.uploaded = uploaded
            }
        }
    }
}
