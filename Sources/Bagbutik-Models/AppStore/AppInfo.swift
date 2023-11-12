import Bagbutik_Core
import Foundation

/**
 # AppInfo
 The data structure that represent an App Infos resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/appinfo>
 */
public struct AppInfo: Identifiable {
    /// An opaque resource ID that uniquely identifies the resource.
    public let id: String
    /// Navigational links that include the self-link.
    public var links: ResourceLinks?
    /// The resource type.
    public var type: String { "appInfos" }
    /// The resource’s attributes.
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
     # AppInfo.Attributes
     Attributes that describe an App Infos resource.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/appinfo/attributes>
     */
    public struct Attributes {
        /// The app’s age rating as it appears on the App Store for all platforms.
        public var appStoreAgeRating: AppStoreAgeRating?
        /// The state of an app version in the App Store.
        public var appStoreState: AppStoreVersionState?
        /// The app’s age rating as it appears on the App Store in Brazil for all platforms.
        @available(*, deprecated, message: "Apple has marked this property deprecated and it will be removed sometime in the future.")
        public var brazilAgeRating: BrazilAgeRating? = nil
        public var brazilAgeRatingV2: BrazilAgeRatingV2?
        /// A Made for Kids app’s age band.
        public var kidsAgeBand: KidsAgeBand?

        @available(*, deprecated, message: "This uses a property Apple has marked as deprecated.")
        public init(appStoreAgeRating: AppStoreAgeRating? = nil,
                    appStoreState: AppStoreVersionState? = nil,
                    brazilAgeRating: BrazilAgeRating? = nil,
                    brazilAgeRatingV2: BrazilAgeRatingV2? = nil,
                    kidsAgeBand: KidsAgeBand? = nil)
        {
            self.appStoreAgeRating = appStoreAgeRating
            self.appStoreState = appStoreState
            self.brazilAgeRating = brazilAgeRating
            self.brazilAgeRatingV2 = brazilAgeRatingV2
            self.kidsAgeBand = kidsAgeBand
        }

        public init(appStoreAgeRating: AppStoreAgeRating? = nil,
                    appStoreState: AppStoreVersionState? = nil,
                    brazilAgeRatingV2: BrazilAgeRatingV2? = nil,
                    kidsAgeBand: KidsAgeBand? = nil)
        {
            self.appStoreAgeRating = appStoreAgeRating
            self.appStoreState = appStoreState
            self.brazilAgeRatingV2 = brazilAgeRatingV2
            self.kidsAgeBand = kidsAgeBand
        }

        public enum BrazilAgeRatingV2: String {
            case selfRatedL = "SELF_RATED_L"
            case selfRatedTen = "SELF_RATED_TEN"
            case selfRatedTwelve = "SELF_RATED_TWELVE"
            case selfRatedFourteen = "SELF_RATED_FOURTEEN"
            case selfRatedSixteen = "SELF_RATED_SIXTEEN"
            case selfRatedEighteen = "SELF_RATED_EIGHTEEN"
            case officialL = "OFFICIAL_L"
            case officialTen = "OFFICIAL_TEN"
            case officialTwelve = "OFFICIAL_TWELVE"
            case officialFourteen = "OFFICIAL_FOURTEEN"
            case officialSixteen = "OFFICIAL_SIXTEEN"
            case officialEighteen = "OFFICIAL_EIGHTEEN"
        }
    }

    /**
     # AppInfo.Relationships
     The relationships you included in the request and those on which you can operate.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/appinfo/relationships>
     */
    public struct Relationships {
        public var ageRatingDeclaration: AgeRatingDeclaration?
        public var app: App?
        public var appInfoLocalizations: AppInfoLocalizations?
        public var primaryCategory: PrimaryCategory?
        public var primarySubcategoryOne: PrimarySubcategoryOne?
        public var primarySubcategoryTwo: PrimarySubcategoryTwo?
        public var secondaryCategory: SecondaryCategory?
        public var secondarySubcategoryOne: SecondarySubcategoryOne?
        public var secondarySubcategoryTwo: SecondarySubcategoryTwo?

