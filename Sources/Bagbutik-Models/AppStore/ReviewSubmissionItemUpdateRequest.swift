import Bagbutik_Core
import Foundation

public struct ReviewSubmissionItemUpdateRequest: RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    public struct Data: Identifiable {
        public let id: String
        public var type: String { "reviewSubmissionItems" }
        public var attributes: Attributes?

        public init(id: String,
                    attributes: Attributes? = nil)
        {
            self.id = id
            self.attributes = attributes
        }

        public struct Attributes {
            public var removed: Bool?
            public var resolved: Bool?

            public init(removed: Bool? = nil,
                        resolved: Bool? = nil)
            {
                self.removed = removed
                self.resolved = resolved
            }
        }
    }
}
