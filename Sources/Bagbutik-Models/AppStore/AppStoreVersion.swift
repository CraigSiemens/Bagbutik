import Bagbutik_Core
import Foundation

/**
 # AppStoreVersion
 The data structure that represent an App Store Versions resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/appstoreversion>
 */
public struct AppStoreVersion: Identifiable {
    public let id: String
    public var links: ResourceLinks?
    public var type: String { "appStoreVersions" }
    public var attributes: Attributes?
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
     # AppStoreVersion.Attributes
     Attributes that describe an App Store Versions resource.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/appstoreversion/attributes>
     */
    public struct Attributes {
        public var appStoreState: AppStoreVersionState?
        public var copyright: String?
        public var createdDate: Date?
        public var downloadable: Bool?
        public var earliestReleaseDate: Date?
        public var platform: Platform?
        public var releaseType: ReleaseType?
        public var versionString: String?

        public init(appStoreState: AppStoreVersionState? = nil,
                    copyright: String? = nil,
                    createdDate: Date? = nil,
                    downloadable: Bool? = nil,
                    earliestReleaseDate: Date? = nil,
                    platform: Platform? = nil,
                    releaseType: ReleaseType? = nil,
                    versionString: String? = nil)
        {
            self.appStoreState = appStoreState
            self.copyright = copyright
            self.createdDate = createdDate
            self.downloadable = downloadable
            self.earliestReleaseDate = earliestReleaseDate
            self.platform = platform
            self.releaseType = releaseType
            self.versionString = versionString
        }

        public enum ReleaseType: String {
            case manual = "MANUAL"
            case afterApproval = "AFTER_APPROVAL"
            case scheduled = "SCHEDULED"
        }
    }

    /**
     # AppStoreVersion.Relationships
     The relationships you included in the request and those on which you can operate.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/appstoreversion/relationships>
     */
    public struct Relationships {
        @available(*, deprecated, message: "Apple has marked this property deprecated and it will be removed sometime in the future.")
        public var ageRatingDeclaration: AgeRatingDeclaration? = nil
        public var app: App?
        /// The related Default App Clip Experiences resource.
        public var appClipDefaultExperience: AppClipDefaultExperience?
        public var appStoreReviewDetail: AppStoreReviewDetail?
        public var appStoreVersionExperiments: AppStoreVersionExperiments?
        public var appStoreVersionExperimentsV2: AppStoreVersionExperimentsV2?
        public var appStoreVersionLocalizations: AppStoreVersionLocalizations?
        public var appStoreVersionPhasedRelease: AppStoreVersionPhasedRelease?
        public var appStoreVersionSubmission: AppStoreVersionSubmission?
        public var build: Build?
        public var routingAppCoverage: RoutingAppCoverage?

        @available(*, deprecated, message: "This uses a property Apple has marked as deprecated.")
        public init(ageRatingDeclaration: AgeRatingDeclaration? = nil,
                    app: App? = nil,
                    appClipDefaultExperience: AppClipDefaultExperience? = nil,
                    appStoreReviewDetail: AppStoreReviewDetail? = nil,
                    appStoreVersionExperiments: AppStoreVersionExperiments? = nil,
                    appStoreVersionExperimentsV2: AppStoreVersionExperimentsV2? = nil,
                    appStoreVersionLocalizations: AppStoreVersionLocalizations? = nil,
                    appStoreVersionPhasedRelease: AppStoreVersionPhasedRelease? = nil,
                    appStoreVersionSubmission: AppStoreVersionSubmission? = nil,
                    build: Build? = nil,
                    routingAppCoverage: RoutingAppCoverage? = nil)
        {
            self.ageRatingDeclaration = ageRatingDeclaration
            self.app = app
            self.appClipDefaultExperience = appClipDefaultExperience
            self.appStoreReviewDetail = appStoreReviewDetail
            self.appStoreVersionExperiments = appStoreVersionExperiments
            self.appStoreVersionExperimentsV2 = appStoreVersionExperimentsV2
            self.appStoreVersionLocalizations = appStoreVersionLocalizations
            self.appStoreVersionPhasedRelease = appStoreVersionPhasedRelease
            self.appStoreVersionSubmission = appStoreVersionSubmission
            self.build = build
            self.routingAppCoverage = routingAppCoverage
        }

