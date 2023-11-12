import Bagbutik_Core
import Foundation

/**
 # BetaTesterCreateRequest
 The request body you use to create a BetaTester.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/betatestercreaterequest>
 */
public struct BetaTesterCreateRequest: RequestBody {
    /// The resource data.
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    /**
     # BetaTesterCreateRequest.Data
     The data element of the request body.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/betatestercreaterequest/data>
     */
    public struct Data {
        /// The resource type.
        public var type: String { "betaTesters" }
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
         # BetaTesterCreateRequest.Data.Attributes
         Attributes that you set that describe the new resource.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/betatestercreaterequest/data/attributes>
         */
        public struct Attributes {
            /// The beta tester's email address, used for sending beta testing invitations.
            public let email: String
            /// The beta tester's first name.
            public var firstName: String?
            /// The beta tester's last name.
            public var lastName: String?

            public init(email: String,
                        firstName: String? = nil,
                        lastName: String? = nil)
            {
                self.email = email
                self.firstName = firstName
                self.lastName = lastName
            }
        }

        /**
         # BetaTesterCreateRequest.Data.Relationships
         The relationships to other resources that you can set with this request.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/betatestercreaterequest/data/relationships>
         */
        public struct Relationships {
            public var betaGroups: BetaGroups?
            public var builds: Builds?

            public init(betaGroups: BetaGroups? = nil,
                        builds: Builds? = nil)
            {
                self.betaGroups = betaGroups
                self.builds = builds
            }

            /**
             # BetaTesterCreateRequest.Data.Relationships.BetaGroups
             The relationships to other resources that you can set with this request.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/betatestercreaterequest/data/relationships/betagroups>
             */
            public struct BetaGroups {
                @NullCodable public var data: [Data]?

                public init(data: [Data]? = nil) {
                    self.data = data
                }

                /**
                 # BetaTesterCreateRequest.Data.Relationships.BetaGroups.Data
                 The type and ID of the resource that you're relating with the resource you're creating.

                 Full documentation:
                 <https://developer.apple.com/documentation/appstoreconnectapi/betatestercreaterequest/data/relationships/betagroups/data>
                 */
                public struct Data: Identifiable {
                    /// The opaque resource ID that uniquely identifies the resource.
                    public let id: String
                    /// The resource type.
                    public var type: String { "betaGroups" }

                    public init(id: String) {
                        self.id = id
                    }
                }
            }

            /**
             # BetaTesterCreateRequest.Data.Relationships.Builds
             The relationships to other resources that you can set with this request.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/betatestercreaterequest/data/relationships/builds>
             */
            public struct Builds {
                @NullCodable public var data: [Data]?

                public init(data: [Data]? = nil) {
                    self.data = data
                }

                /**
                 # BetaTesterCreateRequest.Data.Relationships.Builds.Data
                 The type and ID of the resource that you're relating with the resource you're creating.

                 Full documentation:
                 <https://developer.apple.com/documentation/appstoreconnectapi/betatestercreaterequest/data/relationships/builds/data>
                 */
                public struct Data: Identifiable {
                    /// The opaque resource ID that uniquely identifies the resource.
                    public let id: String
                    /// The resource type.
                    public var type: String { "builds" }

                    public init(id: String) {
                        self.id = id
                    }
                }
            }
        }
    }
}
