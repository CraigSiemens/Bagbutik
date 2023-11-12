import Bagbutik_Core
import Foundation

public struct ActorResponse {
    public let data: Actor
    public let links: DocumentLinks

    public init(data: Actor,
                links: DocumentLinks)
    {
        self.data = data
        self.links = links
    }
}
