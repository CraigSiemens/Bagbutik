import Bagbutik_Core
import Foundation

public struct AppCustomProductPageVersionCreateRequest: RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    public struct Data {
        public var type: String { "appCustomProductPageVersions" }
        public let relationships: Relationships

        public init(relationships: Relationships) {
            self.relationships = relationships
        }

        public struct Relationships {
            public let appCustomProductPage: AppCustomProductPage
            public var appCustomProductPageLocalizations: AppCustomProductPageLocalizations?

            public init(appCustomProductPage: AppCustomProductPage,
                        appCustomProductPageLocalizations: AppCustomProductPageLocalizations? = nil)
            {
                self.appCustomProductPage = appCustomProductPage
                self.appCustomProductPageLocalizations = appCustomProductPageLocalizations
            }

            public struct AppCustomProductPage {
                public let data: Data

                public init(data: Data) {
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
}
