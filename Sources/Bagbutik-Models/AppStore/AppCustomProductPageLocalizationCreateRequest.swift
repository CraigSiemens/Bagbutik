import Bagbutik_Core
import Foundation

public struct AppCustomProductPageLocalizationCreateRequest: RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    public struct Data {
        public var type: String { "appCustomProductPageLocalizations" }
        public let attributes: Attributes
        public let relationships: Relationships

        public init(attributes: Attributes,
                    relationships: Relationships)
        {
            self.attributes = attributes
            self.relationships = relationships
        }

        public struct Attributes {
            public let locale: String
            public var promotionalText: String?

            public init(locale: String,
                        promotionalText: String? = nil)
            {
                self.locale = locale
                self.promotionalText = promotionalText
            }
        }

        public struct Relationships {
            public let appCustomProductPageVersion: AppCustomProductPageVersion

            public init(appCustomProductPageVersion: AppCustomProductPageVersion) {
                self.appCustomProductPageVersion = appCustomProductPageVersion
            }

            public struct AppCustomProductPageVersion {
                public let data: Data

                public init(data: Data) {
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
        }
    }
}
