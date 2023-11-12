import Bagbutik_Core
import Foundation

/**
 # EndUserLicenseAgreementUpdateRequest
 The request body you use to update an End User License Agreement.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/enduserlicenseagreementupdaterequest>
 */
public struct EndUserLicenseAgreementUpdateRequest: RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    /**
     # EndUserLicenseAgreementUpdateRequest.Data
     The data element of the request body.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/enduserlicenseagreementupdaterequest/data>
     */
    public struct Data: Identifiable {
        public let id: String
        public var type: String { "endUserLicenseAgreements" }
        public var attributes: Attributes?
        public var relationships: Relationships?

        public init(id: String,
                    attributes: Attributes? = nil,
                    relationships: Relationships? = nil)
        {
            self.id = id
            self.attributes = attributes
            self.relationships = relationships
        }

        /**
         # EndUserLicenseAgreementUpdateRequest.Data.Attributes
         Attributes whose values you're changing as part of the update request.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/enduserlicenseagreementupdaterequest/data/attributes>
         */
        public struct Attributes {
            public var agreementText: String?

            public init(agreementText: String? = nil) {
                self.agreementText = agreementText
            }
        }

        /**
         # EndUserLicenseAgreementUpdateRequest.Data.Relationships
         The data and links that describe the relationship between the resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/enduserlicenseagreementupdaterequest/data/relationships>
         */
        public struct Relationships {
            public var territories: Territories?

            public init(territories: Territories? = nil) {
                self.territories = territories
            }

            /**
             # EndUserLicenseAgreementUpdateRequest.Data.Relationships.Territories
             The data and links that describe the relationship between the resources.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/enduserlicenseagreementupdaterequest/data/relationships/territories>
             */
            public struct Territories {
                @NullCodable public var data: [Data]?

                public init(data: [Data]? = nil) {
                    self.data = data
                }

                /**
                 # EndUserLicenseAgreementUpdateRequest.Data.Relationships.Territories.Data
                 The type and ID of a resource that you're relating with the resource you're updating.

                 Full documentation:
                 <https://developer.apple.com/documentation/appstoreconnectapi/enduserlicenseagreementupdaterequest/data/relationships/territories/data>
                 */
                public struct Data: Identifiable {
                    public let id: String
                    public var type: String { "territories" }

                    public init(id: String) {
                        self.id = id
                    }
                }
            }
        }
    }
}
