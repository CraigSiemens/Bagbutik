import Bagbutik_Core
import Foundation

/**
 # BetaAppClipInvocationUpdateRequest
 The request body you use to update a Beta App Clip Invocation.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/betaappclipinvocationupdaterequest>
 */
public struct BetaAppClipInvocationUpdateRequest: RequestBody {
    /// The resource data.
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    /**
     # BetaAppClipInvocationUpdateRequest.Data
     The data element of the request body.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/betaappclipinvocationupdaterequest/data>
     */
    public struct Data: Identifiable {
        /// The opaque resource ID that uniquely identifies the request.
        public let id: String
        /// The resource type.
        public var type: String { "betaAppClipInvocations" }
        /// The attributes that describe the request that updates a Beta App Clip Invocations resource.
        public var attributes: Attributes?

        public init(id: String,
                    attributes: Attributes? = nil)
        {
            self.id = id
            self.attributes = attributes
        }

        /**
         # BetaAppClipInvocationUpdateRequest.Data.Attributes
         The attributes you set that describe the updated Beta App Clip Invocations resource.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/betaappclipinvocationupdaterequest/data/attributes>
         */
        public struct Attributes {
            /// The invocation URL you configure for testers who use the TestFlight to launch your App Clip.
            public var url: String?

            public init(url: String? = nil) {
                self.url = url
            }
        }
    }
}
