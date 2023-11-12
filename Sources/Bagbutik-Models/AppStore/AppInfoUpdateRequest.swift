import Bagbutik_Core
import Foundation

/**
 # AppInfoUpdateRequest
 The request body you use to update an App Info.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/appinfoupdaterequest>
 */
public struct AppInfoUpdateRequest: RequestBody {
    /// The resource data.
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    /**
     # AppInfoUpdateRequest.Data
     The data element of the request body.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/appinfoupdaterequest/data>
     */
    public struct Data: Identifiable {
        /// An opaque resource ID that uniquely identifies the resource.
        public let id: String
        /// The resource type.
        public var type: String { "appInfos" }
        /// Navigational links to related data and included resource types and IDs.
        public var relationships: Relationships?

        public init(id: String,
                    relationships: Relationships? = nil)
        {
            self.id = id
            self.relationships = relationships
        }

        /**
         # AppInfoUpdateRequest.Data.Relationships
         The data and links that describe the relationship between the resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/appinfoupdaterequest/data/relationships>
         */
        public struct Relationships {
            public var primaryCategory: PrimaryCategory?
            public var primarySubcategoryOne: PrimarySubcategoryOne?
            public var primarySubcategoryTwo: PrimarySubcategoryTwo?
            public var secondaryCategory: SecondaryCategory?
            public var secondarySubcategoryOne: SecondarySubcategoryOne?
            public var secondarySubcategoryTwo: SecondarySubcategoryTwo?

            public init(primaryCategory: PrimaryCategory? = nil,
                        primarySubcategoryOne: PrimarySubcategoryOne? = nil,
                        primarySubcategoryTwo: PrimarySubcategoryTwo? = nil,
                        secondaryCategory: SecondaryCategory? = nil,
                        secondarySubcategoryOne: SecondarySubcategoryOne? = nil,
                        secondarySubcategoryTwo: SecondarySubcategoryTwo? = nil)
            {
                self.primaryCategory = primaryCategory
                self.primarySubcategoryOne = primarySubcategoryOne
                self.primarySubcategoryTwo = primarySubcategoryTwo
                self.secondaryCategory = secondaryCategory
                self.secondarySubcategoryOne = secondarySubcategoryOne
                self.secondarySubcategoryTwo = secondarySubcategoryTwo
            }

            /**
             # AppInfoUpdateRequest.Data.Relationships.PrimaryCategory
             The data and links that describe the relationship between the resources.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appinfoupdaterequest/data/relationships/primarycategory>
             */
            public struct PrimaryCategory {
                @NullCodable public var data: Data?

                public init(data: Data? = nil) {
                    self.data = data
                }

                /**
                 # AppInfoUpdateRequest.Data.Relationships.PrimaryCategory.Data
                 The type and ID of a resource that you're relating with the resource you're updating.

                 Full documentation:
                 <https://developer.apple.com/documentation/appstoreconnectapi/appinfoupdaterequest/data/relationships/primarycategory/data>
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
            }

            /**
             # AppInfoUpdateRequest.Data.Relationships.PrimarySubcategoryOne
             The data and links that describe the relationship between the resources.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appinfoupdaterequest/data/relationships/primarysubcategoryone>
             */
            public struct PrimarySubcategoryOne {
                @NullCodable public var data: Data?

                public init(data: Data? = nil) {
                    self.data = data
                }

                /**
                 # AppInfoUpdateRequest.Data.Relationships.PrimarySubcategoryOne.Data
                 The type and ID of a resource that you're relating with the resource you're updating.

                 Full documentation:
                 <https://developer.apple.com/documentation/appstoreconnectapi/appinfoupdaterequest/data/relationships/primarysubcategoryone/data>
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
            }

            /**
             # AppInfoUpdateRequest.Data.Relationships.PrimarySubcategoryTwo
             The data and links that describe the relationship between the resources.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appinfoupdaterequest/data/relationships/primarysubcategorytwo>
             */
            public struct PrimarySubcategoryTwo {
                @NullCodable public var data: Data?

                public init(data: Data? = nil) {
                    self.data = data
                }

                /**
                 # AppInfoUpdateRequest.Data.Relationships.PrimarySubcategoryTwo.Data
                 The type and ID of a resource that you're relating with the resource you're updating.

                 Full documentation:
                 <https://developer.apple.com/documentation/appstoreconnectapi/appinfoupdaterequest/data/relationships/primarysubcategorytwo/data>
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
            }

            /**
             # AppInfoUpdateRequest.Data.Relationships.SecondaryCategory
             The data and links that describe the relationship between the resources.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appinfoupdaterequest/data/relationships/secondarycategory>
             */
            public struct SecondaryCategory {
                @NullCodable public var data: Data?

                public init(data: Data? = nil) {
                    self.data = data
                }

                /**
                 # AppInfoUpdateRequest.Data.Relationships.SecondaryCategory.Data
                 The type and ID of a resource that you're relating with the resource you're updating.

                 Full documentation:
                 <https://developer.apple.com/documentation/appstoreconnectapi/appinfoupdaterequest/data/relationships/secondarycategory/data>
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
            }

            /**
             # AppInfoUpdateRequest.Data.Relationships.SecondarySubcategoryOne
             The data and links that describe the relationship between the resources.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appinfoupdaterequest/data/relationships/secondarysubcategoryone>
             */
            public struct SecondarySubcategoryOne {
                @NullCodable public var data: Data?

                public init(data: Data? = nil) {
                    self.data = data
                }

                /**
                 # AppInfoUpdateRequest.Data.Relationships.SecondarySubcategoryOne.Data
                 The type and ID of a resource that you're relating with the resource you're updating.

                 Full documentation:
                 <https://developer.apple.com/documentation/appstoreconnectapi/appinfoupdaterequest/data/relationships/secondarysubcategoryone/data>
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
            }

            /**
             # AppInfoUpdateRequest.Data.Relationships.SecondarySubcategoryTwo
             The data and links that describe the relationship between the resources.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appinfoupdaterequest/data/relationships/secondarysubcategorytwo>
             */
            public struct SecondarySubcategoryTwo {
                @NullCodable public var data: Data?

                public init(data: Data? = nil) {
                    self.data = data
                }

                /**
                 # AppInfoUpdateRequest.Data.Relationships.SecondarySubcategoryTwo.Data
                 The type and ID of a resource that you're relating with the resource you're updating.

                 Full documentation:
                 <https://developer.apple.com/documentation/appstoreconnectapi/appinfoupdaterequest/data/relationships/secondarysubcategorytwo/data>
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
            }
        }
    }
}
