import Bagbutik_Core
import Foundation

/**
 # AppStoreReviewDetail
 The data structure that represent an App Store Review Details  resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/appstorereviewdetail>
 */
public struct AppStoreReviewDetail: Identifiable {
    public let id: String
    public var links: ResourceLinks?
    public var type: String { "appStoreReviewDetails" }
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
     # AppStoreReviewDetail.Attributes
     Attributes that describe an App Store Review Details resource.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/appstorereviewdetail/attributes>
     */
    public struct Attributes {
        public var contactEmail: String?
        public var contactFirstName: String?
        public var contactLastName: String?
        public var contactPhone: String?
        public var demoAccountName: String?
        public var demoAccountPassword: String?
        public var demoAccountRequired: Bool?
        public var notes: String?

        public init(contactEmail: String? = nil,
                    contactFirstName: String? = nil,
                    contactLastName: String? = nil,
                    contactPhone: String? = nil,
                    demoAccountName: String? = nil,
                    demoAccountPassword: String? = nil,
                    demoAccountRequired: Bool? = nil,
                    notes: String? = nil)
        {
            self.contactEmail = contactEmail
            self.contactFirstName = contactFirstName
            self.contactLastName = contactLastName
            self.contactPhone = contactPhone
            self.demoAccountName = demoAccountName
            self.demoAccountPassword = demoAccountPassword
            self.demoAccountRequired = demoAccountRequired
            self.notes = notes
        }
    }

    /**
     # AppStoreReviewDetail.Relationships
     The relationships you included in the request and those on which you can operate.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/appstorereviewdetail/relationships>
     */
    public struct Relationships {
        public var appStoreReviewAttachments: AppStoreReviewAttachments?
        public var appStoreVersion: AppStoreVersion?

        public init(appStoreReviewAttachments: AppStoreReviewAttachments? = nil,
                    appStoreVersion: AppStoreVersion? = nil)
        {
            self.appStoreReviewAttachments = appStoreReviewAttachments
            self.appStoreVersion = appStoreVersion
        }

        /**
         # AppStoreReviewDetail.Relationships.AppStoreReviewAttachments
         The data and links that describe the relationship between the resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/appstorereviewdetail/relationships/appstorereviewattachments>
         */
        public struct AppStoreReviewAttachments {
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
             # AppStoreReviewDetail.Relationships.AppStoreReviewAttachments.Data
             The type and ID of a related resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appstorereviewdetail/relationships/appstorereviewattachments/data>
             */
            public struct Data: Identifiable {
                public let id: String
                public var type: String { "appStoreReviewAttachments" }

                public init(id: String) {
                    self.id = id
                }
            }

            /**
             # AppStoreReviewDetail.Relationships.AppStoreReviewAttachments.Links
             The links to the related data and the relationship's self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appstorereviewdetail/relationships/appstorereviewattachments/links>
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
         # AppStoreReviewDetail.Relationships.AppStoreVersion
         The data and links that describe the relationship between the resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/appstorereviewdetail/relationships/appstoreversion>
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
             # AppStoreReviewDetail.Relationships.AppStoreVersion.Data
             The type and ID of a related resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appstorereviewdetail/relationships/appstoreversion/data>
             */
            public struct Data: Identifiable {
                public let id: String
                public var type: String { "appStoreVersions" }

                public init(id: String) {
                    self.id = id
                }
            }

            /**
             # AppStoreReviewDetail.Relationships.AppStoreVersion.Links
             The links to the related data and the relationship's self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appstorereviewdetail/relationships/appstoreversion/links>
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
