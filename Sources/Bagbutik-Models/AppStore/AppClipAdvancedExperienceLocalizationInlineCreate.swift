import Bagbutik_Core
import Foundation

/**
 # AppClipAdvancedExperienceLocalizationInlineCreate
 The data structure that represents an Advanced App Clip Experience Localization Inline Creates resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/appclipadvancedexperiencelocalizationinlinecreate>
 */
public struct AppClipAdvancedExperienceLocalizationInlineCreate: Identifiable {
    /// The opaque resource ID that uniquely identifies an Advanced App Clip Experience Localization Inline Creates resource.
    public var id: String?
    /// The resource type.
    public var type: String { "appClipAdvancedExperienceLocalizations" }
    /// The attributes that describe the Advanced App Clip Experience Localization Inline Creates resource.
    public var attributes: Attributes?

    public init(id: String? = nil,
                attributes: Attributes? = nil)
    {
        self.id = id
        self.attributes = attributes
    }

    /**
     # AppClipAdvancedExperienceLocalizationInlineCreate.Attributes
     The attributes that describe an Advanced App Clip Experience Localization Inline Creates resource.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/appclipadvancedexperiencelocalizationinlinecreate/attributes>
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
