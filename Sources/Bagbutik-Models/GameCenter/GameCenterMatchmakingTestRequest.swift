import Bagbutik_Core
import Foundation

/**
 # GameCenterMatchmakingTestRequest
 The data structure that represents a sample match request in a response.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/gamecentermatchmakingtestrequest>
 */
public struct GameCenterMatchmakingTestRequest: Identifiable, RequestBody {
    /// A unique identifier for the sample match request.
    public let id: String
    /// The link representations of the object.
    public var links: ResourceLinks?
    /// The type of the resource object.
    public var type: String { "gameCenterMatchmakingTestRequests" }

    public init(id: String,
                links: ResourceLinks? = nil)
    {
        self.id = id
        self.links = links
    }
}
