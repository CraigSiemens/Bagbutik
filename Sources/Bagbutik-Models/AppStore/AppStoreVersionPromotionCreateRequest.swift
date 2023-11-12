import Bagbutik_Core
import Foundation

public struct AppStoreVersionPromotionCreateRequest: RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    public struct Data {
        public var type: String { "appStoreVersionPromotions" }
        public let relationships: Relationships

        public init(relationships: Relationships) {
            self.relationships = relationships
        }

        public struct Relationships {
            public let appStoreVersion: AppStoreVersion
            public let appStoreVersionExperimentTreatment: AppStoreVersionExperimentTreatment

            public init(appStoreVersion: AppStoreVersion,
                        appStoreVersionExperimentTreatment: AppStoreVersionExperimentTreatment)
            {
                self.appStoreVersion = appStoreVersion
                self.appStoreVersionExperimentTreatment = appStoreVersionExperimentTreatment
            }

            public struct AppStoreVersion {
                public let data: Data

                public init(data: Data) {
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

            public struct AppStoreVersionExperimentTreatment {
                public let data: Data

                public init(data: Data) {
                    self.data = data
                }

                public struct Data: Identifiable {
                    public let id: String
                    public var type: String { "appStoreVersionExperimentTreatments" }

                    public init(id: String) {
                        self.id = id
                    }
                }
            }
        }
    }
}
