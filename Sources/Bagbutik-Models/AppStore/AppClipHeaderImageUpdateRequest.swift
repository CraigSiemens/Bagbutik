import Bagbutik_Core
import Foundation

/**
 # AppClipHeaderImageUpdateRequest
 The request body you use to commit the image asset for a default App Clip experience.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/appclipheaderimageupdaterequest>
 */
public struct AppClipHeaderImageUpdateRequest: RequestBody {
    /// The resource data.
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    /**
     # AppClipHeaderImageUpdateRequest.Data
     The data element of the request body.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/appclipheaderimageupdaterequest/data>
     */
    public struct Data: Identifiable {
        /// The opaque resource ID that uniquely identifies the request.
        public let id: String
        /// The resource type.
        public var type: String { "appClipHeaderImages" }
        /// The attributes that describe the request that updates an App Clip Header Images resource.
        public var attributes: Attributes?

        public init(id: String,
                    attributes: Attributes? = nil)
        {
            self.id = id
            self.attributes = attributes
        }

        /**
         # AppClipHeaderImageUpdateRequest.Data.Attributes
         The attributes you set that describe the updated App Clip Header Images resource.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/appclipheaderimageupdaterequest/data/attributes>
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
