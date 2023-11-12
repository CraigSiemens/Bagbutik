import Bagbutik_Core
import Foundation

/**
 # Build
 The data structure that represents a Builds resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/build>
 */
public struct Build: Identifiable {
    /// The opaque resource ID that uniquely identifies the resource.
    public let id: String
    /// Navigational links that include the self-link.
    public var links: ResourceLinks?
    /// The resource type.
    public var type: String { "builds" }
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
     # Build.Attributes
     Attributes that describe a Builds resource.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/build/attributes>
     */
    public struct Attributes {
        public var buildAudienceType: BuildAudienceType?
        public var computedMinMacOsVersion: String?
        /// The date and time the build  will auto-expire and no longer be available for testing.
        public var expirationDate: Date?
        /// A Boolean value that indicates if the build has expired. An expired build is unavailable for testing.
        public var expired: Bool?
        /// The icon of the uploaded build.
        public var iconAssetToken: ImageAsset?
        public var lsMinimumSystemVersion: String?
        /// The minimum operating system version needed to test a build.
        public var minOsVersion: String?
        /// The processing state of the build indicating that it is not yet available for testing.
        public var processingState: ProcessingState?
        /// The date and time the build was uploaded to App Store Connect.
        public var uploadedDate: Date?
        /// A Boolean value that indicates whether the build uses non-exempt encryption.
        public var usesNonExemptEncryption: Bool?
        /// The version number of the uploaded build.
        public var version: String?

        public init(buildAudienceType: BuildAudienceType? = nil,
                    computedMinMacOsVersion: String? = nil,
                    expirationDate: Date? = nil,
                    expired: Bool? = nil,
                    iconAssetToken: ImageAsset? = nil,
                    lsMinimumSystemVersion: String? = nil,
                    minOsVersion: String? = nil,
                    processingState: ProcessingState? = nil,
                    uploadedDate: Date? = nil,
                    usesNonExemptEncryption: Bool? = nil,
                    version: String? = nil)
        {
            self.buildAudienceType = buildAudienceType
            self.computedMinMacOsVersion = computedMinMacOsVersion
            self.expirationDate = expirationDate
            self.expired = expired
            self.iconAssetToken = iconAssetToken
            self.lsMinimumSystemVersion = lsMinimumSystemVersion
            self.minOsVersion = minOsVersion
            self.processingState = processingState
            self.uploadedDate = uploadedDate
            self.usesNonExemptEncryption = usesNonExemptEncryption
            self.version = version
        }

        public enum ProcessingState: String {
            case processing = "PROCESSING"
            case failed = "FAILED"
            case invalid = "INVALID"
            case valid = "VALID"
        }
    }

    /**
     # Build.Relationships
     The relationships you included in the request and those on which you can operate.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/build/relationships>
     */
    public struct Relationships {
        public var app: App?
        public var appEncryptionDeclaration: AppEncryptionDeclaration?
        public var appStoreVersion: AppStoreVersion?
        public var betaAppReviewSubmission: BetaAppReviewSubmission?
        public var betaBuildLocalizations: BetaBuildLocalizations?
        public var betaGroups: BetaGroups?
        public var buildBetaDetail: BuildBetaDetail?
        /// The related Build Bundles resource.
        public var buildBundles: BuildBundles?
        public var icons: Icons?
        public var individualTesters: IndividualTesters?
        public var preReleaseVersion: PreReleaseVersion?

        public init(app: App? = nil,
                    appEncryptionDeclaration: AppEncryptionDeclaration? = nil,
                    appStoreVersion: AppStoreVersion? = nil,
                    betaAppReviewSubmission: BetaAppReviewSubmission? = nil,
                    betaBuildLocalizations: BetaBuildLocalizations? = nil,
                    betaGroups: BetaGroups? = nil,
                    buildBetaDetail: BuildBetaDetail? = nil,
                    buildBundles: BuildBundles? = nil,
                    icons: Icons? = nil,
                    individualTesters: IndividualTesters? = nil,
                    preReleaseVersion: PreReleaseVersion? = nil)
        {
            self.app = app
            self.appEncryptionDeclaration = appEncryptionDeclaration
            self.appStoreVersion = appStoreVersion
            self.betaAppReviewSubmission = betaAppReviewSubmission
            self.betaBuildLocalizations = betaBuildLocalizations
            self.betaGroups = betaGroups
            self.buildBetaDetail = buildBetaDetail
            self.buildBundles = buildBundles
            self.icons = icons
            self.individualTesters = individualTesters
            self.preReleaseVersion = preReleaseVersion
        }

