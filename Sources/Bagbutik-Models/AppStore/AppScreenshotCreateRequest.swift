import Bagbutik_Core
import Foundation

/**
 # AppScreenshotCreateRequest
 The request body you use to create an App Screenshot.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/appscreenshotcreaterequest>
 */
public struct AppScreenshotCreateRequest: RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    /**
     # AppScreenshotCreateRequest.Data
     The data element of the request body.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/appscreenshotcreaterequest/data>
     */
    public struct Data {
        public var type: String { "appScreenshots" }
        public let attributes: Attributes
        public let relationships: Relationships

        public init(attributes: Attributes,
                    relationships: Relationships)
        {
            self.attributes = attributes
            self.relationships = relationships
        }

        /**
         # AppScreenshotCreateRequest.Data.Attributes
         Attributes that you set that describe the new resource.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/appscreenshotcreaterequest/data/attributes>
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
         # AppScreenshotCreateRequest.Data.Relationships
         The relationships to other resources that you can set with this request.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/appscreenshotcreaterequest/data/relationships>
         */
        public struct Relationships {
            public let appScreenshotSet: AppScreenshotSet

            public init(appScreenshotSet: AppScreenshotSet) {
                self.appScreenshotSet = appScreenshotSet
            }

            /**
             # AppScreenshotCreateRequest.Data.Relationships.AppScreenshotSet
             The relationships to other resources that you can set with this request.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appscreenshotcreaterequest/data/relationships/appscreenshotset>
             */
            public struct AppScreenshotSet {
                public let data: Data

                public init(data: Data) {
                    self.data = data
                }

                /**
                 # AppScreenshotCreateRequest.Data.Relationships.AppScreenshotSet.Data
                 The type and ID of the resource that you're relating with the resource you're creating.

                 Full documentation:
                 <https://developer.apple.com/documentation/appstoreconnectapi/appscreenshotcreaterequest/data/relationships/appscreenshotset/data>
                 */
                public struct Data: Identifiable {
                    public let id: String
                    public var type: String { "appScreenshotSets" }

                    public init(id: String) {
                        self.id = id
                    }
                }
            }
        }
    }
}
