import Bagbutik_Core
import Foundation

/**
 # UserInvitationCreateRequest
 The request body you use to create a User Invitation.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/userinvitationcreaterequest>
 */
public struct UserInvitationCreateRequest: RequestBody {
    /// The resource data.
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    /**
     # UserInvitationCreateRequest.Data
     The data element of the request body.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/userinvitationcreaterequest/data>
     */
    public struct Data {
        /// The resource type.
        public var type: String { "userInvitations" }
        /// The resource's attributes.
        public let attributes: Attributes
        /// The types and IDs of the related data to update.
        public var relationships: Relationships?

        public init(attributes: Attributes,
                    relationships: Relationships? = nil)
        {
            self.attributes = attributes
            self.relationships = relationships
        }

        /**
         # UserInvitationCreateRequest.Data.Attributes
         Attributes that you set that describe the new resource.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/userinvitationcreaterequest/data/attributes>
         */
        public struct Attributes {
            /// A Boolean value that indicates whether a user has access to all apps available to the team.
            public var allAppsVisible: Bool?
            /// The email address of a pending user invitation. The email address must be valid to activate the account. It can be any email address, not necessarily one associated with an Apple ID.
            public let email: String
            /// The user invitation recipient's first name.
            public let firstName: String
            /// The user invitation recipient's last name.
            public let lastName: String
            /// A Boolean value that indicates the user's specified role allows access to the provisioning functionality on the Apple Developer website.
            public var provisioningAllowed: Bool?
            /// Assigned user roles that determine the user's access to sections of App Store Connect and tasks they can perform.
            public let roles: [UserRole]

            public init(allAppsVisible: Bool? = nil,
                        email: String,
                        firstName: String,
                        lastName: String,
                        provisioningAllowed: Bool? = nil,
                        roles: [UserRole])
            {
                self.allAppsVisible = allAppsVisible
                self.email = email
                self.firstName = firstName
                self.lastName = lastName
                self.provisioningAllowed = provisioningAllowed
                self.roles = roles
            }
        }

        /**
         # UserInvitationCreateRequest.Data.Relationships
         The relationships to other resources that you can set with this request.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/userinvitationcreaterequest/data/relationships>
         */
        public struct Relationships {
            public var visibleApps: VisibleApps?

            public init(visibleApps: VisibleApps? = nil) {
                self.visibleApps = visibleApps
            }

            /**
             # UserInvitationCreateRequest.Data.Relationships.VisibleApps
             The relationships to other resources that you can set with this request.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/userinvitationcreaterequest/data/relationships/visibleapps>
             */
            public struct VisibleApps {
                @NullCodable public var data: [Data]?

                public init(data: [Data]? = nil) {
                    self.data = data
                }

                /**
                 # UserInvitationCreateRequest.Data.Relationships.VisibleApps.Data
                 The type and ID of the resource that you're relating with the resource you're creating.

                 Full documentation:
                 <https://developer.apple.com/documentation/appstoreconnectapi/userinvitationcreaterequest/data/relationships/visibleapps/data>
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
