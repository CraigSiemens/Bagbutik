import Bagbutik_Core
import Foundation

public struct AppStoreVersionExperimentV2UpdateRequest: RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    public struct Data: Identifiable {
        public let id: String
        public var type: String { "appStoreVersionExperiments" }
        public var attributes: Attributes?

        public init(id: String,
                    attributes: Attributes? = nil)
        {
            self.id = id
            self.attributes = attributes
        }

        public struct Attributes {
            public var name: String?
            public var started: Bool?
            public var trafficProportion: Int?

            public init(name: String? = nil,
                        started: Bool? = nil,
                        trafficProportion: Int? = nil)
            {
                self.name = name
                self.started = started
                self.trafficProportion = trafficProportion
            }
        }
    }
}
