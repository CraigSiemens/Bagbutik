import Bagbutik_Core
import Foundation

/**
 # AppClipDefaultExperienceReleaseWithAppStoreVersionLinkageRequest
 The request body you use to relate a released App Store version with a default App Clip experience.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/appclipdefaultexperiencereleasewithappstoreversionlinkagerequest>
 */
public struct AppClipDefaultExperienceReleaseWithAppStoreVersionLinkageRequest: RequestBody {
    /// The types and IDs of related resources.
    @NullCodable public var data: Data?

    public init(data: Data? = nil) {
        self.data = data
    }

    /**
     # AppClipDefaultExperienceReleaseWithAppStoreVersionLinkageRequest.Data
     The data element of the request body.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/appclipdefaultexperiencereleasewithappstoreversionlinkagerequest/data>
     */
    public struct Data: Identifiable {
        /// The opaque resource ID that uniquely identifies the request.
        public let id: String
        /// The resource type.
        public var type: String { "appStoreVersions" }

        public init(id: String) {
            self.id = id
        }
    }
}
