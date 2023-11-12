import Bagbutik_Core
import Foundation

/**
 # AppClip
 The data structure that represents an App Clips resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/appclip>
 */
public struct AppClip: Identifiable {
    /// The opaque resource ID that uniquely identifies an App Clips resource.
    public let id: String
    /// Navigational links that include the self-link.
    public var links: ResourceLinks?
    /// The resource type.
    public var type: String { "appClips" }
    /// The attributes that describe the App Clips resource.
    public var attributes: Attributes?
    /// The navigational links to related data and included resource types and IDs.
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
     # AppClip.Attributes
     The attributes that describe an App Clips resource.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/appclip/attributes>
     */
    public struct Attributes {
        /// The related Bundle IDs resource.
        public var bundleId: String?

        public init(bundleId: String? = nil) {
            self.bundleId = bundleId
        }
    }

    /**
     # AppClip.Relationships
     The relationships of the App Clips resource you included in the request and those on which you can operate.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/appclip/relationships>
     */
    public struct Relationships {
        /// The related Apps resource.
        public var app: App?
        /// The related Default App Clip Experiences resource.
        public var appClipDefaultExperiences: AppClipDefaultExperiences?

        public init(app: App? = nil,
                    appClipDefaultExperiences: AppClipDefaultExperiences? = nil)
        {
            self.app = app
            self.appClipDefaultExperiences = appClipDefaultExperiences
        }

        /**
         # AppClip.Relationships.App
         The data and links that describe the relationship between the App Clips and the Apps resource.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/appclip/relationships/app>
         */
        public struct App {
            /// The resource data.
            @NullCodable public var data: Data?
            /// Navigational links that include the self-link.
            public var links: Links?

            public init(data: Data? = nil,
                        links: Links? = nil)
            {
                self.data = data
                self.links = links
            }

            /**
             # AppClip.Relationships.App.Data
             The type and ID of a related Apps resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appclip/relationships/app/data>
             */
            public struct Data: Identifiable {
                /// The opaque resource ID that uniquely identifies the related Apps resource.
                public let id: String
                /// The resource type.
                public var type: String { "apps" }

                public init(id: String) {
                    self.id = id
                }
            }

            /**
             # AppClip.Relationships.App.Links
             The links to the related Apps resource and the relationship’s self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appclip/relationships/app/links>
             */
            public struct Links {
                /// The link to related data.
                public var related: String?
                /// The link to the resource.
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
         # AppClip.Relationships.AppClipDefaultExperiences
         The data and links that describe the relationship between the App Clips and the Default App Clip Experiences resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/appclip/relationships/appclipdefaultexperiences>
         */
        public struct AppClipDefaultExperiences {
            /// The ID and type of the related Default App Clip Experiences resource.
            @NullCodable public var data: [Data]?
            /// Navigational links that include the self-link.
            public var links: Links?
            /// The paging information.
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
             # AppClip.Relationships.AppClipDefaultExperiences.Data
             The links to the related Default App Clip Experiences resource and the relationship’s self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appclip/relationships/appclipdefaultexperiences/data>
             */
            public struct Data: Identifiable {
                /// The opaque resource ID that uniquely identifies the related Default App Clip Experiences resource.
                public let id: String
                /// The resource type.
                public var type: String { "appClipDefaultExperiences" }

                public init(id: String) {
                    self.id = id
                }
            }

            /**
             # AppClip.Relationships.AppClipDefaultExperiences.Links
             The type and ID of a related Default App Clip Experiences resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appclip/relationships/appclipdefaultexperiences/links>
             */
            public struct Links {
                /// The link to related data.
                public var related: String?
                /// The link to the resource.
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
