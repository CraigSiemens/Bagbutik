import Bagbutik_Core
import Foundation

/**
 # BetaAppClipInvocation
 The data structure that represents a Beta App Clip Invocations resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/betaappclipinvocation>
 */
public struct BetaAppClipInvocation: Identifiable {
    /// The opaque resource ID that uniquely identifies a Beta App Clip Invocations resource.
    public let id: String
    /// Navigational links that include the self-link.
    public var links: ResourceLinks?
    /// The resource type.
    public var type: String { "betaAppClipInvocations" }
    /// The attributes that describe the Beta App Clip Invocations resource.
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
     # BetaAppClipInvocation.Attributes
     The attributes that describe a Beta App Clip Invocations resource.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/betaappclipinvocation/attributes>
     */
    public struct Attributes {
        /// The invocation URL you configure for testers who use the TestFlight to launch your App Clip.
        public var url: String?

        public init(url: String? = nil) {
            self.url = url
        }
    }

    /**
     # BetaAppClipInvocation.Relationships
     The relationships of the Beta App Clip Invocations resource you included in the request and those on which you can operate.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/betaappclipinvocation/relationships>
     */
    public struct Relationships {
        /// The related Beta App Clip Invocation Localizations resource.
        public var betaAppClipInvocationLocalizations: BetaAppClipInvocationLocalizations?

        public init(betaAppClipInvocationLocalizations: BetaAppClipInvocationLocalizations? = nil) {
            self.betaAppClipInvocationLocalizations = betaAppClipInvocationLocalizations
        }

        /**
         # BetaAppClipInvocation.Relationships.BetaAppClipInvocationLocalizations
         The data, links, and paging information that describe the relationship between the Beta App Clip Invocations and the Beta App Clip Invocation Localizations resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/betaappclipinvocation/relationships/betaappclipinvocationlocalizations>
         */
        public struct BetaAppClipInvocationLocalizations {
            /// The ID and type of the related Beta App Clip Invocation Localizations resource.
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
             # BetaAppClipInvocation.Relationships.BetaAppClipInvocationLocalizations.Data
             The type and ID of a related Beta App Clip Invocation Localizations resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/betaappclipinvocation/relationships/betaappclipinvocationlocalizations/data>
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

            /**
             # BetaAppClipInvocation.Relationships.BetaAppClipInvocationLocalizations.Links
             The links to the related Beta App Clip Invocation Localizations resource and the relationship’s self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/betaappclipinvocation/relationships/betaappclipinvocationlocalizations/links>
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
