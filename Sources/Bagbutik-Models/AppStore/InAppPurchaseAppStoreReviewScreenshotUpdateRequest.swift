import Bagbutik_Core
import Foundation

public struct InAppPurchaseAppStoreReviewScreenshotUpdateRequest: RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    public struct Data: Identifiable {
        public let id: String
        public var type: String { "inAppPurchaseAppStoreReviewScreenshots" }
        public var attributes: Attributes?

        public init(id: String,
                    attributes: Attributes? = nil)
        {
            self.id = id
            self.attributes = attributes
        }

        public struct Attributes {
            public var sourceFileChecksum: String?
            public var uploaded: Bool?

            public init(sourceFileChecksum: String? = nil,
                        uploaded: Bool? = nil)
            {
                self.sourceFileChecksum = sourceFileChecksum
                self.uploaded = uploaded
            }
        }
    }
}