        public init(ageRatingDeclaration: AgeRatingDeclaration? = nil,
                    app: App? = nil,
                    appInfoLocalizations: AppInfoLocalizations? = nil,
                    primaryCategory: PrimaryCategory? = nil,
                    primarySubcategoryOne: PrimarySubcategoryOne? = nil,
                    primarySubcategoryTwo: PrimarySubcategoryTwo? = nil,
                    secondaryCategory: SecondaryCategory? = nil,
                    secondarySubcategoryOne: SecondarySubcategoryOne? = nil,
                    secondarySubcategoryTwo: SecondarySubcategoryTwo? = nil)
        {
            self.ageRatingDeclaration = ageRatingDeclaration
            self.app = app
            self.appInfoLocalizations = appInfoLocalizations
            self.primaryCategory = primaryCategory
            self.primarySubcategoryOne = primarySubcategoryOne
            self.primarySubcategoryTwo = primarySubcategoryTwo
            self.secondaryCategory = secondaryCategory
            self.secondarySubcategoryOne = secondarySubcategoryOne
            self.secondarySubcategoryTwo = secondarySubcategoryTwo
        }

        /**
         # AppInfo.Relationships.AgeRatingDeclaration
         The data and links that describe the relationship between the resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/appinfo/relationships/ageratingdeclaration>
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
             # AppInfo.Relationships.AgeRatingDeclaration.Data
             The type and ID of a related resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appinfo/relationships/ageratingdeclaration/data>
             */
            public struct Data: Identifiable {
                public let id: String
                public var type: String { "ageRatingDeclarations" }

                public init(id: String) {
                    self.id = id
                }
            }

            /**
             # AppInfo.Relationships.AgeRatingDeclaration.Links
             The links to the related data and the relationship’s self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appinfo/relationships/ageratingdeclaration/links>
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
         # AppInfo.Relationships.App
         The data and links that describe the relationship between the resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/appinfo/relationships/app>
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
             # AppInfo.Relationships.App.Data
             The type and ID of a related resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appinfo/relationships/app/data>
             */
            public struct Data: Identifiable {
                /// An opaque resource ID that uniquely identifies the resource.
                public let id: String
                /// The resource type.
                public var type: String { "apps" }

                public init(id: String) {
                    self.id = id
                }
            }

            /**
             # AppInfo.Relationships.App.Links
             The links to the related data and the relationship's self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appinfo/relationships/app/links>
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
         # AppInfo.Relationships.AppInfoLocalizations
         The data and links that describe the relationship between the resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/appinfo/relationships/appinfolocalizations>
         */
        public struct AppInfoLocalizations {
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
             # AppInfo.Relationships.AppInfoLocalizations.Data
             The type and ID of a related resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appinfo/relationships/appinfolocalizations/data>
             */
            public struct Data: Identifiable {
                /// An opaque resource ID that uniquely identifies the resource.
                public let id: String
                /// The resource type.
                public var type: String { "appInfoLocalizations" }

                public init(id: String) {
                    self.id = id
                }
            }

            /**
             # AppInfo.Relationships.AppInfoLocalizations.Links
             The links to the related data and the relationship's self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appinfo/relationships/appinfolocalizations/links>
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
         # AppInfo.Relationships.PrimaryCategory
         The data and links that describe the relationship between the resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/appinfo/relationships/primarycategory>
         */
        public struct PrimaryCategory {
            @NullCodable public var data: Data?
            public var links: Links?

            public init(data: Data? = nil,
                        links: Links? = nil)
            {
                self.data = data
                self.links = links
            }

            /**
             # AppInfo.Relationships.PrimaryCategory.Data
             The type and ID of a related resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appinfo/relationships/primarycategory/data>
             */
            public struct Data: Identifiable {
                /// An opaque resource ID that uniquely identifies the resource.
                public let id: String
                /// The resource type.
                public var type: String { "appCategories" }

                public init(id: String) {
                    self.id = id
                }
            }

            /**
             # AppInfo.Relationships.PrimaryCategory.Links
             The links to the related data and the relationship's self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appinfo/relationships/primarycategory/links>
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
         # AppInfo.Relationships.PrimarySubcategoryOne
         The data and links that describe the relationship between the resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/appinfo/relationships/primarysubcategoryone>
         */
        public struct PrimarySubcategoryOne {
            @NullCodable public var data: Data?
            public var links: Links?

            public init(data: Data? = nil,
                        links: Links? = nil)
            {
                self.data = data
                self.links = links
            }

