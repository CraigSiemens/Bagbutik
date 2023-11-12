import Bagbutik_Core
import Foundation

/**
 # BetaAppClipInvocationCreateRequest
 The request body you use to create an App Clip invocation for testers.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/betaappclipinvocationcreaterequest>
 */
public struct BetaAppClipInvocationCreateRequest: RequestBody {
    /// The resource data.
    public let data: Data
    /// The relationship data to include in the response.
    public var included: [BetaAppClipInvocationLocalizationInlineCreate]?

    public init(data: Data,
                included: [BetaAppClipInvocationLocalizationInlineCreate]? = nil)
    {
        self.data = data
        self.included = included
    }

    /**
     # BetaAppClipInvocationCreateRequest.Data
     The data element of the request body.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/betaappclipinvocationcreaterequest/data>
     */
    public struct Data {
        /// The resource type.
        public var type: String { "betaAppClipInvocations" }
        /// The attributes that describes the request that creates a Beta App Clip Invocations resource.
        public let attributes: Attributes
        /// The navigational links to related data and included resource types and IDs.
        public let relationships: Relationships

        public init(attributes: Attributes,
                    relationships: Relationships)
        {
            self.attributes = attributes
            self.relationships = relationships
        }

        /**
         # BetaAppClipInvocationCreateRequest.Data.Attributes
         The attributes you set that describe the new Beta App Clip Invocations resource.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/betaappclipinvocationcreaterequest/data/attributes>
         */
        public struct Attributes {
            /// The invocation URL you configure for testers who use the TestFlight to launch your App Clip.
            public let url: String

            public init(url: String) {
                self.url = url
            }
        }

        /**
         # BetaAppClipInvocationCreateRequest.Data.Relationships
         The relationships to other resources that you can set with this request.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/betaappclipinvocationcreaterequest/data/relationships>
         */
        public struct Relationships {
            /// The related Beta App Clip Invocation Localizations resource.
            public let betaAppClipInvocationLocalizations: BetaAppClipInvocationLocalizations
            /// The related Build Bundles resource.
            public let buildBundle: BuildBundle

            public init(betaAppClipInvocationLocalizations: BetaAppClipInvocationLocalizations,
                        buildBundle: BuildBundle)
            {
                self.betaAppClipInvocationLocalizations = betaAppClipInvocationLocalizations
                self.buildBundle = buildBundle
            }

            /**
             # BetaAppClipInvocationCreateRequest.Data.Relationships.BetaAppClipInvocationLocalizations
             The relationship to the Beta App Clip Invocation Localizations resource you set with the request that creates a Beta App Clip Invocations resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/betaappclipinvocationcreaterequest/data/relationships/betaappclipinvocationlocalizations>
             */
            public struct BetaAppClipInvocationLocalizations {
                /// The ID and type of the related Beta App Clip Invocation Localizations resource.
                public let data: [Data]

                public init(data: [Data]) {
                    self.data = data
                }

                /**
                 # BetaAppClipInvocationCreateRequest.Data.Relationships.BetaAppClipInvocationLocalizations.Data
                 The type and ID of the Beta App Clip Invocation Localizations resource that you’re relating with the Beta App Clip Invocations resource you’re creating.

                 Full documentation:
                 <https://developer.apple.com/documentation/appstoreconnectapi/betaappclipinvocationcreaterequest/data/relationships/betaappclipinvocationlocalizations/data>
                 */
                public struct Data: Identifiable {
                    /// The opaque resource ID that uniquely identifies the related Beta App Clip Invocation Localizations resource.
                    public let id: String
                    /// The resource type.
                    public var type: String { "betaAppClipInvocationLocalizations" }

                    public init(id: String) {
                        self.id = id
                    }
                }
            }

            /**
             # BetaAppClipInvocationCreateRequest.Data.Relationships.BuildBundle
             The relationship to the Build Bundles resource you set with the request that creates a Beta App Clip Invocations resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/betaappclipinvocationcreaterequest/data/relationships/buildbundle>
             */
            public struct BuildBundle {
                /// The ID and type of the related Build Bundles resource.
                public let data: Data

                public init(data: Data) {
                    self.data = data
                }

                /**
                 # BetaAppClipInvocationCreateRequest.Data.Relationships.BuildBundle.Data
                 The type and ID of the Build Bundles resource that you’re relating with the Beta App Clip Invocations resource you’re creating.

                 Full documentation:
                 <https://developer.apple.com/documentation/appstoreconnectapi/betaappclipinvocationcreaterequest/data/relationships/buildbundle/data>
                 */
                public struct Data: Identifiable {
                    /// The opaque resource ID that uniquely identifies the related Build Bundles resource.
                    public let id: String
                    /// The resource type.
                    public var type: String { "buildBundles" }

                    public init(id: String) {
                        self.id = id
                    }
                }
            }
        }
    }
}
