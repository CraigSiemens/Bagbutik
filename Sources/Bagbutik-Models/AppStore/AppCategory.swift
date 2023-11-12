import Bagbutik_Core
import Foundation

/**
 # AppCategory
 The data structure that represent an App Categories resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/appcategory>
 */
public struct AppCategory: Identifiable {
    public let id: String
    public var links: ResourceLinks?
    public var type: String { "appCategories" }
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
     # AppCategory.Attributes
     Attributes that describe an App Categories resource.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/appcategory/attributes>
     */
    public struct Attributes {
        public var platforms: [Platform]?

        public init(platforms: [Platform]? = nil) {
            self.platforms = platforms
        }
    }

    /**
     # AppCategory.Relationships
     The relationships you included in the request and those on which you can operate.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/appcategory/relationships>
     */
    public struct Relationships {
        public var parent: Parent?
        public var subcategories: Subcategories?

        public init(parent: Parent? = nil,
                    subcategories: Subcategories? = nil)
        {
            self.parent = parent
            self.subcategories = subcategories
        }

        /**
         # AppCategory.Relationships.Parent
         The data and links that describe the relationship between the resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/appcategory/relationships/parent>
         */
        public struct Parent {
            @NullCodable public var data: Data?
            public var links: Links?

            public init(data: Data? = nil,
                        links: Links? = nil)
            {
                self.data = data
                self.links = links
            }

            /**
             # AppCategory.Relationships.Parent.Data
             The type and ID of a related resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appcategory/relationships/parent/data>
             */
            public struct Data: Identifiable {
                public let id: String
                public var type: String { "appCategories" }

                public init(id: String) {
                    self.id = id
                }
            }

            /**
             # AppCategory.Relationships.Parent.Links
             The links to the related data and the relationship's self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appcategory/relationships/parent/links>
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
         # AppCategory.Relationships.Subcategories
         The data and links that describe the relationship between the resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/appcategory/relationships/subcategories>
         */
        public struct Subcategories {
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
             # AppCategory.Relationships.Subcategories.Data
             The type and ID of a related resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appcategory/relationships/subcategories/data>
             */
            public struct Data: Identifiable {
                public let id: String
                public var type: String { "appCategories" }

                public init(id: String) {
                    self.id = id
                }
            }

            /**
             # AppCategory.Relationships.Subcategories.Links
             The links to the related data and the relationship's self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appcategory/relationships/subcategories/links>
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
