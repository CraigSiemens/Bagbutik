import Bagbutik_Core
import Foundation

/**
 # AppStoreVersionAppClipDefaultExperienceLinkageRequest
 The request body you use to attach a default App Clip experience to an App Store version.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/appstoreversionappclipdefaultexperiencelinkagerequest>
 */
public struct AppStoreVersionAppClipDefaultExperienceLinkageRequest: RequestBody {
    /// The types and IDs of related resources.
    @NullCodable public var data: Data?

    public init(data: Data? = nil) {
        self.data = data
    }

    /**
     # AppStoreVersionAppClipDefaultExperienceLinkageRequest.Data
     The data element of the request body.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/appstoreversionappclipdefaultexperiencelinkagerequest/data>
     */
    public struct Data: Identifiable {
        /// The opaque resource ID that uniquely identifies the request.
        public let id: String
        /// The resource type.
        public var type: String { "appClipDefaultExperiences" }

        public init(id: String) {
            self.id = id
        }
    }
}
