import Bagbutik_Core
import Foundation

/**
 # GameCenterMatchmakingTestPlayerPropertyInlineCreate
 A resource object that represents a player’s properties when you create a request.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/gamecentermatchmakingtestplayerpropertyinlinecreate>
 */
public struct GameCenterMatchmakingTestPlayerPropertyInlineCreate: Identifiable {
    /// The identifier for the resource object.
    public var id: String?
    /// The type of the resource object.
    public var type: String { "gameCenterMatchmakingTestPlayerProperties" }
    /// The attributes of the resource object.
    public let attributes: Attributes

    public init(id: String? = nil,
                attributes: Attributes)
    {
        self.id = id
        self.attributes = attributes
    }

    /**
     # GameCenterMatchmakingTestPlayerPropertyInlineCreate.Attributes
     The attributes for sample player properties.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/gamecentermatchmakingtestplayerpropertyinlinecreate/attributes>
     */
    public struct Attributes {
        /// A unique identifier for the player.
        public let playerId: String
        /// The key-value pairs representing the game-specific property values.
        public var properties: [Property]?

        public init(playerId: String,
                    properties: [Property]? = nil)
        {
            self.playerId = playerId
            self.properties = properties
        }
    }
}
