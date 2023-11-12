import Bagbutik_Core
import Foundation

/**
 # Profile
 The data structure that represents a Profiles  resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/profile>
 */
public struct Profile: Identifiable {
    /// The opaque resource ID that uniquely identifies the resource
    public let id: String
    /// Navigational links that include the self-link.
    public var links: ResourceLinks?
    /// The resource type.
    public var type: String { "profiles" }
    /// The resource's attributes.
    public var attributes: Attributes?
    /// Navigational links to related data and included resource types and IDs.
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
     # Profile.Attributes
     Attributes that describe a Profiles resource.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/profile/attributes>
     */
    public struct Attributes {
        public var createdDate: Date?
        public var expirationDate: Date?
        public var name: String?
        public var platform: BundleIdPlatform?
        public var profileContent: String?
        public var profileState: ProfileState?
        public var profileType: ProfileType?
        public var uuid: String?

        public init(createdDate: Date? = nil,
                    expirationDate: Date? = nil,
                    name: String? = nil,
                    platform: BundleIdPlatform? = nil,
                    profileContent: String? = nil,
                    profileState: ProfileState? = nil,
                    profileType: ProfileType? = nil,
                    uuid: String? = nil)
        {
            self.createdDate = createdDate
            self.expirationDate = expirationDate
            self.name = name
            self.platform = platform
            self.profileContent = profileContent
            self.profileState = profileState
            self.profileType = profileType
            self.uuid = uuid
        }

        public enum ProfileState: String {
            case active = "ACTIVE"
            case invalid = "INVALID"
        }

        public enum ProfileType: String {
            case iOSAppDevelopment = "IOS_APP_DEVELOPMENT"
            case iOSAppStore = "IOS_APP_STORE"
            case iOSAppAdhoc = "IOS_APP_ADHOC"
            case iOSAppInhouse = "IOS_APP_INHOUSE"
            case macAppDevelopment = "MAC_APP_DEVELOPMENT"
            case macAppStore = "MAC_APP_STORE"
            case macAppDirect = "MAC_APP_DIRECT"
            case tvOSAppDevelopment = "TVOS_APP_DEVELOPMENT"
            case tvOSAppStore = "TVOS_APP_STORE"
            case tvOSAppAdhoc = "TVOS_APP_ADHOC"
            case tvOSAppInhouse = "TVOS_APP_INHOUSE"
            case macCatalystAppDevelopment = "MAC_CATALYST_APP_DEVELOPMENT"
            case macCatalystAppStore = "MAC_CATALYST_APP_STORE"
            case macCatalystAppDirect = "MAC_CATALYST_APP_DIRECT"
        }
    }

    /**
     # Profile.Relationships
     The relationships you included in the request and those on which you can operate.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/profile/relationships>
     */
    public struct Relationships {
        public var bundleId: BundleId?
        public var certificates: Certificates?
        public var devices: Devices?

        public init(bundleId: BundleId? = nil,
                    certificates: Certificates? = nil,
                    devices: Devices? = nil)
        {
            self.bundleId = bundleId
            self.certificates = certificates
            self.devices = devices
        }

        /**
         # Profile.Relationships.BundleId
         The data and links that describe the relationship between the resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/profile/relationships/bundleid>
         */
        public struct BundleId {
            @NullCodable public var data: Data?
            public var links: Links?

            public init(data: Data? = nil,
                        links: Links? = nil)
            {
                self.data = data
                self.links = links
            }

            /**
             # Profile.Relationships.BundleId.Data
             The type and ID of a related resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/profile/relationships/bundleid/data>
             */
            public struct Data: Identifiable {
                public let id: String
                public var type: String { "bundleIds" }

                public init(id: String) {
                    self.id = id
                }
            }

            /**
             # Profile.Relationships.BundleId.Links
             The links to the related data and the relationship's self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/profile/relationships/bundleid/links>
             */
            public struct Links {
                public var related: String?
                public var itself: String?

                public init(related: String? = nil,
                            self itself: String? = nil)
                {
                    self.related = related
                    self.itself = itself
                }
            }
        }

        /**
         # Profile.Relationships.Certificates
         The data and links that describe the relationship between the resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/profile/relationships/certificates>
         */
        public struct Certificates {
            @NullCodable public var data: [Data]?
            public var links: Links?
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
             # Profile.Relationships.Certificates.Data
             The type and ID of a related resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/profile/relationships/certificates/data>
             */
            public struct Data: Identifiable {
                public let id: String
                public var type: String { "certificates" }

                public init(id: String) {
                    self.id = id
                }
            }

            /**
             # Profile.Relationships.Certificates.Links
             The links to the related data and the relationship's self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/profile/relationships/certificates/links>
             */
            public struct Links {
                public var related: String?
                public var itself: String?

                public init(related: String? = nil,
                            self itself: String? = nil)
                {
                    self.related = related
                    self.itself = itself
                }
            }
        }

        /**
         # Profile.Relationships.Devices
         The data and links that describe the relationship between the resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/profile/relationships/devices>
         */
        public struct Devices {
            @NullCodable public var data: [Data]?
            public var links: Links?
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
             # Profile.Relationships.Devices.Data
             The type and ID of a related resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/profile/relationships/devices/data>
             */
            public struct Data: Identifiable {
                public let id: String
                public var type: String { "devices" }

                public init(id: String) {
                    self.id = id
                }
            }

            /**
             # Profile.Relationships.Devices.Links
             The links to the related data and the relationship's self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/profile/relationships/devices/links>
             */
            public struct Links {
                public var related: String?
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
