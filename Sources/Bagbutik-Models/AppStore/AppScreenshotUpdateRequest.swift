import Bagbutik_Core
import Foundation

/**
 # AppScreenshotUpdateRequest
 The request body you use to update an App Screenshot.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/appscreenshotupdaterequest>
 */
public struct AppScreenshotUpdateRequest: RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    /**
     # AppScreenshotUpdateRequest.Data
     The data element of the request body.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/appscreenshotupdaterequest/data>
     */
    public struct Data: Identifiable {
        public let id: String
        public var type: String { "appScreenshots" }
        public var attributes: Attributes?

        public init(id: String,
                    attributes: Attributes? = nil)
        {
            self.id = id
            self.attributes = attributes
        }

        /**
         # AppScreenshotUpdateRequest.Data.Attributes
         Attributes whose values you're changing as part of the update request.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/appscreenshotupdaterequest/data/attributes>
         */
        public struct Attributes {
            public var sourceFileChecksum: String?
            public var uploaded: Bool?

            public init(sourceFileChecksum: String? = nil,
                        uploaded: Bool? = nil)
            {
                self.sourceFileChecksum = sourceFileChecksum
                self.uploaded = uploaded
            }
        }
    }
}
