import Bagbutik_Core
import Foundation

/**
 # AppStoreReviewAttachment
 The data structure that represent an App Store Review Attachments resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/appstorereviewattachment>
 */
public struct AppStoreReviewAttachment: Identifiable {
    public let id: String
    public var links: ResourceLinks?
    public var type: String { "appStoreReviewAttachments" }
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

    /**
     # AppStoreReviewAttachment.Attributes
     Attributes that describe an App Store Review Attachments resource.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/appstorereviewattachment/attributes>
     */
    public struct Attributes {
        public var assetDeliveryState: AppMediaAssetState?
        public var fileName: String?
        public var fileSize: Int?
        public var sourceFileChecksum: String?
        public var uploadOperations: [UploadOperation]?

        public init(assetDeliveryState: AppMediaAssetState? = nil,
                    fileName: String? = nil,
                    fileSize: Int? = nil,
                    sourceFileChecksum: String? = nil,
                    uploadOperations: [UploadOperation]? = nil)
        {
            self.assetDeliveryState = assetDeliveryState
            self.fileName = fileName
            self.fileSize = fileSize
            self.sourceFileChecksum = sourceFileChecksum
            self.uploadOperations = uploadOperations
        }
    }

    /**
     # AppStoreReviewAttachment.Relationships
     The relationships you included in the request and those on which you can operate.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/appstorereviewattachment/relationships>
     */
    public struct Relationships {
        public var appStoreReviewDetail: AppStoreReviewDetail?

        public init(appStoreReviewDetail: AppStoreReviewDetail? = nil) {
            self.appStoreReviewDetail = appStoreReviewDetail
        }

        /**
         # AppStoreReviewAttachment.Relationships.AppStoreReviewDetail
         The data and links that describe the relationship between the resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/appstorereviewattachment/relationships/appstorereviewdetail>
         */
        public struct AppStoreReviewDetail {
            @NullCodable public var data: Data?
            public var links: Links?

            public init(data: Data? = nil,
                        links: Links? = nil)
            {
                self.data = data
                self.links = links
            }

            /**
             # AppStoreReviewAttachment.Relationships.AppStoreReviewDetail.Data
             The type and ID of a related resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appstorereviewattachment/relationships/appstorereviewdetail/data>
             */
            public struct Data: Identifiable {
                public let id: String
                public var type: String { "appStoreReviewDetails" }

                public init(id: String) {
                    self.id = id
                }
            }

            /**
             # AppStoreReviewAttachment.Relationships.AppStoreReviewDetail.Links
             The links to the related data and the relationship's self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appstorereviewattachment/relationships/appstorereviewdetail/links>
             */
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
