import Bagbutik_Core
import Foundation

/**
 # AppClipHeaderImage
 The data structure that represents the image that appears on the App Clip card of a default App Clip experience.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/appclipheaderimage>
 */
public struct AppClipHeaderImage: Identifiable {
    /// The opaque resource ID that uniquely identifies an App Clip Header Images resource.
    public let id: String
    /// Navigational links that include the self-link.
    public var links: ResourceLinks?
    /// The resource type.
    public var type: String { "appClipHeaderImages" }
    /// The attributes that describe the App Clip Header Images resource.
    public var attributes: Attributes?
    /// The navigational links to related data and included resource types and IDs.
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
     # AppClipHeaderImage.Attributes
     The attributes that describe the image that appears on the App Clip card of a default App Clip experience.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/appclipheaderimage/attributes>
     */
    public struct Attributes {
        /// The state of the App Clip card image asset you uploaded.
        public var assetDeliveryState: AppMediaAssetState?
        /// The filename of the image asset that appears on the App Clip card for the default App Clip experience.
        public var fileName: String?
        /// The size of the image asset that appears on the App Clip card for the default App Clip experience.
        public var fileSize: Int?
        /// The image asset that appears on the App Clip card of a default App Clip experience.
        public var imageAsset: ImageAsset?
        /// A string that represents the MD5 checksum of the image asset you use for the App Clip card.
        public var sourceFileChecksum: String?
        /// Upload operations for the image asset that appears on the App Clip card for a default App Clip experience.
        public var uploadOperations: [UploadOperation]?

        public init(assetDeliveryState: AppMediaAssetState? = nil,
                    fileName: String? = nil,
                    fileSize: Int? = nil,
                    imageAsset: ImageAsset? = nil,
                    sourceFileChecksum: String? = nil,
                    uploadOperations: [UploadOperation]? = nil)
        {
            self.assetDeliveryState = assetDeliveryState
            self.fileName = fileName
            self.fileSize = fileSize
            self.imageAsset = imageAsset
            self.sourceFileChecksum = sourceFileChecksum
            self.uploadOperations = uploadOperations
        }
    }

    /**
     # AppClipHeaderImage.Relationships
     The relationships of the App Clip Header Images resource you included in the request and those on which you can operate.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/appclipheaderimage/relationships>
     */
    public struct Relationships {
        /// The related Default App Clip Experience Localizations resource.
        public var appClipDefaultExperienceLocalization: AppClipDefaultExperienceLocalization?

        public init(appClipDefaultExperienceLocalization: AppClipDefaultExperienceLocalization? = nil) {
            self.appClipDefaultExperienceLocalization = appClipDefaultExperienceLocalization
        }

        /**
         # AppClipHeaderImage.Relationships.AppClipDefaultExperienceLocalization
         The data and links that describe the relationship between the App Clip Header Images and the Default App Clip Experiences resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/appclipheaderimage/relationships/appclipdefaultexperiencelocalization>
         */
        public struct AppClipDefaultExperienceLocalization {
            /// The ID and type of the related Default App Clip Experience Localizations resource.
            @NullCodable public var data: Data?
            /// Navigational links that include the self-link.
            public var links: Links?

            public init(data: Data? = nil,
                        links: Links? = nil)
            {
                self.data = data
                self.links = links
            }

            /**
             # AppClipHeaderImage.Relationships.AppClipDefaultExperienceLocalization.Data
             The type and ID of a related Default App Clip Experience Localizations resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appclipheaderimage/relationships/appclipdefaultexperiencelocalization/data>
             */
            public struct Data: Identifiable {
                /// The opaque resource ID that uniquely identifies a Default App Clip Experience Localizations resource.
                public let id: String
                /// The resource type.
                public var type: String { "appClipDefaultExperienceLocalizations" }

                public init(id: String) {
                    self.id = id
                }
            }

            /**
             # AppClipHeaderImage.Relationships.AppClipDefaultExperienceLocalization.Links
             The links to the related Default App Clip Experience Localizations resource and the relationship’s self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appclipheaderimage/relationships/appclipdefaultexperiencelocalization/links>
             */
            public struct Links {
                /// The link to related data.
                public var related: String?
                /// The link to the resource.
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
