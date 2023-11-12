import Bagbutik_Core
import Foundation

public struct AppStoreVersionExperimentTreatmentLocalizationCreateRequest: RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    public struct Data {
        public var type: String { "appStoreVersionExperimentTreatmentLocalizations" }
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

            public init(locale: String) {
                self.locale = locale
            }
        }

        public struct Relationships {
            public let appStoreVersionExperimentTreatment: AppStoreVersionExperimentTreatment

            public init(appStoreVersionExperimentTreatment: AppStoreVersionExperimentTreatment) {
                self.appStoreVersionExperimentTreatment = appStoreVersionExperimentTreatment
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
