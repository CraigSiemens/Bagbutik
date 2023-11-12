import Bagbutik_Core
import Foundation

/**
 # AppStoreVersionReleaseRequest
 The data structure that represents an App Store Version Release Request resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/appstoreversionreleaserequest>
 */
public struct AppStoreVersionReleaseRequest: Identifiable, RequestBody {
    /// The opaque resource ID that uniquely identifies the resource.
    public let id: String
    /// Navigational links that include the self-link.
    public var links: ResourceLinks?
    /// The resource type.
    public var type: String { "appStoreVersionReleaseRequests" }

    public init(id: String,
                links: ResourceLinks? = nil)
    {
        self.id = id
        self.links = links
    }
}
