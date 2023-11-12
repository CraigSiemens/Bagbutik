import Bagbutik_Core
import Foundation

/**
 # AppStoreReviewAttachmentCreateRequest
 The request body you use to create an App Store Review Attachment.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/appstorereviewattachmentcreaterequest>
 */
public struct AppStoreReviewAttachmentCreateRequest: RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    /**
     # AppStoreReviewAttachmentCreateRequest.Data
     The data element of the request body.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/appstorereviewattachmentcreaterequest/data>
     */
    public struct Data {
        public var type: String { "appStoreReviewAttachments" }
        public let attributes: Attributes
        public let relationships: Relationships

        public init(attributes: Attributes,
                    relationships: Relationships)
        {
            self.attributes = attributes
            self.relationships = relationships
        }

        /**
         # AppStoreReviewAttachmentCreateRequest.Data.Attributes
         Attributes that you set that describe the new resource.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/appstorereviewattachmentcreaterequest/data/attributes>
         */
        public struct Attributes {
            public let fileName: String
            public let fileSize: Int

            public init(fileName: String,
                        fileSize: Int)
            {
                self.fileName = fileName
                self.fileSize = fileSize
            }
        }

        /**
         # AppStoreReviewAttachmentCreateRequest.Data.Relationships
         The relationships to other resources that you can set with this request.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/appstorereviewattachmentcreaterequest/data/relationships>
         */
        public struct Relationships {
            public let appStoreReviewDetail: AppStoreReviewDetail

            public init(appStoreReviewDetail: AppStoreReviewDetail) {
                self.appStoreReviewDetail = appStoreReviewDetail
            }

            /**
             # AppStoreReviewAttachmentCreateRequest.Data.Relationships.AppStoreReviewDetail
             The relationships to other resources that you can set with this request.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appstorereviewattachmentcreaterequest/data/relationships/appstorereviewdetail>
             */
            public struct AppStoreReviewDetail {
                public let data: Data

                public init(data: Data) {
                    self.data = data
                }

                /**
                 # AppStoreReviewAttachmentCreateRequest.Data.Relationships.AppStoreReviewDetail.Data
                 The type and ID of the resource that you're relating with the resource you're creating.

                 Full documentation:
                 <https://developer.apple.com/documentation/appstoreconnectapi/appstorereviewattachmentcreaterequest/data/relationships/appstorereviewdetail/data>
                 */
                public struct Data: Identifiable {
                    public let id: String
                    public var type: String { "appStoreReviewDetails" }

                    public init(id: String) {
                        self.id = id
                    }
                }
            }
        }
    }
}
