import Bagbutik_Core
import Foundation

/**
 # AppClipDefaultExperienceLocalization
 The data structure that represents a Default App Clip Experience Localizations resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/appclipdefaultexperiencelocalization>
 */
public struct AppClipDefaultExperienceLocalization: Identifiable {
    /// The opaque resource ID that uniquely identifies a Default App Clip Experience Localizations resource.
    public let id: String
    /// Navigational links that include the self-link.
    public var links: ResourceLinks?
    /// The resource type.
    public var type: String { "appClipDefaultExperienceLocalizations" }
    /// The attributes that describe the Default App Clip Experience Localizations resource.
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
     # AppClipDefaultExperienceLocalization.Attributes
     The attributes that describe a Default App Clip Experience Localizations resource.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/appclipdefaultexperiencelocalization/attributes>
     */
    public struct Attributes {
        /// The specified locale.
        public var locale: String?
        /// The subtitle that appears on the App Clip card for the default App Clip experience.
        public var subtitle: String?

        public init(locale: String? = nil,
                    subtitle: String? = nil)
        {
            self.locale = locale
            self.subtitle = subtitle
        }
    }

    /**
     # AppClipDefaultExperienceLocalization.Relationships
     The relationships of the Default App Clip Experience Localizations resource you included in the request and those on which you can operate.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/appclipdefaultexperiencelocalization/relationships>
     */
    public struct Relationships {
        /// The related Default App Clip Experiences resource.
        public var appClipDefaultExperience: AppClipDefaultExperience?
        /// The related App Clip Header Images resource.
        public var appClipHeaderImage: AppClipHeaderImage?

        public init(appClipDefaultExperience: AppClipDefaultExperience? = nil,
                    appClipHeaderImage: AppClipHeaderImage? = nil)
        {
            self.appClipDefaultExperience = appClipDefaultExperience
            self.appClipHeaderImage = appClipHeaderImage
        }

        /**
         # AppClipDefaultExperienceLocalization.Relationships.AppClipDefaultExperience
         The data and links that describe the relationship between the Default App Clip Experience Localizations and the Default App Clip Experiences resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/appclipdefaultexperiencelocalization/relationships/appclipdefaultexperience>
         */
        public struct AppClipDefaultExperience {
            /// The ID and type of the related Default App Clip Experiences resource.
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
             # AppClipDefaultExperienceLocalization.Relationships.AppClipDefaultExperience.Data
             The type and ID of a related Default App Clip Experience Localizations resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appclipdefaultexperiencelocalization/relationships/appclipdefaultexperience/data>
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
             # AppClipDefaultExperienceLocalization.Relationships.AppClipDefaultExperience.Links
             The links to the related Default App Clip Experiences resource and the relationship’s self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appclipdefaultexperiencelocalization/relationships/appclipdefaultexperience/links>
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
         # AppClipDefaultExperienceLocalization.Relationships.AppClipHeaderImage
         The data and links that describe the relationship between the Default App Clip Experience Localizations and the App Clip Header Images resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/appclipdefaultexperiencelocalization/relationships/appclipheaderimage>
         */
        public struct AppClipHeaderImage {
            /// The ID and type of the related App Clip Header Images resource.
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
             # AppClipDefaultExperienceLocalization.Relationships.AppClipHeaderImage.Data
             The type and ID of a related App Clip Header Images resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appclipdefaultexperiencelocalization/relationships/appclipheaderimage/data>
             */
            public struct Data: Identifiable {
                /// The opaque resource ID that uniquely identifies the related App Clip Header Images resource.
                public let id: String
                /// The resource type.
                public var type: String { "appClipHeaderImages" }

                public init(id: String) {
                    self.id = id
                }
            }

            /**
             # AppClipDefaultExperienceLocalization.Relationships.AppClipHeaderImage.Links
             The links to the related App Clip Header Images resource and the relationship’s self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appclipdefaultexperiencelocalization/relationships/appclipheaderimage/links>
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
