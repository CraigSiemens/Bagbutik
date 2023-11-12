import Bagbutik_Core
import Foundation

/**
 # AppPreviewSet
 The data structure that represent an App Preview Sets resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/apppreviewset>
 */
public struct AppPreviewSet: Identifiable {
    public let id: String
    public var links: ResourceLinks?
    public var type: String { "appPreviewSets" }
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
     # AppPreviewSet.Attributes
     Attributes that describe an App Preview Sets resource.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/apppreviewset/attributes>
     */
    public struct Attributes {
        public var previewType: PreviewType?

        public init(previewType: PreviewType? = nil) {
            self.previewType = previewType
        }
    }

    /**
     # AppPreviewSet.Relationships
     The relationships you included in the request and those on which you can operate.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/apppreviewset/relationships>
     */
    public struct Relationships {
        public var appCustomProductPageLocalization: AppCustomProductPageLocalization?
        public var appPreviews: AppPreviews?
        public var appStoreVersionExperimentTreatmentLocalization: AppStoreVersionExperimentTreatmentLocalization?
        public var appStoreVersionLocalization: AppStoreVersionLocalization?

        public init(appCustomProductPageLocalization: AppCustomProductPageLocalization? = nil,
                    appPreviews: AppPreviews? = nil,
                    appStoreVersionExperimentTreatmentLocalization: AppStoreVersionExperimentTreatmentLocalization? = nil,
                    appStoreVersionLocalization: AppStoreVersionLocalization? = nil)
        {
            self.appCustomProductPageLocalization = appCustomProductPageLocalization
            self.appPreviews = appPreviews
            self.appStoreVersionExperimentTreatmentLocalization = appStoreVersionExperimentTreatmentLocalization
            self.appStoreVersionLocalization = appStoreVersionLocalization
        }

        public struct AppCustomProductPageLocalization {
            @NullCodable public var data: Data?
            public var links: Links?

            public init(data: Data? = nil,
                        links: Links? = nil)
            {
                self.data = data
                self.links = links
            }

            public struct Data: Identifiable {
                public let id: String
                public var type: String { "appCustomProductPageLocalizations" }

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
         # AppPreviewSet.Relationships.AppPreviews
         The data and links that describe the relationship between the resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/apppreviewset/relationships/apppreviews>
         */
        public struct AppPreviews {
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
             # AppPreviewSet.Relationships.AppPreviews.Data
             The type and ID of a related resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/apppreviewset/relationships/apppreviews/data>
             */
            public struct Data: Identifiable {
                public let id: String
                public var type: String { "appPreviews" }

                public init(id: String) {
                    self.id = id
                }
            }

            /**
             # AppPreviewSet.Relationships.AppPreviews.Links
             The links to the related data and the relationship's self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/apppreviewset/relationships/apppreviews/links>
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

        public struct AppStoreVersionExperimentTreatmentLocalization {
            @NullCodable public var data: Data?
            public var links: Links?

            public init(data: Data? = nil,
                        links: Links? = nil)
            {
                self.data = data
                self.links = links
            }

            public struct Data: Identifiable {
                public let id: String
                public var type: String { "appStoreVersionExperimentTreatmentLocalizations" }

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
         # AppPreviewSet.Relationships.AppStoreVersionLocalization
         The data and links that describe the relationship between the resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/apppreviewset/relationships/appstoreversionlocalization>
         */
        public struct AppStoreVersionLocalization {
            @NullCodable public var data: Data?
            public var links: Links?

            public init(data: Data? = nil,
                        links: Links? = nil)
            {
                self.data = data
                self.links = links
            }

            /**
             # AppPreviewSet.Relationships.AppStoreVersionLocalization.Data
             The type and ID of a related resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/apppreviewset/relationships/appstoreversionlocalization/data>
             */
            public struct Data: Identifiable {
                public let id: String
                public var type: String { "appStoreVersionLocalizations" }

                public init(id: String) {
                    self.id = id
                }
            }

            /**
             # AppPreviewSet.Relationships.AppStoreVersionLocalization.Links
             The links to the related data and the relationship's self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/apppreviewset/relationships/appstoreversionlocalization/links>
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
