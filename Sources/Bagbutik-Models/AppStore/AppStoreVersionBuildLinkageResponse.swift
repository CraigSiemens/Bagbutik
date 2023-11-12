import Bagbutik_Core
import Foundation

/**
 # AppStoreVersionBuildLinkageResponse
 A response body that contains the ID of a single related resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/appstoreversionbuildlinkageresponse>
 */
public struct AppStoreVersionBuildLinkageResponse {
    public let data: Data
    public let links: DocumentLinks

    public init(data: Data,
                links: DocumentLinks)
    {
        self.data = data
        self.links = links
    }

    /**
     # AppStoreVersionBuildLinkageResponse.Data
     The data element of the response body.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/appstoreversionbuildlinkageresponse/data>
     */
    public struct Data: Identifiable {
        public let id: String
        public var type: String { "builds" }

        public init(id: String) {
            self.id = id
        }
    }
}
