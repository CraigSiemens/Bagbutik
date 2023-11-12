import Bagbutik_Core
import Foundation

public struct AppCustomProductPageLocalizationInlineCreate: Identifiable {
    public var id: String?
    public var type: String { "appCustomProductPageLocalizations" }
    public let attributes: Attributes
    public var relationships: Relationships?

    public init(id: String? = nil,
                attributes: Attributes,
                relationships: Relationships? = nil)
    {
        self.id = id
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
        public var appCustomProductPageVersion: AppCustomProductPageVersion?

        public init(appCustomProductPageVersion: AppCustomProductPageVersion? = nil) {
            self.appCustomProductPageVersion = appCustomProductPageVersion
        }

        public struct AppCustomProductPageVersion {
            @NullCodable public var data: Data?

            public init(data: Data? = nil) {
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