        public init(app: App? = nil,
                    appClipDefaultExperience: AppClipDefaultExperience? = nil,
                    appStoreReviewDetail: AppStoreReviewDetail? = nil,
                    appStoreVersionExperiments: AppStoreVersionExperiments? = nil,
                    appStoreVersionExperimentsV2: AppStoreVersionExperimentsV2? = nil,
                    appStoreVersionLocalizations: AppStoreVersionLocalizations? = nil,
                    appStoreVersionPhasedRelease: AppStoreVersionPhasedRelease? = nil,
                    appStoreVersionSubmission: AppStoreVersionSubmission? = nil,
                    build: Build? = nil,
                    routingAppCoverage: RoutingAppCoverage? = nil)
        {
            self.app = app
            self.appClipDefaultExperience = appClipDefaultExperience
            self.appStoreReviewDetail = appStoreReviewDetail
            self.appStoreVersionExperiments = appStoreVersionExperiments
            self.appStoreVersionExperimentsV2 = appStoreVersionExperimentsV2
            self.appStoreVersionLocalizations = appStoreVersionLocalizations
            self.appStoreVersionPhasedRelease = appStoreVersionPhasedRelease
            self.appStoreVersionSubmission = appStoreVersionSubmission
            self.build = build
            self.routingAppCoverage = routingAppCoverage
        }

        /**
         # AppStoreVersion.Relationships.AgeRatingDeclaration
         The data and links that describe the relationship between the resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/appstoreversion/relationships/ageratingdeclaration>
         */
        public struct AgeRatingDeclaration {
            @NullCodable public var data: Data?
            public var links: Links?

            public init(data: Data? = nil,
                        links: Links? = nil)
            {
                self.data = data
                self.links = links
            }

            /**
             # AppStoreVersion.Relationships.AgeRatingDeclaration.Data
             The type and ID of a related resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appstoreversion/relationships/ageratingdeclaration/data>
             */
            public struct Data: Identifiable {
                public let id: String
                public var type: String { "ageRatingDeclarations" }

                public init(id: String) {
                    self.id = id
                }
            }

            /**
             # AppStoreVersion.Relationships.AgeRatingDeclaration.Links
             The links to the related data and the relationship's self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appstoreversion/relationships/ageratingdeclaration/links>
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
         # AppStoreVersion.Relationships.App
         The data and links that describe the relationship between the resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/appstoreversion/relationships/app>
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
             # AppStoreVersion.Relationships.App.Data
             The type and ID of a related resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appstoreversion/relationships/app/data>
             */
            public struct Data: Identifiable {
                public let id: String
                public var type: String { "apps" }

                public init(id: String) {
                    self.id = id
                }
            }

            /**
             # AppStoreVersion.Relationships.App.Links
             The links to the related data and the relationship's self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appstoreversion/relationships/app/links>
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
         # AppStoreVersion.Relationships.AppClipDefaultExperience
         The data and links that describe the relationship between the App Store Versions and the Default App Clip Experiences resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/appstoreversion/relationships/appclipdefaultexperience>
         */
        public struct AppClipDefaultExperience {
            /// The ID and type of the related Default App Clip Experiences resource.
            @NullCodable public var data: Data?
            /// Navigational links that include the self-link.
            public var links: Links?

            public init(data: Data? = nil,
                        links: Links? = nil)
            {
                self.data = data
                self.links = links
            }

            /**
             # AppStoreVersion.Relationships.AppClipDefaultExperience.Data
             The type and ID of a related Default App Clip Experiences resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appstoreversion/relationships/appclipdefaultexperience/data>
             */
            public struct Data: Identifiable {
                /// The opaque resource ID that uniquely identifies the related Default App Clip Experiences resource.
                public let id: String
                /// The resource type.
                public var type: String { "appClipDefaultExperiences" }

                public init(id: String) {
                    self.id = id
                }
            }

            /**
             # AppStoreVersion.Relationships.AppClipDefaultExperience.Links
             The links to the related Default App Clip Experiences resource and the relationship’s self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appstoreversion/relationships/appclipdefaultexperience/links>
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
         # AppStoreVersion.Relationships.AppStoreReviewDetail
         The data and links that describe the relationship between the resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/appstoreversion/relationships/appstorereviewdetail>
         */
        public struct AppStoreReviewDetail {
            @NullCodable public var data: Data?
            public var links: Links?

            public init(data: Data? = nil,
                        links: Links? = nil)
            {
                self.data = data
                self.links = links
            }

            /**
             # AppStoreVersion.Relationships.AppStoreReviewDetail.Data
             The type and ID of a related resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appstoreversion/relationships/appstorereviewdetail/data>
             */
            public struct Data: Identifiable {
                public let id: String
                public var type: String { "appStoreReviewDetails" }

                public init(id: String) {
                    self.id = id
                }
            }

