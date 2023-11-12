import Bagbutik_Core
import Foundation

/**
 # BetaTesterInvitationCreateRequest
 The request body you use to create a Beta Tester Invitation.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/betatesterinvitationcreaterequest>
 */
public struct BetaTesterInvitationCreateRequest: RequestBody {
    /// The resource data.
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    /**
     # BetaTesterInvitationCreateRequest.Data
     The data element of the request body.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/betatesterinvitationcreaterequest/data>
     */
    public struct Data {
        /// The resource type.
        public var type: String { "betaTesterInvitations" }
        /// The types and IDs of the related data to update.
        public let relationships: Relationships

        public init(relationships: Relationships) {
            self.relationships = relationships
        }

        /**
         # BetaTesterInvitationCreateRequest.Data.Relationships
         The relationships to other resources that you can set with this request.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/betatesterinvitationcreaterequest/data/relationships>
         */
        public struct Relationships {
            public let app: App
            public let betaTester: BetaTester

            public init(app: App,
                        betaTester: BetaTester)
            {
                self.app = app
                self.betaTester = betaTester
            }

            /**
             # BetaTesterInvitationCreateRequest.Data.Relationships.App
             The relationships to other resources that you can set with this request.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/betatesterinvitationcreaterequest/data/relationships/app>
             */
            public struct App {
                public let data: Data

                public init(data: Data) {
                    self.data = data
                }

                /**
                 # BetaTesterInvitationCreateRequest.Data.Relationships.App.Data
                 The type and ID of the resource that you're relating with the resource you're creating.

                 Full documentation:
                 <https://developer.apple.com/documentation/appstoreconnectapi/betatesterinvitationcreaterequest/data/relationships/app/data>
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
             # BetaTesterInvitationCreateRequest.Data.Relationships.BetaTester
             The relationships to other resources that you can set with this request.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/betatesterinvitationcreaterequest/data/relationships/betatester>
             */
            public struct BetaTester {
                public let data: Data

                public init(data: Data) {
                    self.data = data
                }

                /**
                 # BetaTesterInvitationCreateRequest.Data.Relationships.BetaTester.Data
                 The type and ID of the resource that you're relating with the resource you're creating.

                 Full documentation:
                 <https://developer.apple.com/documentation/appstoreconnectapi/betatesterinvitationcreaterequest/data/relationships/betatester/data>
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
        }
    }
}
