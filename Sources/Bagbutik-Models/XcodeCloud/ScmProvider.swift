import Bagbutik_Core
import Foundation

/**
 # ScmProvider
 The data structure that represents a Providers resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/scmprovider>
 */
public struct ScmProvider: Identifiable {
    /// The opaque resource ID that uniquely identifies a Providers resource.
    public let id: String
    /// The navigational links that include the self-link.
    public var links: ResourceLinks?
    /// The resource type.
    public var type: String { "scmProviders" }
    /// The attributes that describe the Providers resource.
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
     # ScmProvider.Attributes
     The attributes that describe a Providers resource.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/scmprovider/attributes>
     */
    public struct Attributes {
        /// The source code management provider’s type.
        public var scmProviderType: ScmProviderType?
        /// The URL of the source code management provider.
        public var url: String?

        public init(scmProviderType: ScmProviderType? = nil,
                    url: String? = nil)
        {
            self.scmProviderType = scmProviderType
            self.url = url
        }
    }
}
