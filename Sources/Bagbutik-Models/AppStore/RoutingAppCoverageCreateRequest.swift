import Bagbutik_Core
import Foundation

/**
 # RoutingAppCoverageCreateRequest
 The request body you use to create a Routing App Coverage.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/routingappcoveragecreaterequest>
 */
public struct RoutingAppCoverageCreateRequest: RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    /**
     # RoutingAppCoverageCreateRequest.Data
     The data element of the request body.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/routingappcoveragecreaterequest/data>
     */
    public struct Data {
        public var type: String { "routingAppCoverages" }
        public let attributes: Attributes
        public let relationships: Relationships

        public init(attributes: Attributes,
                    relationships: Relationships)
        {
            self.attributes = attributes
            self.relationships = relationships
        }

        /**
         # RoutingAppCoverageCreateRequest.Data.Attributes
         Attributes that you set that describe the new resource.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/routingappcoveragecreaterequest/data/attributes>
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
         # RoutingAppCoverageCreateRequest.Data.Relationships
         The relationships to other resources that you can set with this request.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/routingappcoveragecreaterequest/data/relationships>
         */
        public struct Relationships {
            public let appStoreVersion: AppStoreVersion

            public init(appStoreVersion: AppStoreVersion) {
                self.appStoreVersion = appStoreVersion
            }

            /**
             # RoutingAppCoverageCreateRequest.Data.Relationships.AppStoreVersion
             The relationships to other resources that you can set with this request.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/routingappcoveragecreaterequest/data/relationships/appstoreversion>
             */
            public struct AppStoreVersion {
                public let data: Data

                public init(data: Data) {
                    self.data = data
                }

                /**
                 # RoutingAppCoverageCreateRequest.Data.Relationships.AppStoreVersion.Data
                 The type and ID of the resource that you're relating with the resource you're creating.

                 Full documentation:
                 <https://developer.apple.com/documentation/appstoreconnectapi/routingappcoveragecreaterequest/data/relationships/appstoreversion/data>
                 */
                public struct Data: Identifiable {
                    public let id: String
                    public var type: String { "appStoreVersions" }

                    public init(id: String) {
                        self.id = id
                    }
                }
            }
        }
    }
}
