import Bagbutik_Core
import Foundation

/**
 # CiMacOsVersion
 The data structure that represents a macOS Versions resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/cimacosversion>
 */
public struct CiMacOsVersion: Identifiable {
    /// The opaque resource ID that uniquely identifies a macOS Versions resource.
    public let id: String
    /// The navigational links that include the self-link.
    public var links: ResourceLinks?
    /// The resource type.
    public var type: String { "ciMacOsVersions" }
    /// The attributes that describe the macOS Versions resource.
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
     # CiMacOsVersion.Attributes
     The attributes that describe a macOS Versions resource.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/cimacosversion/attributes>
     */
    public struct Attributes {
        /// The name of the macOS version.
        public var name: String?
        /// The macOS version of the simulated environment.
        public var version: String?

        public init(name: String? = nil,
                    version: String? = nil)
        {
            self.name = name
            self.version = version
        }
    }

    /**
     # CiMacOsVersion.Relationships
     The relationships of the macOS Versions resource you included in the request and those on which you can operate.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/cimacosversion/relationships>
     */
    public struct Relationships {
        /// The macOS version’s related Xcode version.
        public var xcodeVersions: XcodeVersions?

        public init(xcodeVersions: XcodeVersions? = nil) {
            self.xcodeVersions = xcodeVersions
        }

        /**
         # CiMacOsVersion.Relationships.XcodeVersions
         The data, links, and paging information that describe the relationship between the macOS Versions and Xcode Versions resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/cimacosversion/relationships/xcodeversions>
         */
        public struct XcodeVersions {
            /// The ID and type of the related Xcode Versions resource.
            @NullCodable public var data: [Data]?
            /// The navigational links that include the self-link.
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
             # CiMacOsVersion.Relationships.XcodeVersions.Data
             The type and ID of a related Xcode Versions resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/cimacosversion/relationships/xcodeversions/data>
             */
            public struct Data: Identifiable {
                /// The opaque resource ID that uniquely identifies the related Xcode Versions resource.
                public let id: String
                /// The resource type.
                public var type: String { "ciXcodeVersions" }

                public init(id: String) {
                    self.id = id
                }
            }

            /**
             # CiMacOsVersion.Relationships.XcodeVersions.Links
             The links to the related Xcode Versions resources and the relationship’s self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/cimacosversion/relationships/xcodeversions/links>
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
