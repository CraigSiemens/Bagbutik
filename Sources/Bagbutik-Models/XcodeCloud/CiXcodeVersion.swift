import Bagbutik_Core
import Foundation

/**
 # CiXcodeVersion
 The data structure that represents an Xcode Versions resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/cixcodeversion>
 */
public struct CiXcodeVersion: Identifiable {
    /// The opaque resource ID that uniquely identifies an Xcode Versions resource.
    public let id: String
    /// The navigational links that include the self-link.
    public var links: ResourceLinks?
    /// The resource type.
    public var type: String { "ciXcodeVersions" }
    /// The attributes that describe the Xcode Versions resource.
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
     # CiXcodeVersion.Attributes
     The attributes that describe an Xcode Versions resource.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/cixcodeversion/attributes>
     */
    public struct Attributes {
        /// The name of the Xcode version.
        public var name: String?
        /// A list of the Xcode version’s available test destinations.
        public var testDestinations: [TestDestinations]?
        /// The Xcode version.
        public var version: String?

        public init(name: String? = nil,
                    testDestinations: [TestDestinations]? = nil,
                    version: String? = nil)
        {
            self.name = name
            self.testDestinations = testDestinations
            self.version = version
        }

        /**
         # CiXcodeVersion.Attributes.TestDestinations
         The test destinations available for an Xcode version.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/cixcodeversion/attributes/testdestinations>
         */
        public struct TestDestinations {
            /// A list of runtimes available for the Xcode version.
            public var availableRuntimes: [AvailableRuntimes]?
            /// A string that uniquely identifies the simulated device Xcode Cloud uses for a test action; for example, `com.apple.CoreSimulator.SimDeviceType.iPhone-12`.
            public var deviceTypeIdentifier: String?
            /// The display name of the simulated device Xcode Cloud uses for a test action; for example, `iPhone 12`.
            public var deviceTypeName: String?
            /// A string that indicates whether a test destination is a simulated device or a Mac.
            public var kind: CiTestDestinationKind?

            public init(availableRuntimes: [AvailableRuntimes]? = nil,
                        deviceTypeIdentifier: String? = nil,
                        deviceTypeName: String? = nil,
                        kind: CiTestDestinationKind? = nil)
            {
                self.availableRuntimes = availableRuntimes
                self.deviceTypeIdentifier = deviceTypeIdentifier
                self.deviceTypeName = deviceTypeName
                self.kind = kind
            }

            /**
             # CiXcodeVersion.Attributes.TestDestinations.AvailableRuntimes
             The data structure that represents the available runtimes for test destinations of an Xcode Versions resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/cixcodeversion/attributes/testdestinations/availableruntimes>
             */
            public struct AvailableRuntimes {
                /// A string that identifies the simulated environment Xcode Cloud uses for a test action.
                public var runtimeIdentifier: String?
                /// The name of the operating system of the simulated environment Xcode Cloud uses.
                public var runtimeName: String?

                public init(runtimeIdentifier: String? = nil,
                            runtimeName: String? = nil)
                {
                    self.runtimeIdentifier = runtimeIdentifier
                    self.runtimeName = runtimeName
                }
            }
        }
    }

    /**
     # CiXcodeVersion.Relationships
     The relationships of the Xcode Versions resource you included in the request and those on which you can operate.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/cixcodeversion/relationships>
     */
    public struct Relationships {
        /// The related macOS Versions resource.
        public var macOsVersions: MacOsVersions?

        public init(macOsVersions: MacOsVersions? = nil) {
            self.macOsVersions = macOsVersions
        }

        /**
         # CiXcodeVersion.Relationships.MacOsVersions
         The data, links, and paging information that describe the relationship between the Xcode Versions and the macOS Versions resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/cixcodeversion/relationships/macosversions>
         */
        public struct MacOsVersions {
            /// The ID and type of the related macOS Versions resource.
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
             # CiXcodeVersion.Relationships.MacOsVersions.Data
             The type and ID of a related macOS Versions resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/cixcodeversion/relationships/macosversions/data>
             */
            public struct Data: Identifiable {
                /// The opaque resource ID that uniquely identifies the related macOS Versions resource.
                public let id: String
                /// The resource type.
                public var type: String { "ciMacOsVersions" }

                public init(id: String) {
                    self.id = id
                }
            }

            /**
             # CiXcodeVersion.Relationships.MacOsVersions.Links
             The links to the related macOS Versions resources and the relationship’s self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/cixcodeversion/relationships/macosversions/links>
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