            /**
             # AppInfo.Relationships.PrimarySubcategoryOne.Data
             The type and ID of a related resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appinfo/relationships/primarysubcategoryone/data>
             */
            public struct Data: Identifiable {
                /// An opaque resource ID that uniquely identifies the resource.
                public let id: String
                /// The resource type.
                public var type: String { "appCategories" }

                public init(id: String) {
                    self.id = id
                }
            }

            /**
             # AppInfo.Relationships.PrimarySubcategoryOne.Links
             The links to the related data and the relationship's self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appinfo/relationships/primarysubcategoryone/links>
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
         # AppInfo.Relationships.PrimarySubcategoryTwo
         The data and links that describe the relationship between the resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/appinfo/relationships/primarysubcategorytwo>
         */
        public struct PrimarySubcategoryTwo {
            @NullCodable public var data: Data?
            public var links: Links?

            public init(data: Data? = nil,
                        links: Links? = nil)
            {
                self.data = data
                self.links = links
            }

            /**
             # AppInfo.Relationships.PrimarySubcategoryTwo.Data
             The type and ID of a related resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appinfo/relationships/primarysubcategorytwo/data>
             */
            public struct Data: Identifiable {
                /// An opaque resource ID that uniquely identifies the resource.
                public let id: String
                /// The resource type.
                public var type: String { "appCategories" }

                public init(id: String) {
                    self.id = id
                }
            }

            /**
             # AppInfo.Relationships.PrimarySubcategoryTwo.Links
             The links to the related data and the relationship's self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appinfo/relationships/primarysubcategorytwo/links>
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
         # AppInfo.Relationships.SecondaryCategory
         The data and links that describe the relationship between the resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/appinfo/relationships/secondarycategory>
         */
        public struct SecondaryCategory {
            @NullCodable public var data: Data?
            public var links: Links?

            public init(data: Data? = nil,
                        links: Links? = nil)
            {
                self.data = data
                self.links = links
            }

            /**
             # AppInfo.Relationships.SecondaryCategory.Data
             The type and ID of a related resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appinfo/relationships/secondarycategory/data>
             */
            public struct Data: Identifiable {
                /// An opaque resource ID that uniquely identifies the resource.
                public let id: String
                /// The resource type.
                public var type: String { "appCategories" }

                public init(id: String) {
                    self.id = id
                }
            }

            /**
             # AppInfo.Relationships.SecondaryCategory.Links
             The links to the related data and the relationship's self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appinfo/relationships/secondarycategory/links>
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
         # AppInfo.Relationships.SecondarySubcategoryOne
         The data and links that describe the relationship between the resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/appinfo/relationships/secondarysubcategoryone>
         */
        public struct SecondarySubcategoryOne {
            @NullCodable public var data: Data?
            public var links: Links?

            public init(data: Data? = nil,
                        links: Links? = nil)
            {
                self.data = data
                self.links = links
            }

            /**
             # AppInfo.Relationships.SecondarySubcategoryOne.Data
             The type and ID of a related resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appinfo/relationships/secondarysubcategoryone/data>
             */
            public struct Data: Identifiable {
                /// An opaque resource ID that uniquely identifies the resource.
                public let id: String
                /// The resource type.
                public var type: String { "appCategories" }

                public init(id: String) {
                    self.id = id
                }
            }

            /**
             # AppInfo.Relationships.SecondarySubcategoryOne.Links
             The links to the related data and the relationship's self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appinfo/relationships/secondarysubcategoryone/links>
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
         # AppInfo.Relationships.SecondarySubcategoryTwo
         The data and links that describe the relationship between the resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/appinfo/relationships/secondarysubcategorytwo>
         */
        public struct SecondarySubcategoryTwo {
            @NullCodable public var data: Data?
            public var links: Links?

            public init(data: Data? = nil,
                        links: Links? = nil)
            {
                self.data = data
                self.links = links
            }

            /**
             # AppInfo.Relationships.SecondarySubcategoryTwo.Data
             The type and ID of a related resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appinfo/relationships/secondarysubcategorytwo/data>
             */
            public struct Data: Identifiable {
                /// An opaque resource ID that uniquely identifies the resource.
                public let id: String
                /// The resource type.
                public var type: String { "appCategories" }

                public init(id: String) {
                    self.id = id
                }
            }

            /**
             # AppInfo.Relationships.SecondarySubcategoryTwo.Links
             The links to the related data and the relationship's self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appinfo/relationships/secondarysubcategorytwo/links>
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
