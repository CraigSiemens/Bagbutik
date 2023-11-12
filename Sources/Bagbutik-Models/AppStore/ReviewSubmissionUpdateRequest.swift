import Bagbutik_Core
import Foundation

public struct ReviewSubmissionUpdateRequest: RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    public struct Data: Identifiable {
        public let id: String
        public var type: String { "reviewSubmissions" }
        public var attributes: Attributes?

        public init(id: String,
                    attributes: Attributes? = nil)
        {
            self.id = id
            self.attributes = attributes
        }

        public struct Attributes {
            public var canceled: Bool?
            public var submitted: Bool?

            public init(canceled: Bool? = nil,
                        submitted: Bool? = nil)
            {
                self.canceled = canceled
                self.submitted = submitted
            }
        }
    }
}
