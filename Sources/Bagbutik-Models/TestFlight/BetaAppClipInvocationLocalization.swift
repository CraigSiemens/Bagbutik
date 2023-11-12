import Bagbutik_Core
import Foundation

/**
 # BetaAppClipInvocationLocalization
 The data structure that represents a Beta App Clip Invocation Localizations resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/betaappclipinvocationlocalization>
 */
public struct BetaAppClipInvocationLocalization: Identifiable {
    /// The opaque resource ID that uniquely identifies a Beta App Clip Invocation Localization.
    public let id: String
    /// Navigational links that include the self-link.
    public var links: ResourceLinks?
    /// The resource type.
    public var type: String { "betaAppClipInvocationLocalizations" }
    /// The attributes that describe the Beta App Clip Invocation Localizations resource.
    public var attributes: Attributes?

    public init(id: String,
                links: ResourceLinks? = nil,
                attributes: Attributes? = nil)
    {
        self.id = id
        self.links = links
        self.attributes = attributes
    }

    /**
     # BetaAppClipInvocationLocalization.Attributes
     The attributes that describe a Beta App Clip Invocation Localizations resource.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/betaappclipinvocationlocalization/attributes>
     */
    public struct Attributes {
        /// The specified locale. Refer to ``BetaAppLocalizationCreateRequest/Data/Attributes`` for possible values.
        public var locale: String?
        /// The title that appears on the App Clip card for an App Clip experience you configure for testers who launch the App Clip using the TestFlight app.
        public var title: String?

        public init(locale: String? = nil,
                    title: String? = nil)
        {
            self.locale = locale
            self.title = title
        }
    }
}
