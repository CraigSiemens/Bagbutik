import Bagbutik_Core
import Foundation

/**
 # EndUserLicenseAgreementCreateRequest
 The request body you use to create an End User License Agreement.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/enduserlicenseagreementcreaterequest>
 */
public struct EndUserLicenseAgreementCreateRequest: RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    /**
     # EndUserLicenseAgreementCreateRequest.Data
     The data element of the request body.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/enduserlicenseagreementcreaterequest/data>
     */
    public struct Data {
        public var type: String { "endUserLicenseAgreements" }
        public let attributes: Attributes
        public let relationships: Relationships

        public init(attributes: Attributes,
                    relationships: Relationships)
        {
            self.attributes = attributes
            self.relationships = relationships
        }

        /**
         # EndUserLicenseAgreementCreateRequest.Data.Attributes
         Attributes that you set that describe the new resource.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/enduserlicenseagreementcreaterequest/data/attributes>
         */
        public struct Attributes {
            public let agreementText: String

            public init(agreementText: String) {
                self.agreementText = agreementText
            }
        }

        /**
         # EndUserLicenseAgreementCreateRequest.Data.Relationships
         The relationships to other resources that you can set with this request.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/enduserlicenseagreementcreaterequest/data/relationships>
         */
        public struct Relationships {
            public let app: App
            public let territories: Territories

            public init(app: App,
                        territories: Territories)
            {
                self.app = app
                self.territories = territories
            }

            /**
             # EndUserLicenseAgreementCreateRequest.Data.Relationships.App
             The relationships to other resources that you can set with this request.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/enduserlicenseagreementcreaterequest/data/relationships/app>
             */
            public struct App {
                public let data: Data

                public init(data: Data) {
                    self.data = data
                }

                /**
                 # EndUserLicenseAgreementCreateRequest.Data.Relationships.App.Data
                 The type and ID of the resource that you're relating with the resource you're creating.

                 Full documentation:
                 <https://developer.apple.com/documentation/appstoreconnectapi/enduserlicenseagreementcreaterequest/data/relationships/app/data>
                 */
                public struct Data: Identifiable {
                    public let id: String
                    public var type: String { "apps" }

                    public init(id: String) {
                        self.id = id
                    }
                }
            }

            /**
             # EndUserLicenseAgreementCreateRequest.Data.Relationships.Territories
             The relationships to other resources that you can set with this request.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/enduserlicenseagreementcreaterequest/data/relationships/territories>
             */
            public struct Territories {
                public let data: [Data]

                public init(data: [Data]) {
                    self.data = data
                }

                /**
                 # EndUserLicenseAgreementCreateRequest.Data.Relationships.Territories.Data
                 The type and ID of the resource that you're relating with the resource you're creating.

                 Full documentation:
                 <https://developer.apple.com/documentation/appstoreconnectapi/enduserlicenseagreementcreaterequest/data/relationships/territories/data>
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
