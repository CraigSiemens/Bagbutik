import Bagbutik_Core
import Foundation

public struct AppStoreVersionExperimentTreatmentUpdateRequest: RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    public struct Data: Identifiable {
        public let id: String
        public var type: String { "appStoreVersionExperimentTreatments" }
        public var attributes: Attributes?

        public init(id: String,
                    attributes: Attributes? = nil)
        {
            self.id = id
            self.attributes = attributes
        }

        public struct Attributes {
            public var appIconName: String?
            public var name: String?

            public init(appIconName: String? = nil,
                        name: String? = nil)
            {
                self.appIconName = appIconName
                self.name = name
            }
        }
    }
}
