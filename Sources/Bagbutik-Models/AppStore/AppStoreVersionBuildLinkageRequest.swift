import Bagbutik_Core
import Foundation

/**
 # AppStoreVersionBuildLinkageRequest
 The request body you use to attach a build to an App Store version.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/appstoreversionbuildlinkagerequest>
 */
public struct AppStoreVersionBuildLinkageRequest: RequestBody {
    @NullCodable public var data: Data?

    public init(data: Data? = nil) {
        self.data = data
    }

    /**
     # AppStoreVersionBuildLinkageRequest.Data
     The data element of the request body.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/appstoreversionbuildlinkagerequest/data>
     */
    public struct Data: Identifiable {
        public let id: String
        public var type: String { "builds" }

        public init(id: String) {
            self.id = id
        }
    }
}
