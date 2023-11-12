import Bagbutik_Core
import Foundation

public struct AppCustomProductPageUpdateRequest: RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    public struct Data: Identifiable {
        public let id: String
        public var type: String { "appCustomProductPages" }
        public var attributes: Attributes?

        public init(id: String,
                    attributes: Attributes? = nil)
        {
            self.id = id
            self.attributes = attributes
        }

        public struct Attributes {
            public var name: String?
            public var visible: Bool?

            public init(name: String? = nil,
                        visible: Bool? = nil)
            {
                self.name = name
                self.visible = visible
            }
        }
    }
}
