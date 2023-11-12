import Bagbutik_Core
import Foundation

/**
 # AppClipDefaultExperienceReleaseWithAppStoreVersionLinkageResponse
 A response that contains the ID of a single related App Store Versions resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/appclipdefaultexperiencereleasewithappstoreversionlinkageresponse>
 */
public struct AppClipDefaultExperienceReleaseWithAppStoreVersionLinkageResponse {
    /// The object types and IDs of the related resources.
    public let data: Data
    /// Navigational links that include the self-link.
    public let links: DocumentLinks

    public init(data: Data,
                links: DocumentLinks)
    {
        self.data = data
        self.links = links
    }

    /**
     # AppClipDefaultExperienceReleaseWithAppStoreVersionLinkageResponse.Data
     The data element of the response body.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/appclipdefaultexperiencereleasewithappstoreversionlinkageresponse/data>
     */
    public struct Data: Identifiable {
        /// The opaque resource ID that uniquely identifies the response.
        public let id: String
        /// The resource type.
        public var type: String { "appStoreVersions" }

        public init(id: String) {
            self.id = id
        }
    }
}
