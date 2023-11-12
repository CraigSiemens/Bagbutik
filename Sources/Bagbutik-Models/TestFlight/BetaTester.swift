import Bagbutik_Core
import Foundation

/**
 # BetaTester
 The data structure that represents a Beta Testers resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/betatester>
 */
public struct BetaTester: Identifiable {
    /// The opaque resource ID that uniquely identifies the resource.
    public let id: String
    /// Navigational links that include the self-link.
    public var links: ResourceLinks?
    /// The resource type.
    public var type: String { "betaTesters" }
    /// The resource's attributes.
    public var attributes: Attributes?
    /// Navigational links to related data and included resource types and IDs.
    public var relationships: Relationships?

    public init(id: String,
                links: ResourceLinks? = nil,
                attributes: Attributes? = nil,
                relationships: Relationships? = nil)
    {
        self.id = id
        self.links = links
        self.attributes = attributes
        self.relationships = relationships
    }

    /**
     # BetaTester.Attributes
     Attributes that describe a Beta Testers resource.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/betatester/attributes>
     */
    public struct Attributes {
        /// The beta tester's email address, used for sending beta testing invitations.
        public var email: String?
        /// The beta tester's first name.
        public var firstName: String?
        /// An invite type that indicates if a beta tester was invited by an email invite or used a TestFlight public link to join a beta test.
        public var inviteType: BetaInviteType?
        /// The beta tester's last name.
        public var lastName: String?

        public init(email: String? = nil,
                    firstName: String? = nil,
                    inviteType: BetaInviteType? = nil,
                    lastName: String? = nil)
        {
            self.email = email
            self.firstName = firstName
            self.inviteType = inviteType
            self.lastName = lastName
        }
    }

    /**
     # BetaTester.Relationships
     The relationships you included in the request and those on which you can operate.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/betatester/relationships>
     */
    public struct Relationships {
        public var apps: Apps?
        public var betaGroups: BetaGroups?
        public var builds: Builds?

        public init(apps: Apps? = nil,
                    betaGroups: BetaGroups? = nil,
                    builds: Builds? = nil)
        {
            self.apps = apps
            self.betaGroups = betaGroups
            self.builds = builds
        }

        /**
         # BetaTester.Relationships.Apps
         The data and links that describe the relationship between the resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/betatester/relationships/apps>
         */
        public struct Apps {
            @NullCodable public var data: [Data]?
            public var links: Links?
            public var meta: PagingInformation?

            public init(data: [Data]? = nil,
                        links: Links? = nil,
                        meta: PagingInformation? = nil)
            {
                self.data = data
                self.links = links
                self.meta = meta
            }

            /**
             # BetaTester.Relationships.Apps.Data
             The type and ID of a related resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/betatester/relationships/apps/data>
             */
            public struct Data: Identifiable {
                public let id: String
                public var type: String { "apps" }

                public init(id: String) {
                    self.id = id
                }
            }

            /**
             # BetaTester.Relationships.Apps.Links
             The links to the related data and the relationship's self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/betatester/relationships/apps/links>
             */
            public struct Links {
                public var related: String?
                public var itself: String?

                public init(related: String? = nil,
                            self itself: String? = nil)
                {
                    self.related = related
                    self.itself = itself
                }
            }
        }

        /**
         # BetaTester.Relationships.BetaGroups
         The data and links that describe the relationship between the resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/betatester/relationships/betagroups>
         */
        public struct BetaGroups {
            @NullCodable public var data: [Data]?
            public var links: Links?
            public var meta: PagingInformation?

            public init(data: [Data]? = nil,
                        links: Links? = nil,
                        meta: PagingInformation? = nil)
            {
                self.data = data
                self.links = links
                self.meta = meta
            }

            /**
             # BetaTester.Relationships.BetaGroups.Data
             The type and ID of a related resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/betatester/relationships/betagroups/data>
             */
            public struct Data: Identifiable {
                public let id: String
                public var type: String { "betaGroups" }

                public init(id: String) {
                    self.id = id
                }
            }

            /**
             # BetaTester.Relationships.BetaGroups.Links
             The links to the related data and the relationship's self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/betatester/relationships/betagroups/links>
             */
            public struct Links {
                public var related: String?
                public var itself: String?

                public init(related: String? = nil,
                            self itself: String? = nil)
                {
                    self.related = related
                    self.itself = itself
                }
            }
        }

        /**
         # BetaTester.Relationships.Builds
         The data and links that describe the relationship between the resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/betatester/relationships/builds>
         */
        public struct Builds {
            @NullCodable public var data: [Data]?
            public var links: Links?
            public var meta: PagingInformation?

            public init(data: [Data]? = nil,
                        links: Links? = nil,
                        meta: PagingInformation? = nil)
            {
                self.data = data
                self.links = links
                self.meta = meta
            }

            /**
             # BetaTester.Relationships.Builds.Data
             The type and ID of a related resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/betatester/relationships/builds/data>
             */
            public struct Data: Identifiable {
                public let id: String
                public var type: String { "builds" }

                public init(id: String) {
                    self.id = id
                }
            }

            /**
             # BetaTester.Relationships.Builds.Links
             The links to the related data and the relationship's self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/betatester/relationships/builds/links>
             */
            public struct Links {
                public var related: String?
                public var itself: String?

                public init(related: String? = nil,
                            self itself: String? = nil)
                {
                    self.related = related
                    self.itself = itself
                }
            }
        }
    }
}
