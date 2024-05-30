import Bagbutik_Core
import Foundation

public struct PromotedPurchaseImage: Codable, Identifiable {
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

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decode(String.self, forKey: .id)
        links = try container.decodeIfPresent(ResourceLinks.self, forKey: .links)
        attributes = try container.decodeIfPresent(Attributes.self, forKey: .attributes)
        relationships = try container.decodeIfPresent(Relationships.self, forKey: .relationships)
        if try container.decode(String.self, forKey: .type) != type {
            throw DecodingError.dataCorruptedError(forKey: .type, in: container, debugDescription: "Not matching \(type)")
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encodeIfPresent(links, forKey: .links)
        try container.encode(type, forKey: .type)
        try container.encodeIfPresent(attributes, forKey: .attributes)
        try container.encodeIfPresent(relationships, forKey: .relationships)
    }

    private enum CodingKeys: String, CodingKey {
        case attributes
        case id
        case links
        case relationships
        case type
    }

    public struct Attributes: Codable {
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

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            assetToken = try container.decodeIfPresent(String.self, forKey: .assetToken)
            assetType = try container.decodeIfPresent(String.self, forKey: .assetType)
            fileName = try container.decodeIfPresent(String.self, forKey: .fileName)
            fileSize = try container.decodeIfPresent(Int.self, forKey: .fileSize)
            imageAsset = try container.decodeIfPresent(ImageAsset.self, forKey: .imageAsset)
            sourceFileChecksum = try container.decodeIfPresent(String.self, forKey: .sourceFileChecksum)
            state = try container.decodeIfPresent(State.self, forKey: .state)
            uploadOperations = try container.decodeIfPresent([UploadOperation].self, forKey: .uploadOperations)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encodeIfPresent(assetToken, forKey: .assetToken)
            try container.encodeIfPresent(assetType, forKey: .assetType)
            try container.encodeIfPresent(fileName, forKey: .fileName)
            try container.encodeIfPresent(fileSize, forKey: .fileSize)
            try container.encodeIfPresent(imageAsset, forKey: .imageAsset)
            try container.encodeIfPresent(sourceFileChecksum, forKey: .sourceFileChecksum)
            try container.encodeIfPresent(state, forKey: .state)
            try container.encodeIfPresent(uploadOperations, forKey: .uploadOperations)
        }

        private enum CodingKeys: String, CodingKey {
            case assetToken
            case assetType
            case fileName
            case fileSize
            case imageAsset
            case sourceFileChecksum
            case state
            case uploadOperations
        }

        public enum State: String, Codable, CaseIterable {
            case approved = "APPROVED"
            case awaitingUpload = "AWAITING_UPLOAD"
            case failed = "FAILED"
            case prepareForSubmission = "PREPARE_FOR_SUBMISSION"
            case rejected = "REJECTED"
            case uploadComplete = "UPLOAD_COMPLETE"
            case waitingForReview = "WAITING_FOR_REVIEW"
        }
    }

    public struct Relationships: Codable {
        public var promotedPurchase: PromotedPurchase?

        public init(promotedPurchase: PromotedPurchase? = nil) {
            self.promotedPurchase = promotedPurchase
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            promotedPurchase = try container.decodeIfPresent(PromotedPurchase.self, forKey: .promotedPurchase)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encodeIfPresent(promotedPurchase, forKey: .promotedPurchase)
        }

        private enum CodingKeys: String, CodingKey {
            case promotedPurchase
        }

        public struct PromotedPurchase: Codable {
            @NullCodable public var data: Data?
            public var links: Links?

            public init(data: Data? = nil,
                        links: Links? = nil)
            {
                self.data = data
                self.links = links
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                data = try container.decodeIfPresent(Data.self, forKey: .data)
                links = try container.decodeIfPresent(Links.self, forKey: .links)
            }

            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                try container.encode(data, forKey: .data)
                try container.encodeIfPresent(links, forKey: .links)
            }

            private enum CodingKeys: String, CodingKey {
                case data
                case links
            }

            public struct Data: Codable, Identifiable {
                public let id: String
                public var type: String { "promotedPurchases" }

                public init(id: String) {
                    self.id = id
                }

                public init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: CodingKeys.self)
                    id = try container.decode(String.self, forKey: .id)
                    if try container.decode(String.self, forKey: .type) != type {
                        throw DecodingError.dataCorruptedError(forKey: .type, in: container, debugDescription: "Not matching \(type)")
                    }
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: CodingKeys.self)
                    try container.encode(id, forKey: .id)
                    try container.encode(type, forKey: .type)
                }

                private enum CodingKeys: String, CodingKey {
                    case id
                    case type
                }
            }

            public struct Links: Codable {
                public var related: String?
                public var itself: String?

                public init(related: String? = nil,
                            self itself: String? = nil)
                {
                    self.related = related
                    self.itself = itself
                }

                public init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: CodingKeys.self)
                    related = try container.decodeIfPresent(String.self, forKey: .related)
                    itself = try container.decodeIfPresent(String.self, forKey: .itself)
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: CodingKeys.self)
                    try container.encodeIfPresent(related, forKey: .related)
                    try container.encodeIfPresent(itself, forKey: .itself)
                }

                private enum CodingKeys: String, CodingKey {
                    case itself = "self"
                    case related
                }
            }
        }
    }
}
