import Bagbutik_Core
import Foundation

/**
 # AppPreviewCreateRequest
 The request body you use to create an App Preview.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/apppreviewcreaterequest>
 */
public struct AppPreviewCreateRequest: RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    /**
     # AppPreviewCreateRequest.Data
     The data element of the request body.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/apppreviewcreaterequest/data>
     */
    public struct Data {
        public var type: String { "appPreviews" }
        public let attributes: Attributes
        public let relationships: Relationships

        public init(attributes: Attributes,
                    relationships: Relationships)
        {
            self.attributes = attributes
            self.relationships = relationships
        }

        /**
         # AppPreviewCreateRequest.Data.Attributes
         Attributes that you set that describe the new resource.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/apppreviewcreaterequest/data/attributes>
         */
        public struct Attributes {
            public let fileName: String
            public let fileSize: Int
            public var mimeType: String?
            public var previewFrameTimeCode: String?

            public init(fileName: String,
                        fileSize: Int,
                        mimeType: String? = nil,
                        previewFrameTimeCode: String? = nil)
            {
                self.fileName = fileName
                self.fileSize = fileSize
                self.mimeType = mimeType
                self.previewFrameTimeCode = previewFrameTimeCode
            }
        }

        /**
         # AppPreviewCreateRequest.Data.Relationships
         The relationships to other resources that you can set with this request.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/apppreviewcreaterequest/data/relationships>
         */
        public struct Relationships {
            public let appPreviewSet: AppPreviewSet

            public init(appPreviewSet: AppPreviewSet) {
                self.appPreviewSet = appPreviewSet
            }

            /**
             # AppPreviewCreateRequest.Data.Relationships.AppPreviewSet
             The relationships to other resources that you can set with this request.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/apppreviewcreaterequest/data/relationships/apppreviewset>
             */
            public struct AppPreviewSet {
                public let data: Data

                public init(data: Data) {
                    self.data = data
                }

                /**
                 # AppPreviewCreateRequest.Data.Relationships.AppPreviewSet.Data
                 The type and ID of the resource that you're relating with the resource you're creating.

                 Full documentation:
                 <https://developer.apple.com/documentation/appstoreconnectapi/apppreviewcreaterequest/data/relationships/apppreviewset/data>
                 */
                public struct Data: Identifiable {
                    public let id: String
                    public var type: String { "appPreviewSets" }

                    public init(id: String) {
                        self.id = id
                    }
                }
            }
        }
    }
}
