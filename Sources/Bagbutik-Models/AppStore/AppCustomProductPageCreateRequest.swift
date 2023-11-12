import Bagbutik_Core
import Foundation

public struct AppCustomProductPageCreateRequest: RequestBody {
    public let data: Data
    public var included: [Included]?

    public init(data: Data,
                included: [Included]? = nil)
    {
        self.data = data
        self.included = included
    }

    public struct Data {
        public var type: String { "appCustomProductPages" }
        public let attributes: Attributes
        public let relationships: Relationships

        public init(attributes: Attributes,
                    relationships: Relationships)
        {
            self.attributes = attributes
            self.relationships = relationships
        }

        public struct Attributes {
            public let name: String

            public init(name: String) {
                self.name = name
            }
        }

        public struct Relationships {
            public let app: App
            public var appCustomProductPageVersions: AppCustomProductPageVersions?
            public var appStoreVersionTemplate: AppStoreVersionTemplate?
            public var customProductPageTemplate: CustomProductPageTemplate?

            public init(app: App,
                        appCustomProductPageVersions: AppCustomProductPageVersions? = nil,
                        appStoreVersionTemplate: AppStoreVersionTemplate? = nil,
                        customProductPageTemplate: CustomProductPageTemplate? = nil)
            {
                self.app = app
                self.appCustomProductPageVersions = appCustomProductPageVersions
                self.appStoreVersionTemplate = appStoreVersionTemplate
                self.customProductPageTemplate = customProductPageTemplate
            }

            public struct App {
                public let data: Data

                public init(data: Data) {
                    self.data = data
                }

                public struct Data: Identifiable {
                    public let id: String
                    public var type: String { "apps" }

                    public init(id: String) {
                        self.id = id
                    }
                }
            }

            public struct AppCustomProductPageVersions {
                @NullCodable public var data: [Data]?

                public init(data: [Data]? = nil) {
                    self.data = data
                }

                public struct Data: Identifiable {
                    public let id: String
                    public var type: String { "appCustomProductPageVersions" }

                    public init(id: String) {
                        self.id = id
                    }
                }
            }

            public struct AppStoreVersionTemplate {
                @NullCodable public var data: Data?

                public init(data: Data? = nil) {
                    self.data = data
                }

                public struct Data: Identifiable {
                    public let id: String
                    public var type: String { "appStoreVersions" }

                    public init(id: String) {
                        self.id = id
                    }
                }
            }

            public struct CustomProductPageTemplate {
                @NullCodable public var data: Data?

                public init(data: Data? = nil) {
                    self.data = data
                }

                public struct Data: Identifiable {
                    public let id: String
                    public var type: String { "appCustomProductPages" }

                    public init(id: String) {
                        self.id = id
                    }
                }
            }
        }
    }

    public enum Included {
        case appCustomProductPageLocalizationInlineCreate(AppCustomProductPageLocalizationInlineCreate)
        case appCustomProductPageVersionInlineCreate(AppCustomProductPageVersionInlineCreate)
    }
}
