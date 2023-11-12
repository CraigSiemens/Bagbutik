import Bagbutik_Core
import Foundation

/**
 # BetaBuildLocalizationCreateRequest
 The request body you use to create a Beta Build Localization.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/betabuildlocalizationcreaterequest>
 */
public struct BetaBuildLocalizationCreateRequest: RequestBody {
    /// The resource data.
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    /**
     # BetaBuildLocalizationCreateRequest.Data
     The data element of the request body.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/betabuildlocalizationcreaterequest/data>
     */
    public struct Data {
        /// The resource type.
        public var type: String { "betaBuildLocalizations" }
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
         # BetaBuildLocalizationCreateRequest.Data.Attributes
         Attributes that you set that describe the new resource.

         Table 1 lists allowed locale values.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/betabuildlocalizationcreaterequest/data/attributes>
         */
        public struct Attributes {
            /// The specified locale. Refer to [Table 1](https://developer.apple.com/documentation/appstoreconnectapi/prerelease_versions_and_beta_testers/beta_build_localizations/betabuildlocalizationcreaterequest/data/attributes#3073798) for possible values.
            public let locale: String
            /// A field that describes changes and additions to a build and indicates features you would like your users to test.
            public var whatsNew: String?

            public init(locale: String,
                        whatsNew: String? = nil)
            {
                self.locale = locale
                self.whatsNew = whatsNew
            }
        }

        /**
         # BetaBuildLocalizationCreateRequest.Data.Relationships
         The relationships to other resources that you can set with this request.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/betabuildlocalizationcreaterequest/data/relationships>
         */
        public struct Relationships {
            public let build: Build

            public init(build: Build) {
                self.build = build
            }

            /**
             # BetaBuildLocalizationCreateRequest.Data.Relationships.Build
             The relationships to other resources that you can set with this request.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/betabuildlocalizationcreaterequest/data/relationships/build>
             */
            public struct Build {
                public let data: Data

                public init(data: Data) {
                    self.data = data
                }

                /**
                 # BetaBuildLocalizationCreateRequest.Data.Relationships.Build.Data
                 The type and ID of the resource that you're relating with the resource you're creating.

                 Full documentation:
                 <https://developer.apple.com/documentation/appstoreconnectapi/betabuildlocalizationcreaterequest/data/relationships/build/data>
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
