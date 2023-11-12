import Bagbutik_Core
import Foundation

public struct PromotedPurchaseImage: Identifiable {
    public let id: String
    public var links: ResourceLinks?
    public var type: String { "promotedPurchaseImages" }
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
        public var assetToken: String?
        public var assetType: String?
        public var fileName: String?
        public var fileSize: Int?
        public var imageAsset: ImageAsset?
        public var sourceFileChecksum: String?
        public var state: State?
        public var uploadOperations: [UploadOperation]?

        public init(assetToken: String? = nil,
                    assetType: String? = nil,
                    fileName: String? = nil,
                    fileSize: Int? = nil,
                    imageAsset: ImageAsset? = nil,
                    sourceFileChecksum: String? = nil,
                    state: State? = nil,
                    uploadOperations: [UploadOperation]? = nil)
        {
            self.assetToken = assetToken
            self.assetType = assetType
            self.fileName = fileName
            self.fileSize = fileSize
            self.imageAsset = imageAsset
            self.sourceFileChecksum = sourceFileChecksum
            self.state = state
            self.uploadOperations = uploadOperations
        }

        public enum State: String {
            case awaitingUpload = "AWAITING_UPLOAD"
            case uploadComplete = "UPLOAD_COMPLETE"
            case failed = "FAILED"
            case prepareForSubmission = "PREPARE_FOR_SUBMISSION"
            case waitingForReview = "WAITING_FOR_REVIEW"
            case approved = "APPROVED"
            case rejected = "REJECTED"
        }
    }

    public struct Relationships {
        public var promotedPurchase: PromotedPurchase?

        public init(promotedPurchase: PromotedPurchase? = nil) {
            self.promotedPurchase = promotedPurchase
        }

        public struct PromotedPurchase {
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
                public var type: String { "promotedPurchases" }

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
