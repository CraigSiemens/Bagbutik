import Bagbutik_Core
import Foundation

/**
 # BetaAppClipInvocationLocalizationInlineCreate
 The data structure that represents a Beta App Clip Invocation Localization Inline Creates resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/betaappclipinvocationlocalizationinlinecreate>
 */
public struct BetaAppClipInvocationLocalizationInlineCreate: Identifiable {
    /// The opaque resource ID that uniquely identifies a Beta App Clip Invocation Localization Inline Create resource.
    public var id: String?
    /// The resource type.
    public var type: String { "betaAppClipInvocationLocalizations" }
    /// The attributes that describe the Beta App Clip Invocation Localization Inline Creates resource.
    public let attributes: Attributes
    /// The navigational links to related data and included resource types and IDs.
    public var relationships: Relationships?

    public init(id: String? = nil,
                attributes: Attributes,
                relationships: Relationships? = nil)
    {
        self.id = id
        self.attributes = attributes
        self.relationships = relationships
    }

    /**
     # BetaAppClipInvocationLocalizationInlineCreate.Attributes
     The attributes that describe a Beta App Clip Invocation Localization Inline Creates resource.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/betaappclipinvocationlocalizationinlinecreate/attributes>
     */
    public struct Attributes {
        /// The specified locale. Refer to ``BetaAppLocalizationCreateRequest/Data/Attributes`` for possible values.
        public let locale: String
        /// The title that appears on the App Clip card for an App Clip experience you configure for testers who launch the App Clip using the TestFlight app.
        public let title: String

        public init(locale: String,
                    title: String)
        {
            self.locale = locale
            self.title = title
        }
    }

    /**
     # BetaAppClipInvocationLocalizationInlineCreate.Relationships
     The relationships to other resources that you can set when you create a new Beta App Clip Invocation Localization Inline Creates resource.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/betaappclipinvocationlocalizationinlinecreate/relationships>
     */
    public struct Relationships {
        /// The related Beta App Clip Invocations resource.
        public var betaAppClipInvocation: BetaAppClipInvocation?

        public init(betaAppClipInvocation: BetaAppClipInvocation? = nil) {
            self.betaAppClipInvocation = betaAppClipInvocation
        }

        /**
         # BetaAppClipInvocationLocalizationInlineCreate.Relationships.BetaAppClipInvocation
         The relationship to the Beta App Clip Invocations resource you can set when you create a Beta App Clip Invocation Localizations resource.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/betaappclipinvocationlocalizationinlinecreate/relationships/betaappclipinvocation>
         */
        public struct BetaAppClipInvocation {
            /// The ID and type of the related Beta App Clip Invocations resource.
            @NullCodable public var data: Data?

            public init(data: Data? = nil) {
                self.data = data
            }

            /**
             # BetaAppClipInvocationLocalizationInlineCreate.Relationships.BetaAppClipInvocation.Data
             The type and ID of the Beta App Clip Invocations resource that you’re relating with the Beta App Clip Invocation Localizations resource you’re creating.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/betaappclipinvocationlocalizationinlinecreate/relationships/betaappclipinvocation/data>
             */
            public struct Data: Identifiable {
                /// The opaque resource ID that uniquely identifies the related Beta App Clip Invocations resource.
                public let id: String
                /// The resource type.
                public var type: String { "betaAppClipInvocations" }

                public init(id: String) {
                    self.id = id
                }
            }
        }
    }
}
