import Foundation

/**
 The request body you use to create an App Store Review Attachment.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/appstorereviewattachmentcreaterequest>
 */
public struct AppStoreReviewAttachmentCreateRequest: Codable, RequestBody {
    /// The resource data.
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    /**
     The data element of the request body.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/appstorereviewattachmentcreaterequest/data>
     */
    public struct Data: Codable {
        /// The resource type.
        public var type: String { "appStoreReviewAttachments" }
        /// The resource's attributes.
        public let attributes: Attributes
        /// The relationships to other resources that you can set with this request.
        public let relationships: Relationships

        public init(attributes: Attributes, relationships: Relationships) {
            self.attributes = attributes
            self.relationships = relationships
        }

        /**
         Attributes that you set that describe the new resource.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/appstorereviewattachmentcreaterequest/data/attributes>
         */
        public struct Attributes: Codable {
            public let fileName: String
            public let fileSize: Int

            public init(fileName: String, fileSize: Int) {
                self.fileName = fileName
                self.fileSize = fileSize
            }
        }

        /**
         The relationships to other resources that you can set with this request.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/appstorereviewattachmentcreaterequest/data/relationships>
         */
        public struct Relationships: Codable {
            public let appStoreReviewDetail: AppStoreReviewDetail

            public init(appStoreReviewDetail: AppStoreReviewDetail) {
                self.appStoreReviewDetail = appStoreReviewDetail
            }

            public struct AppStoreReviewDetail: Codable {
                /// The type and ID of the resource that you're relating with the resource you're creating.
                public let data: Data

                public init(data: Data) {
                    self.data = data
                }

                /**
                 The type and ID of the resource that you're relating with the resource you're creating.

                 Full documentation:
                 <https://developer.apple.com/documentation/appstoreconnectapi/appstorereviewattachmentcreaterequest/data/relationships/appstorereviewdetail/data>
                 */
                public struct Data: Codable {
                    /// The opaque resource ID that uniquely identifies the resource.
                    public let id: String
                    /// The resource type.
                    public var type: String { "appStoreReviewDetails" }

                    public init(id: String) {
                        self.id = id
                    }
                }
            }
        }
    }
}