        /**
         # Build.Relationships.App
         The data and links that describe the relationship between the resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/build/relationships/app>
         */
        public struct App {
            @NullCodable public var data: Data?
            public var links: Links?

            public init(data: Data? = nil,
                        links: Links? = nil)
            {
                self.data = data
                self.links = links
            }

            /**
             # Build.Relationships.App.Data
             The type and ID of a related resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/build/relationships/app/data>
             */
            public struct Data: Identifiable {
                /// The opaque resource ID that uniquely identifies the resource.
                public let id: String
                /// The resource type.
                public var type: String { "apps" }

                public init(id: String) {
                    self.id = id
                }
            }

            /**
             # Build.Relationships.App.Links
             The links to the related data and the relationship's self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/build/relationships/app/links>
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
         # Build.Relationships.AppEncryptionDeclaration
         The data and links that describe the relationship between the resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/build/relationships/appencryptiondeclaration>
         */
        public struct AppEncryptionDeclaration {
            @NullCodable public var data: Data?
            public var links: Links?

            public init(data: Data? = nil,
                        links: Links? = nil)
            {
                self.data = data
                self.links = links
            }

            /**
             # Build.Relationships.AppEncryptionDeclaration.Data
             The type and ID of a related resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/build/relationships/appencryptiondeclaration/data>
             */
            public struct Data: Identifiable {
                /// The opaque resource ID that uniquely identifies the resource.
                public let id: String
                /// The resource type.
                public var type: String { "appEncryptionDeclarations" }

                public init(id: String) {
                    self.id = id
                }
            }

            /**
             # Build.Relationships.AppEncryptionDeclaration.Links
             The links to the related data and the relationship's self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/build/relationships/appencryptiondeclaration/links>
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
         # Build.Relationships.AppStoreVersion
         The data and links that describe the relationship between the resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/build/relationships/appstoreversion>
         */
        public struct AppStoreVersion {
            @NullCodable public var data: Data?
            public var links: Links?

            public init(data: Data? = nil,
                        links: Links? = nil)
            {
                self.data = data
                self.links = links
            }

            /**
             # Build.Relationships.AppStoreVersion.Data
             The type and ID of a related resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/build/relationships/appstoreversion/data>
             */
            public struct Data: Identifiable {
                public let id: String
                public var type: String { "appStoreVersions" }

                public init(id: String) {
                    self.id = id
                }
            }

            /**
             # Build.Relationships.AppStoreVersion.Links
             The links to the related data and the relationship's self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/build/relationships/appstoreversion/links>
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
         # Build.Relationships.BetaAppReviewSubmission
         The data and links that describe the relationship between the resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/build/relationships/betaappreviewsubmission>
         */
        public struct BetaAppReviewSubmission {
            @NullCodable public var data: Data?
            public var links: Links?

            public init(data: Data? = nil,
                        links: Links? = nil)
            {
                self.data = data
                self.links = links
            }

            /**
             # Build.Relationships.BetaAppReviewSubmission.Data
             The type and ID of a related resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/build/relationships/betaappreviewsubmission/data>
             */
            public struct Data: Identifiable {
                /// The opaque resource ID that uniquely identifies the resource.
                public let id: String
                /// The resource type.
                public var type: String { "betaAppReviewSubmissions" }

                public init(id: String) {
                    self.id = id
                }
            }

            /**
             # Build.Relationships.BetaAppReviewSubmission.Links
             The links to the related data and the relationship's self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/build/relationships/betaappreviewsubmission/links>
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
         # Build.Relationships.BetaBuildLocalizations
         The data and links that describe the relationship between the resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/build/relationships/betabuildlocalizations>
         */
        public struct BetaBuildLocalizations {
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
             # Build.Relationships.BetaBuildLocalizations.Data
             The type and ID of a related resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/build/relationships/betabuildlocalizations/data>
             */
            public struct Data: Identifiable {
                /// The opaque resource ID that uniquely identifies the resource.
                public let id: String
                /// The resource type.
                public var type: String { "betaBuildLocalizations" }

                public init(id: String) {
                    self.id = id
                }
            }

