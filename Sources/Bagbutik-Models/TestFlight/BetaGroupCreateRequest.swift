import Bagbutik_Core
import Foundation

/**
 # BetaGroupCreateRequest
 The request body you use to create a Beta Group.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/betagroupcreaterequest>
 */
public struct BetaGroupCreateRequest: RequestBody {
    /// The resource data.
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    /**
     # BetaGroupCreateRequest.Data
     The data element of the request body.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/betagroupcreaterequest/data>
     */
    public struct Data {
        /// The resource type.
        public var type: String { "betaGroups" }
        /// The resource's attributes.
        public let attributes: Attributes
        /// Navigational links to related data and included resource types and IDs.
        public let relationships: Relationships

        public init(attributes: Attributes,
                    relationships: Relationships)
        {
            self.attributes = attributes
            self.relationships = relationships
        }

        /**
         # BetaGroupCreateRequest.Data.Attributes
         Attributes that you set that describe the new resource.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/betagroupcreaterequest/data/attributes>
         */
        public struct Attributes {
            public var feedbackEnabled: Bool?
            public var hasAccessToAllBuilds: Bool?
            public var isInternalGroup: Bool?
            /// The name for the beta group.
            public let name: String
            /// A Boolean value that indicates whether a public link is enabled. Enabling a link allows you to invite anyone outside of your team to beta test your app. When you share this link, testers will be able to install the beta version of your app on their devices in TestFlight and share the link with others.
            public var publicLinkEnabled: Bool?
            /// The maximum number of testers that can join this beta group using the public link. Values must be between 1 and 10,000.
            public var publicLinkLimit: Int?
            /// A Boolean value that limits the number of testers who can join the beta group using the public link.
            public var publicLinkLimitEnabled: Bool?

            public init(feedbackEnabled: Bool? = nil,
                        hasAccessToAllBuilds: Bool? = nil,
                        isInternalGroup: Bool? = nil,
                        name: String,
                        publicLinkEnabled: Bool? = nil,
                        publicLinkLimit: Int? = nil,
                        publicLinkLimitEnabled: Bool? = nil)
            {
                self.feedbackEnabled = feedbackEnabled
                self.hasAccessToAllBuilds = hasAccessToAllBuilds
                self.isInternalGroup = isInternalGroup
                self.name = name
                self.publicLinkEnabled = publicLinkEnabled
                self.publicLinkLimit = publicLinkLimit
                self.publicLinkLimitEnabled = publicLinkLimitEnabled
            }
        }

        /**
         # BetaGroupCreateRequest.Data.Relationships
         The relationships to other resources that you can set with this request.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/betagroupcreaterequest/data/relationships>
         */
        public struct Relationships {
            public let app: App
            public var betaTesters: BetaTesters?
            public var builds: Builds?

            public init(app: App,
                        betaTesters: BetaTesters? = nil,
                        builds: Builds? = nil)
            {
                self.app = app
                self.betaTesters = betaTesters
                self.builds = builds
            }

            /**
             # BetaGroupCreateRequest.Data.Relationships.App
             The relationships to other resources that you can set with this request.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/betagroupcreaterequest/data/relationships/app>
             */
            public struct App {
                public let data: Data

                public init(data: Data) {
                    self.data = data
                }

                /**
                 # BetaGroupCreateRequest.Data.Relationships.App.Data
                 The type and ID of the resource that you're relating with the resource you're creating.

                 Full documentation:
                 <https://developer.apple.com/documentation/appstoreconnectapi/betagroupcreaterequest/data/relationships/app/data>
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

            /**
             # BetaGroupCreateRequest.Data.Relationships.BetaTesters
             The relationships to other resources that you can set with this request.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/betagroupcreaterequest/data/relationships/betatesters>
             */
            public struct BetaTesters {
                @NullCodable public var data: [Data]?

                public init(data: [Data]? = nil) {
                    self.data = data
                }

                /**
                 # BetaGroupCreateRequest.Data.Relationships.BetaTesters.Data
                 The type and ID of the resource that you're relating with the resource you're creating.

                 Full documentation:
                 <https://developer.apple.com/documentation/appstoreconnectapi/betagroupcreaterequest/data/relationships/betatesters/data>
                 */
                public struct Data: Identifiable {
                    /// The opaque resource ID that uniquely identifies the resource.
                    public let id: String
                    /// The resource type.
                    public var type: String { "betaTesters" }

                    public init(id: String) {
                        self.id = id
                    }
                }
            }

            /**
             # BetaGroupCreateRequest.Data.Relationships.Builds
             The relationships to other resources that you can set with this request.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/betagroupcreaterequest/data/relationships/builds>
             */
            public struct Builds {
                @NullCodable public var data: [Data]?

                public init(data: [Data]? = nil) {
                    self.data = data
                }

                /**
                 # BetaGroupCreateRequest.Data.Relationships.Builds.Data
                 The type and ID of the resource that you're relating with the resource you're creating.

                 Full documentation:
                 <https://developer.apple.com/documentation/appstoreconnectapi/betagroupcreaterequest/data/relationships/builds/data>
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
