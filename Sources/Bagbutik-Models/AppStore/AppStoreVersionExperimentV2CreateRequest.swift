import Bagbutik_Core
import Foundation

public struct AppStoreVersionExperimentV2CreateRequest: RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    public struct Data {
        public var type: String { "appStoreVersionExperiments" }
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
            public let platform: Platform
            public let trafficProportion: Int

            public init(name: String,
                        platform: Platform,
                        trafficProportion: Int)
            {
                self.name = name
                self.platform = platform
                self.trafficProportion = trafficProportion
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
