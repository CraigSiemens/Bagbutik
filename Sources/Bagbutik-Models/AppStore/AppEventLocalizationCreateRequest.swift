import Bagbutik_Core
import Foundation

public struct AppEventLocalizationCreateRequest: RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    public struct Data {
        public var type: String { "appEventLocalizations" }
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
            public var longDescription: String?
            public var name: String?
            public var shortDescription: String?

            public init(locale: String,
                        longDescription: String? = nil,
                        name: String? = nil,
                        shortDescription: String? = nil)
            {
                self.locale = locale
                self.longDescription = longDescription
                self.name = name
                self.shortDescription = shortDescription
            }
        }

        public struct Relationships {
            public let appEvent: AppEvent

            public init(appEvent: AppEvent) {
                self.appEvent = appEvent
            }

            public struct AppEvent {
                public let data: Data

                public init(data: Data) {
                    self.data = data
                }

                public struct Data: Identifiable {
                    public let id: String
                    public var type: String { "appEvents" }

                    public init(id: String) {
                        self.id = id
                    }
                }
            }
        }
    }
}
