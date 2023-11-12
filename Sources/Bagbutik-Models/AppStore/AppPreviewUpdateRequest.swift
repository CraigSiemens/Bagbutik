import Bagbutik_Core
import Foundation

/**
 # AppPreviewUpdateRequest
 The request body you use to update an App Preview.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/apppreviewupdaterequest>
 */
public struct AppPreviewUpdateRequest: RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    /**
     # AppPreviewUpdateRequest.Data
     The data element of the request body.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/apppreviewupdaterequest/data>
     */
    public struct Data: Identifiable {
        public let id: String
        public var type: String { "appPreviews" }
        public var attributes: Attributes?

        public init(id: String,
                    attributes: Attributes? = nil)
        {
            self.id = id
            self.attributes = attributes
        }

        /**
         # AppPreviewUpdateRequest.Data.Attributes
         Attributes whose values you're changing as part of the update request.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/apppreviewupdaterequest/data/attributes>
         */
        public struct Attributes {
            public var previewFrameTimeCode: String?
            public var sourceFileChecksum: String?
            public var uploaded: Bool?

            public init(previewFrameTimeCode: String? = nil,
                        sourceFileChecksum: String? = nil,
                        uploaded: Bool? = nil)
            {
                self.previewFrameTimeCode = previewFrameTimeCode
                self.sourceFileChecksum = sourceFileChecksum
                self.uploaded = uploaded
            }
        }
    }
}
