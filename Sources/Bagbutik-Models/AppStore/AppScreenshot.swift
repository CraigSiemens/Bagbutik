import Bagbutik_Core
import Foundation

/**
 # AppScreenshot
 The data structure that represent an App Screenshots resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/appscreenshot>
 */
public struct AppScreenshot: Identifiable {
    public let id: String
    public var links: ResourceLinks?
    public var type: String { "appScreenshots" }
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
     # AppScreenshot.Attributes
     Attributes that describe an App Screenshots resource.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/appscreenshot/attributes>
     */
    public struct Attributes {
        public var assetDeliveryState: AppMediaAssetState?
        public var assetToken: String?
        public var assetType: String?
        public var fileName: String?
        public var fileSize: Int?
        public var imageAsset: ImageAsset?
        public var sourceFileChecksum: String?
        public var uploadOperations: [UploadOperation]?

        public init(assetDeliveryState: AppMediaAssetState? = nil,
                    assetToken: String? = nil,
                    assetType: String? = nil,
                    fileName: String? = nil,
                    fileSize: Int? = nil,
                    imageAsset: ImageAsset? = nil,
                    sourceFileChecksum: String? = nil,
                    uploadOperations: [UploadOperation]? = nil)
        {
            self.assetDeliveryState = assetDeliveryState
            self.assetToken = assetToken
            self.assetType = assetType
            self.fileName = fileName
            self.fileSize = fileSize
            self.imageAsset = imageAsset
            self.sourceFileChecksum = sourceFileChecksum
            self.uploadOperations = uploadOperations
        }
    }

    /**
     # AppScreenshot.Relationships
     The relationships you included in the request and those on which you can operate.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/appscreenshot/relationships>
     */
    public struct Relationships {
        public var appScreenshotSet: AppScreenshotSet?

        public init(appScreenshotSet: AppScreenshotSet? = nil) {
            self.appScreenshotSet = appScreenshotSet
        }

        /**
         # AppScreenshot.Relationships.AppScreenshotSet
         The data and links that describe the relationship between the resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/appscreenshot/relationships/appscreenshotset>
         */
        public struct AppScreenshotSet {
            @NullCodable public var data: Data?
            public var links: Links?

            public init(data: Data? = nil,
                        links: Links? = nil)
            {
                self.data = data
                self.links = links
            }

            /**
             # AppScreenshot.Relationships.AppScreenshotSet.Data
             The type and ID of a related resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appscreenshot/relationships/appscreenshotset/data>
             */
            public struct Data: Identifiable {
                public let id: String
                public var type: String { "appScreenshotSets" }

                public init(id: String) {
                    self.id = id
                }
            }

            /**
             # AppScreenshot.Relationships.AppScreenshotSet.Links
             The links to the related data and the relationship's self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appscreenshot/relationships/appscreenshotset/links>
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