            /**
             # AppStoreVersion.Relationships.AppStoreReviewDetail.Links
             The links to the related data and the relationship's self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appstoreversion/relationships/appstorereviewdetail/links>
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

        public struct AppStoreVersionExperiments {
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

            public struct Data: Identifiable {
                public let id: String
                public var type: String { "appStoreVersionExperiments" }

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

        public struct AppStoreVersionExperimentsV2 {
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

            public struct Data: Identifiable {
                public let id: String
                public var type: String { "appStoreVersionExperiments" }

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
         # AppStoreVersion.Relationships.AppStoreVersionLocalizations
         The data and links that describe the relationship between the resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/appstoreversion/relationships/appstoreversionlocalizations>
         */
        public struct AppStoreVersionLocalizations {
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
             # AppStoreVersion.Relationships.AppStoreVersionLocalizations.Data
             The type and ID of a related resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appstoreversion/relationships/appstoreversionlocalizations/data>
             */
            public struct Data: Identifiable {
                public let id: String
                public var type: String { "appStoreVersionLocalizations" }

                public init(id: String) {
                    self.id = id
                }
            }

            /**
             # AppStoreVersion.Relationships.AppStoreVersionLocalizations.Links
             The links to the related data and the relationship's self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appstoreversion/relationships/appstoreversionlocalizations/links>
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
         # AppStoreVersion.Relationships.AppStoreVersionPhasedRelease
         The data and links that describe the relationship between the resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/appstoreversion/relationships/appstoreversionphasedrelease>
         */
        public struct AppStoreVersionPhasedRelease {
            @NullCodable public var data: Data?
            public var links: Links?

            public init(data: Data? = nil,
                        links: Links? = nil)
            {
                self.data = data
                self.links = links
            }

            /**
             # AppStoreVersion.Relationships.AppStoreVersionPhasedRelease.Data
             The type and ID of a related resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appstoreversion/relationships/appstoreversionphasedrelease/data>
             */
            public struct Data: Identifiable {
                public let id: String
                public var type: String { "appStoreVersionPhasedReleases" }

                public init(id: String) {
                    self.id = id
                }
            }

            /**
             # AppStoreVersion.Relationships.AppStoreVersionPhasedRelease.Links
             The links to the related data and the relationship's self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appstoreversion/relationships/appstoreversionphasedrelease/links>
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
         # AppStoreVersion.Relationships.AppStoreVersionSubmission
         The data and links that describe the relationship between the resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/appstoreversion/relationships/appstoreversionsubmission>
         */
        public struct AppStoreVersionSubmission {
            @NullCodable public var data: Data?
            public var links: Links?

            public init(data: Data? = nil,
                        links: Links? = nil)
            {
                self.data = data
                self.links = links
            }

            /**
             # AppStoreVersion.Relationships.AppStoreVersionSubmission.Data
             The type and ID of a related resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appstoreversion/relationships/appstoreversionsubmission/data>
             */
            public struct Data: Identifiable {
                public let id: String
                public var type: String { "appStoreVersionSubmissions" }

                public init(id: String) {
                    self.id = id
                }
            }

            /**
             # AppStoreVersion.Relationships.AppStoreVersionSubmission.Links
             The links to the related data and the relationship's self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appstoreversion/relationships/appstoreversionsubmission/links>
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
         # AppStoreVersion.Relationships.Build
         The data and links that describe the relationship between the resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/appstoreversion/relationships/build>
         */
        public struct Build {
            @NullCodable public var data: Data?
            public var links: Links?

            public init(data: Data? = nil,
                        links: Links? = nil)
            {
                self.data = data
                self.links = links
            }

            /**
             # AppStoreVersion.Relationships.Build.Data
             The type and ID of a related resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appstoreversion/relationships/build/data>
             */
            public struct Data: Identifiable {
                public let id: String
                public var type: String { "builds" }

                public init(id: String) {
                    self.id = id
                }
            }

            /**
             # AppStoreVersion.Relationships.Build.Links
             The links to the related data and the relationship's self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appstoreversion/relationships/build/links>
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
         # AppStoreVersion.Relationships.RoutingAppCoverage
         The data and links that describe the relationship between the resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/appstoreversion/relationships/routingappcoverage>
         */
        public struct RoutingAppCoverage {
            @NullCodable public var data: Data?
            public var links: Links?

            public init(data: Data? = nil,
                        links: Links? = nil)
            {
                self.data = data
                self.links = links
            }

            /**
             # AppStoreVersion.Relationships.RoutingAppCoverage.Data
             The type and ID of a related resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appstoreversion/relationships/routingappcoverage/data>
             */
            public struct Data: Identifiable {
                public let id: String
                public var type: String { "routingAppCoverages" }

                public init(id: String) {
                    self.id = id
                }
            }

            /**
             # AppStoreVersion.Relationships.RoutingAppCoverage.Links
             The links to the related data and the relationship's self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appstoreversion/relationships/routingappcoverage/links>
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
