import Bagbutik_Core
import Foundation

public struct ReviewSubmissionCreateRequest: RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    public struct Data {
        public var type: String { "reviewSubmissions" }
        public let attributes: Attributes
        public let relationships: Relationships

        public init(attributes: Attributes,
                    relationships: Relationships)
        {
            self.attributes = attributes
            self.relationships = relationships
        }

        public struct Attributes {
            public let platform: Platform

            public init(platform: Platform) {
                self.platform = platform
            }
        }

        public struct Relationships {
            public let app: App

            public init(app: App) {
                self.app = app
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
        }
    }
}
