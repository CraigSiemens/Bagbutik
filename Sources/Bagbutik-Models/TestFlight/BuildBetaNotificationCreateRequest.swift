import Bagbutik_Core
import Foundation

/**
 # BuildBetaNotificationCreateRequest
 The request body you use to create a Build Beta Notification.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/buildbetanotificationcreaterequest>
 */
public struct BuildBetaNotificationCreateRequest: RequestBody {
    /// The resource data.
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    /**
     # BuildBetaNotificationCreateRequest.Data
     The data element of the request body.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/buildbetanotificationcreaterequest/data>
     */
    public struct Data {
        /// The resource type.
        public var type: String { "buildBetaNotifications" }
        /// The types and IDs of the related data to update.
        public let relationships: Relationships

        public init(relationships: Relationships) {
            self.relationships = relationships
        }

        /**
         # BuildBetaNotificationCreateRequest.Data.Relationships
         The relationships to other resources that you can set with this request.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/buildbetanotificationcreaterequest/data/relationships>
         */
        public struct Relationships {
            public let build: Build

            public init(build: Build) {
                self.build = build
            }

            /**
             # BuildBetaNotificationCreateRequest.Data.Relationships.Build
             The relationships to other resources that you can set with this request.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/buildbetanotificationcreaterequest/data/relationships/build>
             */
            public struct Build {
                public let data: Data

                public init(data: Data) {
                    self.data = data
                }

                /**
                 # BuildBetaNotificationCreateRequest.Data.Relationships.Build.Data
                 The type and ID of the resource that you're relating with the resource you're creating.

                 Full documentation:
                 <https://developer.apple.com/documentation/appstoreconnectapi/buildbetanotificationcreaterequest/data/relationships/build/data>
                 */
                public struct Data: Identifiable {
                    /// The opaque resource ID that uniquely identifies the resource.
                    public let id: String
                    /// The types and IDs of the related data to update.
                    public var type: String { "builds" }

                    public init(id: String) {
                        self.id = id
                    }
                }
            }
        }
    }
}
