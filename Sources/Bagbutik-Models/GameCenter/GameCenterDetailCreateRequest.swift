import Bagbutik_Core
import Foundation

/**
 # GameCenterDetailCreateRequest
 The request body you use to create a Game Center detail.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/gamecenterdetailcreaterequest>
 */
public struct GameCenterDetailCreateRequest: RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    public struct Data {
        public var type: String { "gameCenterDetails" }
        public var attributes: Attributes?
        public let relationships: Relationships

        public init(attributes: Attributes? = nil,
                    relationships: Relationships)
        {
            self.attributes = attributes
            self.relationships = relationships
        }

        public struct Attributes {
            public var challengeEnabled: Bool?

            public init(challengeEnabled: Bool? = nil) {
                self.challengeEnabled = challengeEnabled
            }
        }

        public struct Relationships {
            public let app: App

            public init(app: App) {
                self.app = app
            }

            public struct App {
                public let data: Data

                public init(data: Data) {
                    self.data = data
                }

                public struct Data: Identifiable {
                    public let id: String
                    public var type: String { "apps" }

                    public init(id: String) {
                        self.id = id
                    }
                }
            }
        }
    }
}
