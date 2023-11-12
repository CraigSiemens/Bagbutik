import Bagbutik_Core
import Foundation

/**
 # AppClipAdvancedExperienceLocalization
 The data structure that represents the Advanced App Clip Localizations resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/appclipadvancedexperiencelocalization>
 */
public struct AppClipAdvancedExperienceLocalization: Identifiable {
    /// The opaque resource ID that uniquely identifies an Advanced App Clip Experience Localizations resource.
    public let id: String
    /// Navigational links that include the self-link.
    public var links: ResourceLinks?
    /// The resource type.
    public var type: String { "appClipAdvancedExperienceLocalizations" }
    /// The attributes that describe the Advanced App Clip Experience Localizations resource.
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
     # AppClipAdvancedExperienceLocalization.Attributes
     The attributes that describe an Advanced App Clip Experience Localizations resource.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/appclipadvancedexperiencelocalization/attributes>
     */
    public struct Attributes {
        /// A string that identifies the language of the advanced App Clip experience.
        public var language: AppClipAdvancedExperienceLanguage?
        /// The subtitle that appears on the App Clip card for the advanced App Clip experience.
        public var subtitle: String?
        /// The title that appears on the App Clip card for the advanced App Clip experience.
        public var title: String?

        public init(language: AppClipAdvancedExperienceLanguage? = nil,
                    subtitle: String? = nil,
                    title: String? = nil)
        {
            self.language = language
            self.subtitle = subtitle
            self.title = title
        }
    }
}
