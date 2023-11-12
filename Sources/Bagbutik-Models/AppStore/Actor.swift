import Bagbutik_Core
import Foundation

public struct Actor: Identifiable {
    public let id: String
    public var links: ResourceLinks?
    public var type: String { "actors" }
    public var attributes: Attributes?

    public init(id: String,
                links: ResourceLinks? = nil,
                attributes: Attributes? = nil)
    {
        self.id = id
        self.links = links
        self.attributes = attributes
    }

    public struct Attributes {
        public var actorType: ActorType?
        public var apiKeyId: String?
        public var userEmail: String?
        public var userFirstName: String?
        public var userLastName: String?

        public init(actorType: ActorType? = nil,
                    apiKeyId: String? = nil,
                    userEmail: String? = nil,
                    userFirstName: String? = nil,
                    userLastName: String? = nil)
        {
            self.actorType = actorType
            self.apiKeyId = apiKeyId
            self.userEmail = userEmail
            self.userFirstName = userFirstName
            self.userLastName = userLastName
        }

        public enum ActorType: String {
            case user = "USER"
            case apiKey = "API_KEY"
            case xcodeCloud = "XCODE_CLOUD"
            case apple = "APPLE"
        }
    }
}
