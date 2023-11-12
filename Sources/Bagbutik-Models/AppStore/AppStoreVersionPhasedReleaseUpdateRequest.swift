import Bagbutik_Core
import Foundation

/**
 # AppStoreVersionPhasedReleaseUpdateRequest
 The request body you use to update an App Store Version Phased Release.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/appstoreversionphasedreleaseupdaterequest>
 */
public struct AppStoreVersionPhasedReleaseUpdateRequest: RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    /**
     # AppStoreVersionPhasedReleaseUpdateRequest.Data
     The data element of the request body.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/appstoreversionphasedreleaseupdaterequest/data>
     */
    public struct Data: Identifiable {
        public let id: String
        public var type: String { "appStoreVersionPhasedReleases" }
        public var attributes: Attributes?

        public init(id: String,
                    attributes: Attributes? = nil)
        {
            self.id = id
            self.attributes = attributes
        }

        /**
         # AppStoreVersionPhasedReleaseUpdateRequest.Data.Attributes
         Attributes whose values you're changing as part of the update request.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/appstoreversionphasedreleaseupdaterequest/data/attributes>
         */
        public struct Attributes {
            public var phasedReleaseState: PhasedReleaseState?

            public init(phasedReleaseState: PhasedReleaseState? = nil) {
                self.phasedReleaseState = phasedReleaseState
            }
        }
    }
}
