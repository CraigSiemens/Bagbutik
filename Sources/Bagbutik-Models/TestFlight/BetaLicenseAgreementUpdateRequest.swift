import Bagbutik_Core
import Foundation

/**
 # BetaLicenseAgreementUpdateRequest
 The request body you use to update a Beta License Agreement.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/betalicenseagreementupdaterequest>
 */
public struct BetaLicenseAgreementUpdateRequest: RequestBody {
    /// The resource data.
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    /**
     # BetaLicenseAgreementUpdateRequest.Data
     The data element of the request body.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/betalicenseagreementupdaterequest/data>
     */
    public struct Data: Identifiable {
        /// The opaque resource ID that uniquely identifies the resource.
        public let id: String
        /// The resource type.
        public var type: String { "betaLicenseAgreements" }
        /// The resource's attributes.
        public var attributes: Attributes?

        public init(id: String,
                    attributes: Attributes? = nil)
        {
            self.id = id
            self.attributes = attributes
        }

        /**
         # BetaLicenseAgreementUpdateRequest.Data.Attributes
         Attributes whose values you're changing as part of the update request.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/betalicenseagreementupdaterequest/data/attributes>
         */
        public struct Attributes {
            /// The license agreement text for your beta app that displays to users.
            public var agreementText: String?

            public init(agreementText: String? = nil) {
                self.agreementText = agreementText
            }
        }
    }
}
