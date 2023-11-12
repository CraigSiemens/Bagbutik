import Bagbutik_Core
import Foundation

/**
 # BundleIdCapabilityCreateRequest
 The request body you use to create a Bundle ID Capability.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/bundleidcapabilitycreaterequest>
 */
public struct BundleIdCapabilityCreateRequest: RequestBody {
    /// The resource data.
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    /**
     # BundleIdCapabilityCreateRequest.Data
     The data element of the request body.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/bundleidcapabilitycreaterequest/data>
     */
    public struct Data {
        public var type: String { "bundleIdCapabilities" }
        public let attributes: Attributes
        public let relationships: Relationships

        public init(attributes: Attributes,
                    relationships: Relationships)
        {
            self.attributes = attributes
            self.relationships = relationships
        }

        /**
         # BundleIdCapabilityCreateRequest.Data.Attributes
         Attributes that you set that describe the new resource.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/bundleidcapabilitycreaterequest/data/attributes>
         */
        public struct Attributes {
            public let capabilityType: CapabilityType
            public var settings: [CapabilitySetting]?

            public init(capabilityType: CapabilityType,
                        settings: [CapabilitySetting]? = nil)
            {
                self.capabilityType = capabilityType
                self.settings = settings
            }
        }

        /**
         # BundleIdCapabilityCreateRequest.Data.Relationships
         The relationships to other resources that you can set with this request.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/bundleidcapabilitycreaterequest/data/relationships>
         */
        public struct Relationships {
            public let bundleId: BundleId

            public init(bundleId: BundleId) {
                self.bundleId = bundleId
            }

            /**
             # BundleIdCapabilityCreateRequest.Data.Relationships.BundleId
             The relationships to other resources that you can set with this request.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/bundleidcapabilitycreaterequest/data/relationships/bundleid>
             */
            public struct BundleId {
                public let data: Data

                public init(data: Data) {
                    self.data = data
                }

                /**
                 # BundleIdCapabilityCreateRequest.Data.Relationships.BundleId.Data
                 The type and ID of the resource that you're relating with the resource you're creating.

                 Full documentation:
                 <https://developer.apple.com/documentation/appstoreconnectapi/bundleidcapabilitycreaterequest/data/relationships/bundleid/data>
                 */
                public struct Data: Identifiable {
                    public let id: String
                    public var type: String { "bundleIds" }

                    public init(id: String) {
                        self.id = id
                    }
                }
            }
        }
    }
}
