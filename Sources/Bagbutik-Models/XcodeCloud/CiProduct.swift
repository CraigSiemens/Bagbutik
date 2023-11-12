import Bagbutik_Core
import Foundation

/**
 # CiProduct
 The data structure that represents a Products resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/ciproduct>
 */
public struct CiProduct: Identifiable {
    /// The opaque resource ID that uniquely identifies a Products resource.
    public let id: String
    /// The navigational links that include the self-link.
    public var links: ResourceLinks?
    /// The resource type.
    public var type: String { "ciProducts" }
    /// The attributes that describe the Products resource.
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
     # CiProduct.Attributes
     The attributes that describe a Products resource.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/ciproduct/attributes>
     */
    public struct Attributes {
        /// The date when you created the Xcode Cloud product.
        public var createdDate: Date?
        /// The name of the Xcode Cloud product.
        public var name: String?
        /// A string that indicates whether the Xcode Cloud product is a framework or an app.
        public var productType: ProductType?

        public init(createdDate: Date? = nil,
                    name: String? = nil,
                    productType: ProductType? = nil)
        {
            self.createdDate = createdDate
            self.name = name
            self.productType = productType
        }

        public enum ProductType: String {
            case app = "APP"
            case framework = "FRAMEWORK"
        }
    }

    /**
     # CiProduct.Relationships
     The relationships of the Products resource you included in the request and those on which you can operate.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/ciproduct/relationships>
     */
    public struct Relationships {
        /// The related Apps resource.
        public var app: App?
        /// The related bundle ID.
        public var bundleId: BundleId?
        /// The related primary repository.
        public var primaryRepositories: PrimaryRepositories?

        public init(app: App? = nil,
                    bundleId: BundleId? = nil,
                    primaryRepositories: PrimaryRepositories? = nil)
        {
            self.app = app
            self.bundleId = bundleId
            self.primaryRepositories = primaryRepositories
        }

        /**
         # CiProduct.Relationships.App
         The data and links that describe the relationship between the Products and Apps resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/ciproduct/relationships/app>
         */
        public struct App {
            /// The ID and type of the related Apps resource.
            @NullCodable public var data: Data?
            /// The navigational links that include the self-link.
            public var links: Links?

            public init(data: Data? = nil,
                        links: Links? = nil)
            {
                self.data = data
                self.links = links
            }

            /**
             # CiProduct.Relationships.App.Data
             The type and ID of a related Apps resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/ciproduct/relationships/app/data>
             */
            public struct Data: Identifiable {
                /// The opaque resource ID that uniquely identifies the related Apps resource.
                public let id: String
                /// The resource type.
                public var type: String { "apps" }

                public init(id: String) {
                    self.id = id
                }
            }

            /**
             # CiProduct.Relationships.App.Links
             The links to the related Apps resource and the relationship self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/ciproduct/relationships/app/links>
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
         # CiProduct.Relationships.BundleId
         The data and links that describe the relationship between the Products and the Bundle IDs resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/ciproduct/relationships/bundleid>
         */
        public struct BundleId {
            /// The ID and type of the related Bundle IDs resource.
            @NullCodable public var data: Data?
            /// The navigational links that include the self-link.
            public var links: Links?

            public init(data: Data? = nil,
                        links: Links? = nil)
            {
                self.data = data
                self.links = links
            }

            /**
             # CiProduct.Relationships.BundleId.Data
             The type and ID of a related Bundle IDs resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/ciproduct/relationships/bundleid/data>
             */
            public struct Data: Identifiable {
                /// The opaque resource ID that uniquely identifies the related Bundle IDs resource.
                public let id: String
                /// The resource type.
                public var type: String { "bundleIds" }

                public init(id: String) {
                    self.id = id
                }
            }

            /**
             # CiProduct.Relationships.BundleId.Links
             The links to the related Bundle IDs resource and the relationship’s self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/ciproduct/relationships/bundleid/links>
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
         # CiProduct.Relationships.PrimaryRepositories
         The data, links, and paging information that describe the relationship between the Products resource and the Repositories resource that represents the primary repository.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/ciproduct/relationships/primaryrepositories>
         */
        public struct PrimaryRepositories {
            /// The ID and type of the related Repositories resource that represents the primary repository.
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
             # CiProduct.Relationships.PrimaryRepositories.Data
             The type and ID of a related Repositories resource that represents the product’s primary repositories.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/ciproduct/relationships/primaryrepositories/data>
             */
            public struct Data: Identifiable {
                /// The opaque resource ID that uniquely identifies the related Repositories resource that represents the primary repository.
                public let id: String
                /// The resource type.
                public var type: String { "scmRepositories" }

                public init(id: String) {
                    self.id = id
                }
            }

            /**
             # CiProduct.Relationships.PrimaryRepositories.Links
             The links to the related Repositories resources that represents primary repositories and the relationship’s self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/ciproduct/relationships/primaryrepositories/links>
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