            /**
             # Build.Relationships.BetaBuildLocalizations.Links
             The links to the related data and the relationship's self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/build/relationships/betabuildlocalizations/links>
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
         # Build.Relationships.BetaGroups
         The data and links that describe the relationship between the resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/build/relationships/betagroups>
         */
        public struct BetaGroups {
            @NullCodable public var data: [Data]?
            public var links: Links?
            /// Paging information.
            public var meta: PagingInformation?

            public init(data: [Data]? = nil,
                        links: Links? = nil,
                        meta: PagingInformation? = nil)
            {
                self.data = data
                self.links = links
                self.meta = meta
            }

            public struct Data: Identifiable {
                public let id: String
                public var type: String { "betaGroups" }

                public init(id: String) {
                    self.id = id
                }
            }

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
         # Build.Relationships.BuildBetaDetail
         The data and links that describe the relationship between the resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/build/relationships/buildbetadetail>
         */
        public struct BuildBetaDetail {
            @NullCodable public var data: Data?
            public var links: Links?

            public init(data: Data? = nil,
                        links: Links? = nil)
            {
                self.data = data
                self.links = links
            }

            /**
             # Build.Relationships.BuildBetaDetail.Data
             The type and ID of a related resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/build/relationships/buildbetadetail/data>
             */
            public struct Data: Identifiable {
                /// The opaque resource ID that uniquely identifies the resource.
                public let id: String
                /// The resource type.
                public var type: String { "buildBetaDetails" }

                public init(id: String) {
                    self.id = id
                }
            }

            /**
             # Build.Relationships.BuildBetaDetail.Links
             The links to the related data and the relationship's self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/build/relationships/buildbetadetail/links>
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
         # Build.Relationships.BuildBundles
         The data, links, and paging information that describe the relationship between the Builds and the Build Bundles resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/build/relationships/buildbundles>
         */
        public struct BuildBundles {
            /// The ID and type of the related Build Bundles resource.
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
             # Build.Relationships.BuildBundles.Data
             The type and ID of a related Build Bundles resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/build/relationships/buildbundles/data>
             */
            public struct Data: Identifiable {
                /// The opaque resource ID that uniquely identifies the related Build Bundles resource.
                public let id: String
                /// The resource type.
                public var type: String { "buildBundles" }

                public init(id: String) {
                    self.id = id
                }
            }

            /**
             # Build.Relationships.BuildBundles.Links
             The links to the related Build Bundles resource and the relationship’s self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/build/relationships/buildbundles/links>
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

        /**
         # Build.Relationships.Icons
         The data and links that describe the relationship between the resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/build/relationships/icons>
         */
        public struct Icons {
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
             # Build.Relationships.Icons.Data
             The type and ID of a related resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/build/relationships/icons/data>
             */
            public struct Data: Identifiable {
                public let id: String
                public var type: String { "buildIcons" }

                public init(id: String) {
                    self.id = id
                }
            }

            /**
             # Build.Relationships.Icons.Links
             The links to the related data and the relationship's self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/build/relationships/icons/links>
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
         # Build.Relationships.IndividualTesters
         The data and links that describe the relationship between the resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/build/relationships/individualtesters>
         */
        public struct IndividualTesters {
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
             # Build.Relationships.IndividualTesters.Data
             The type and ID of a related resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/build/relationships/individualtesters/data>
             */
            public struct Data: Identifiable {
                /// The opaque resource ID that uniquely identifies the resource.
                public let id: String
                /// The resource type.
                public var type: String { "betaTesters" }

                public init(id: String) {
                    self.id = id
                }
            }

            /**
             # Build.Relationships.IndividualTesters.Links
             The links to the related data and the relationship's self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/build/relationships/individualtesters/links>
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
         # Build.Relationships.PreReleaseVersion
         The data and links that describe the relationship between the resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/build/relationships/prereleaseversion>
         */
        public struct PreReleaseVersion {
            @NullCodable public var data: Data?
            public var links: Links?

            public init(data: Data? = nil,
                        links: Links? = nil)
            {
                self.data = data
                self.links = links
            }

            /**
             # Build.Relationships.PreReleaseVersion.Data
             The type and ID of a related resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/build/relationships/prereleaseversion/data>
             */
            public struct Data: Identifiable {
                /// The opaque resource ID that uniquely identifies the resource.
                public let id: String
                /// The resource type.
                public var type: String { "preReleaseVersions" }

                public init(id: String) {
                    self.id = id
                }
            }

            /**
             # Build.Relationships.PreReleaseVersion.Links
             The links to the related data and the relationship's self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/build/relationships/prereleaseversion/links>
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
