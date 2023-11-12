import Bagbutik_Core
import Foundation

public struct AppEventVideoClip: Identifiable {
    public let id: String
    public var links: ResourceLinks?
    public var type: String { "appEventVideoClips" }
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
        public var appEventAssetType: AppEventAssetType?
        public var assetDeliveryState: AppMediaAssetState?
        public var fileName: String?
        public var fileSize: Int?
        public var previewFrameTimeCode: String?
        public var previewImage: ImageAsset?
        public var uploadOperations: [UploadOperation]?
        public var videoUrl: String?

        public init(appEventAssetType: AppEventAssetType? = nil,
                    assetDeliveryState: AppMediaAssetState? = nil,
                    fileName: String? = nil,
                    fileSize: Int? = nil,
                    previewFrameTimeCode: String? = nil,
                    previewImage: ImageAsset? = nil,
                    uploadOperations: [UploadOperation]? = nil,
                    videoUrl: String? = nil)
        {
            self.appEventAssetType = appEventAssetType
            self.assetDeliveryState = assetDeliveryState
            self.fileName = fileName
            self.fileSize = fileSize
            self.previewFrameTimeCode = previewFrameTimeCode
            self.previewImage = previewImage
            self.uploadOperations = uploadOperations
            self.videoUrl = videoUrl
        }
    }

    public struct Relationships {
        public var appEventLocalization: AppEventLocalization?

        public init(appEventLocalization: AppEventLocalization? = nil) {
            self.appEventLocalization = appEventLocalization
        }

        public struct AppEventLocalization {
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
                public var type: String { "appEventLocalizations" }

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
