import Bagbutik_Core
import Foundation

public struct AppCustomProductPageVersionInlineCreate: Identifiable {
    public var id: String?
    public var type: String { "appCustomProductPageVersions" }
    public var relationships: Relationships?

    public init(id: String? = nil,
                relationships: Relationships? = nil)
    {
        self.id = id
        self.relationships = relationships
    }

    public struct Relationships {
        public var appCustomProductPage: AppCustomProductPage?
        public var appCustomProductPageLocalizations: AppCustomProductPageLocalizations?

        public init(appCustomProductPage: AppCustomProductPage? = nil,
                    appCustomProductPageLocalizations: AppCustomProductPageLocalizations? = nil)
        {
            self.appCustomProductPage = appCustomProductPage
            self.appCustomProductPageLocalizations = appCustomProductPageLocalizations
        }

        public struct AppCustomProductPage {
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

        public struct AppCustomProductPageLocalizations {
            @NullCodable public var data: [Data]?

            public init(data: [Data]? = nil) {
                self.data = data
            }

            public struct Data: Identifiable {
                public let id: String
                public var type: String { "appCustomProductPageLocalizations" }

                public init(id: String) {
                    self.id = id
                }
            }
        }
    }
}
