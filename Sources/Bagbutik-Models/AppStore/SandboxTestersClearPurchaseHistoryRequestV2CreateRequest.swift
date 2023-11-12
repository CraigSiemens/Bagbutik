import Bagbutik_Core
import Foundation

public struct SandboxTestersClearPurchaseHistoryRequestV2CreateRequest: RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    public struct Data {
        public var type: String { "sandboxTestersClearPurchaseHistoryRequest" }
        public let relationships: Relationships

        public init(relationships: Relationships) {
            self.relationships = relationships
        }

        public struct Relationships {
            public let sandboxTesters: SandboxTesters

            public init(sandboxTesters: SandboxTesters) {
                self.sandboxTesters = sandboxTesters
            }

            public struct SandboxTesters {
                public let data: [Data]

                public init(data: [Data]) {
                    self.data = data
                }

                public struct Data: Identifiable {
                    public let id: String
                    public var type: String { "sandboxTesters" }

                    public init(id: String) {
                        self.id = id
                    }
                }
            }
        }
    }
}
