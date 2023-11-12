import Bagbutik_Core
import Foundation

/**
 # BuildIcon
 The data structure that represents the Build Icons resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/buildicon>
 */
public struct BuildIcon: Identifiable {
    public let id: String
    public var links: ResourceLinks?
    public var type: String { "buildIcons" }
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
     # BuildIcon.Attributes
     Attributes that describe a Build Icons resource.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/buildicon/attributes>
     */
    public struct Attributes {
        public var iconAsset: ImageAsset?
        public var iconType: IconAssetType?
        public var name: String?

        public init(iconAsset: ImageAsset? = nil,
                    iconType: IconAssetType? = nil,
                    name: String? = nil)
        {
            self.iconAsset = iconAsset
            self.iconType = iconType
            self.name = name
        }
    }
}
