import Bagbutik_Core
import Foundation

public struct AppStoreVersionExperimentTreatmentCreateRequest: RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    public struct Data {
        public var type: String { "appStoreVersionExperimentTreatments" }
        public let attributes: Attributes
        public let relationships: Relationships

        public init(attributes: Attributes,
                    relationships: Relationships)
        {
            self.attributes = attributes
            self.relationships = relationships
        }

        public struct Attributes {
            public var appIconName: String?
            public let name: String

            public init(appIconName: String? = nil,
                        name: String)
            {
                self.appIconName = appIconName
                self.name = name
            }
        }

        public struct Relationships {
            public let appStoreVersionExperiment: AppStoreVersionExperiment
            public var appStoreVersionExperimentV2: AppStoreVersionExperimentV2?

            public init(appStoreVersionExperiment: AppStoreVersionExperiment,
                        appStoreVersionExperimentV2: AppStoreVersionExperimentV2? = nil)
            {
                self.appStoreVersionExperiment = appStoreVersionExperiment
                self.appStoreVersionExperimentV2 = appStoreVersionExperimentV2
            }

            public struct AppStoreVersionExperiment {
                public let data: Data

                public init(data: Data) {
                    self.data = data
                }

                public struct Data: Identifiable {
                    public let id: String
                    public var type: String { "appStoreVersionExperiments" }

                    public init(id: String) {
                        self.id = id
                    }
                }
            }

            public struct AppStoreVersionExperimentV2 {
                @NullCodable public var data: Data?

                public init(data: Data? = nil) {
                    self.data = data
                }

                public struct Data: Identifiable {
                    public let id: String
                    public var type: String { "appStoreVersionExperiments" }

                    public init(id: String) {
                        self.id = id
                    }
                }
            }
        }
    }
}
