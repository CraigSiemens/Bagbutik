import Bagbutik_Core
import Foundation

public struct AppEventLocalizationUpdateRequest: RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    public struct Data: Identifiable {
        public let id: String
        public var type: String { "appEventLocalizations" }
        public var attributes: Attributes?

        public init(id: String,
                    attributes: Attributes? = nil)
        {
            self.id = id
            self.attributes = attributes
        }

        public struct Attributes {
            public var longDescription: String?
            public var name: String?
            public var shortDescription: String?

            public init(longDescription: String? = nil,
                        name: String? = nil,
                        shortDescription: String? = nil)
            {
                self.longDescription = longDescription
                self.name = name
                self.shortDescription = shortDescription
            }
        }
    }
}
