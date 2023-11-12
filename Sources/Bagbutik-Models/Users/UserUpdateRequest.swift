import Bagbutik_Core
import Foundation

/**
 # UserUpdateRequest
 The request body you use to update a User.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/userupdaterequest>
 */
public struct UserUpdateRequest: RequestBody {
    /// The resource data.
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    /**
     # UserUpdateRequest.Data
     The data element of the request body.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/userupdaterequest/data>
     */
    public struct Data: Identifiable {
        /// The opaque resource ID that uniquely identifies the resource.
        public let id: String
        /// The resource type.
        public var type: String { "users" }
        /// The resource's attributes.
        public var attributes: Attributes?
        /// The types and IDs of the related data to update.
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
         # UserUpdateRequest.Data.Attributes
         Attributes whose values you're changing as part of the update request.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/userupdaterequest/data/attributes>
         */
        public struct Attributes {
            /// Assigned user roles that determine the user's access to sections of App Store Connect and tasks they can perform.
            public var allAppsVisible: Bool?
            /// A Boolean value that indicates the user's specified role allows access to the provisioning functionality on the Apple Developer website.
            public var provisioningAllowed: Bool?
            /// Assigned user roles that determine the user's access to sections of App Store Connect and tasks they can perform.
            public var roles: [UserRole]?

            public init(allAppsVisible: Bool? = nil,
                        provisioningAllowed: Bool? = nil,
                        roles: [UserRole]? = nil)
            {
                self.allAppsVisible = allAppsVisible
                self.provisioningAllowed = provisioningAllowed
                self.roles = roles
            }
        }

        /**
         # UserUpdateRequest.Data.Relationships
         The data and links that describe the relationship between the resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/userupdaterequest/data/relationships>
         */
        public struct Relationships {
            public var visibleApps: VisibleApps?

            public init(visibleApps: VisibleApps? = nil) {
                self.visibleApps = visibleApps
            }

            /**
             # UserUpdateRequest.Data.Relationships.VisibleApps
             The data and links that describe the relationship between the resources.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/userupdaterequest/data/relationships/visibleapps>
             */
            public struct VisibleApps {
                @NullCodable public var data: [Data]?

                public init(data: [Data]? = nil) {
                    self.data = data
                }

                /**
                 # UserUpdateRequest.Data.Relationships.VisibleApps.Data
                 The type and ID of a resource that you're relating with the resource you're updating.

                 Full documentation:
                 <https://developer.apple.com/documentation/appstoreconnectapi/userupdaterequest/data/relationships/visibleapps/data>
                 */
                public struct Data: Identifiable {
                    /// The opaque resource ID that uniquely identifies the resource.
                    public let id: String
                    /// The resource type.
                    public var type: String { "apps" }

                    public init(id: String) {
                        self.id = id
                    }
                }
            }
        }
    }
}
