import Bagbutik_Core
import Foundation

/**
 # AppClipDefaultExperience
 The data structure that represents a Default App Clip Experiences resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/appclipdefaultexperience>
 */
public struct AppClipDefaultExperience: Identifiable {
    /// The opaque resource ID that uniquely identifies a Default App Clip Experiences resource.
    public let id: String
    /// Navigational links that include the self-link.
    public var links: ResourceLinks?
    /// The resource type.
    public var type: String { "appClipDefaultExperiences" }
    /// The attributes that describe the Default App Clip Experiences resource.
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
     # AppClipDefaultExperience.Attributes
     The attributes that describe a Default App Clip Experiences resource.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/appclipdefaultexperience/attributes>
     */
    public struct Attributes {
        /// The call-to-action verb that appears on the App Clip card.
        public var action: AppClipAction?

        public init(action: AppClipAction? = nil) {
            self.action = action
        }
    }

    /**
     # AppClipDefaultExperience.Relationships
     The relationships of the Default App Clip Experiences resource you included in the request and those on which you can operate.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/appclipdefaultexperience/relationships>
     */
    public struct Relationships {
        /// The related App Clips resource.
        public var appClip: AppClip?
        /// The related App Clip App Store Review Details resource.
        public var appClipAppStoreReviewDetail: AppClipAppStoreReviewDetail?
        /// The related Default App Clip Experience Localizations resource.
        public var appClipDefaultExperienceLocalizations: AppClipDefaultExperienceLocalizations?
        /// The related App Store Versions resource.
        public var releaseWithAppStoreVersion: ReleaseWithAppStoreVersion?

        public init(appClip: AppClip? = nil,
                    appClipAppStoreReviewDetail: AppClipAppStoreReviewDetail? = nil,
                    appClipDefaultExperienceLocalizations: AppClipDefaultExperienceLocalizations? = nil,
                    releaseWithAppStoreVersion: ReleaseWithAppStoreVersion? = nil)
        {
            self.appClip = appClip
            self.appClipAppStoreReviewDetail = appClipAppStoreReviewDetail
            self.appClipDefaultExperienceLocalizations = appClipDefaultExperienceLocalizations
            self.releaseWithAppStoreVersion = releaseWithAppStoreVersion
        }

        /**
         # AppClipDefaultExperience.Relationships.AppClip
         The data and links that describe the relationship between the Default App Clip Experiences and the App Clips resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/appclipdefaultexperience/relationships/appclip>
         */
        public struct AppClip {
            /// The ID and type of the related App Clips resource.
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
             # AppClipDefaultExperience.Relationships.AppClip.Data
             The type and ID of a related App Clips resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appclipdefaultexperience/relationships/appclip/data>
             */
            public struct Data: Identifiable {
                /// The opaque resource ID that uniquely identifies an App Clips resource.
                public let id: String
                /// The resource type.
                public var type: String { "appClips" }

                public init(id: String) {
                    self.id = id
                }
            }

            /**
             # AppClipDefaultExperience.Relationships.AppClip.Links
             The links to the related App Clips resource and the relationship’s self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appclipdefaultexperience/relationships/appclip/links>
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
         # AppClipDefaultExperience.Relationships.AppClipAppStoreReviewDetail
         The data and links that describe the relationship between the Default App Clip Experiences and the App Clip App Store Review Details resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/appclipdefaultexperience/relationships/appclipappstorereviewdetail>
         */
        public struct AppClipAppStoreReviewDetail {
            /// The ID and type of the related App Clip App Store Review Details resource.
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
             # AppClipDefaultExperience.Relationships.AppClipAppStoreReviewDetail.Data
             The type and ID of a related App Clip App Store Details resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appclipdefaultexperience/relationships/appclipappstorereviewdetail/data>
             */
            public struct Data: Identifiable {
                /// The opaque resource ID that uniquely identifies the related App Clip App Store Review Details resource.
                public let id: String
                /// The resource type.
                public var type: String { "appClipAppStoreReviewDetails" }

                public init(id: String) {
                    self.id = id
                }
            }

            /**
             # AppClipDefaultExperience.Relationships.AppClipAppStoreReviewDetail.Links
             The links to the related App Clip App Store Review Details resource and the relationship’s self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appclipdefaultexperience/relationships/appclipappstorereviewdetail/links>
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
         # AppClipDefaultExperience.Relationships.AppClipDefaultExperienceLocalizations
         The data, links, and paging information that describe the relationship between the Default App Clip Experiences and the Default App Clip Experience Localizations resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/appclipdefaultexperience/relationships/appclipdefaultexperiencelocalizations>
         */
        public struct AppClipDefaultExperienceLocalizations {
            /// The ID and type of the related Default App Clip Experience Localizations resource.
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
             # AppClipDefaultExperience.Relationships.AppClipDefaultExperienceLocalizations.Data
             The type and ID of a related Default App Clip Experience Localizations resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appclipdefaultexperience/relationships/appclipdefaultexperiencelocalizations/data>
             */
            public struct Data: Identifiable {
                /// The opaque resource ID that uniquely identifies a Default App Clip Experience Localizations resource.
                public let id: String
                /// The resource type.
                public var type: String { "appClipDefaultExperienceLocalizations" }

                public init(id: String) {
                    self.id = id
                }
            }

            /**
             # AppClipDefaultExperience.Relationships.AppClipDefaultExperienceLocalizations.Links
             The links to the related Default App Clip Experience Localizations resource and the relationship’s self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appclipdefaultexperience/relationships/appclipdefaultexperiencelocalizations/links>
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
         # AppClipDefaultExperience.Relationships.ReleaseWithAppStoreVersion
         The data and links that describe the relationship between the Default App Clip Experiences and the App Store Versions resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/appclipdefaultexperience/relationships/releasewithappstoreversion>
         */
        public struct ReleaseWithAppStoreVersion {
            /// The ID and type of the related App Store Versions resource.
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
             # AppClipDefaultExperience.Relationships.ReleaseWithAppStoreVersion.Data
             The type and ID of a related App Store Versions resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appclipdefaultexperience/relationships/releasewithappstoreversion/data>
             */
            public struct Data: Identifiable {
                /// The opaque resource ID that uniquely identifies the related App Store Versions resource.
                public let id: String
                /// The resource type.
                public var type: String { "appStoreVersions" }

                public init(id: String) {
                    self.id = id
                }
            }

            /**
             # AppClipDefaultExperience.Relationships.ReleaseWithAppStoreVersion.Links
             The links to the related App Store Versions resource and the relationship’s self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appclipdefaultexperience/relationships/releasewithappstoreversion/links>
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
