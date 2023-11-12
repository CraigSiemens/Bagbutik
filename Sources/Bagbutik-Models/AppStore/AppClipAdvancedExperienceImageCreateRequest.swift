import Bagbutik_Core
import Foundation

/**
 # AppClipAdvancedExperienceImageCreateRequest
 The request body you use to reserve an image asset for an advanced App Clip experience.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/appclipadvancedexperienceimagecreaterequest>
 */
public struct AppClipAdvancedExperienceImageCreateRequest: RequestBody {
    /// The resource data.
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    /**
     # AppClipAdvancedExperienceImageCreateRequest.Data
     The data element of the request body.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/appclipadvancedexperienceimagecreaterequest/data>
     */
    public struct Data {
        /// The resource type.
        public var type: String { "appClipAdvancedExperienceImages" }
        /// The attributes that describe the request that creates an Advanced App Clip Experience Images resource.
        public let attributes: Attributes

        public init(attributes: Attributes) {
            self.attributes = attributes
        }

        /**
         # AppClipAdvancedExperienceImageCreateRequest.Data.Attributes
         The attributes you set that describe the new Advanced App Clip Experience Images resource.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/appclipadvancedexperienceimagecreaterequest/data/attributes>
         */
        public struct Attributes {
            /// The filename of the image asset that appears on the App Clip card for the advanced App Clip experience.
            public let fileName: String
            /// The size of the image asset that appears on the App Clip card for the advanced App Clip experience.
            public let fileSize: Int

            public init(fileName: String,
                        fileSize: Int)
            {
                self.fileName = fileName
                self.fileSize = fileSize
            }
        }
    }
}
