import Bagbutik_Core
import Foundation

/**
 # AppClipAdvancedExperienceImageUpdateRequest
 The request body you use to commit the image asset for an advanced App Clip experience.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/appclipadvancedexperienceimageupdaterequest>
 */
public struct AppClipAdvancedExperienceImageUpdateRequest: RequestBody {
    /// The resource data.
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    /**
     # AppClipAdvancedExperienceImageUpdateRequest.Data
     The data element of the request body.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/appclipadvancedexperienceimageupdaterequest/data>
     */
    public struct Data: Identifiable {
        /// The opaque resource ID that uniquely identifies the request.
        public let id: String
        /// The resource type.
        public var type: String { "appClipAdvancedExperienceImages" }
        /// The attributes that describe the request that updates an Advanced App Clip Experience Images resource.
        public var attributes: Attributes?

        public init(id: String,
                    attributes: Attributes? = nil)
        {
            self.id = id
            self.attributes = attributes
        }

        /**
         # AppClipAdvancedExperienceImageUpdateRequest.Data.Attributes
         The attributes you set that describe the updated Advanced App Clip Experience Images resource.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/appclipadvancedexperienceimageupdaterequest/data/attributes>
         */
        public struct Attributes {
            /// A string that represents the MD5 checksum of the image asset you use for the App Clip card.
            public var sourceFileChecksum: String?
            /// A Boolean value that indicates whether you uploaded the image asset for an advanced App Clip experience.
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
