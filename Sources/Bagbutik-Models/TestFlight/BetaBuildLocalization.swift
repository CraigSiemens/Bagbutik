import Bagbutik_Core
import Foundation

/**
 # BetaBuildLocalization
 The data structure that represents a Beta Build Localizations resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/betabuildlocalization>
 */
public struct BetaBuildLocalization: Identifiable {
    /// The opaque resource ID that uniquely identifies the resource.
    public let id: String
    /// Navigational links that include the self-link.
    public var links: ResourceLinks?
    /// The resource type.
    public var type: String { "betaBuildLocalizations" }
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
     # BetaBuildLocalization.Attributes
     Attributes that describe a Beta Build Localizations resource.

     Table 1 lists allowed locale values.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/betabuildlocalization/attributes>
     */
    public struct Attributes {
        /// The specified locale. Refer to [Table 1](https://developer.apple.com/documentation/appstoreconnectapi/prerelease_versions_and_beta_testers/beta_build_localizations/betabuildlocalization/attributes#3042206) for possible values.
        public var locale: String?
        /// A field that describes changes and additions to a build and indicates features you would like your users to test.
        public var whatsNew: String?

        public init(locale: String? = nil,
                    whatsNew: String? = nil)
        {
            self.locale = locale
            self.whatsNew = whatsNew
        }
    }

    /**
     # BetaBuildLocalization.Relationships
     The relationships you included in the request and those on which you can operate.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/betabuildlocalization/relationships>
     */
    public struct Relationships {
        public var build: Build?

        public init(build: Build? = nil) {
            self.build = build
        }

        /**
         # BetaBuildLocalization.Relationships.Build
         The data and links that describe the relationship between the resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/betabuildlocalization/relationships/build>
         */
        public struct Build {
            @NullCodable public var data: Data?
            public var links: Links?

            public init(data: Data? = nil,
                        links: Links? = nil)
            {
                self.data = data
                self.links = links
            }

            /**
             # BetaBuildLocalization.Relationships.Build.Data
             The type and ID of a related resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/betabuildlocalization/relationships/build/data>
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

            /**
             # BetaBuildLocalization.Relationships.Build.Links
             The links to the related data and the relationship's self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/betabuildlocalization/relationships/build/links>
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
