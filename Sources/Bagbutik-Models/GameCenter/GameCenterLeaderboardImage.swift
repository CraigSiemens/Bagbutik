import Bagbutik_Core
import Foundation

/**
 # GameCenterLeaderboardImage
 The data structure that represent a leaderboard image resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/gamecenterleaderboardimage>
 */
public struct GameCenterLeaderboardImage: Identifiable {
    public let id: String
    public var links: ResourceLinks?
    public var type: String { "gameCenterLeaderboardImages" }
    public var attributes: Attributes?
    public var relationships: Relationships?

    public init(id: String,
                links: ResourceLinks? = nil,
                attributes: Attributes? = nil,
                relationships: Relationships? = nil)
    {
        self.id = id
        self.links = links
        self.attributes = attributes
        self.relationships = relationships
    }

    public struct Attributes {
        public var assetDeliveryState: AppMediaAssetState?
        public var fileName: String?
        public var fileSize: Int?
        public var imageAsset: ImageAsset?
        public var uploadOperations: [UploadOperation]?

        public init(assetDeliveryState: AppMediaAssetState? = nil,
                    fileName: String? = nil,
                    fileSize: Int? = nil,
                    imageAsset: ImageAsset? = nil,
                    uploadOperations: [UploadOperation]? = nil)
        {
            self.assetDeliveryState = assetDeliveryState
            self.fileName = fileName
            self.fileSize = fileSize
            self.imageAsset = imageAsset
            self.uploadOperations = uploadOperations
        }
    }

    public struct Relationships {
        public var gameCenterLeaderboardLocalization: GameCenterLeaderboardLocalization?

        public init(gameCenterLeaderboardLocalization: GameCenterLeaderboardLocalization? = nil) {
            self.gameCenterLeaderboardLocalization = gameCenterLeaderboardLocalization
        }

        public struct GameCenterLeaderboardLocalization {
            @NullCodable public var data: Data?
            public var links: Links?

            public init(data: Data? = nil,
                        links: Links? = nil)
            {
                self.data = data
                self.links = links
            }

            public struct Data: Identifiable {
                public let id: String
                public var type: String { "gameCenterLeaderboardLocalizations" }

                public init(id: String) {
                    self.id = id
                }
            }

            public struct Links {
                public var related: String?
                public var itself: String?

                public init(related: String? = nil,
                            self itself: String? = nil)
                {
                    self.related = related
                    self.itself = itself
                }
            }
        }
    }
}
