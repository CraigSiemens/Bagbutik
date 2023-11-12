import Bagbutik_Core
import Foundation

public struct AppEventVideoClipUpdateRequest: RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    public struct Data: Identifiable {
        public let id: String
        public var type: String { "appEventVideoClips" }
        public var attributes: Attributes?

        public init(id: String,
                    attributes: Attributes? = nil)
        {
            self.id = id
            self.attributes = attributes
        }

        public struct Attributes {
            public var previewFrameTimeCode: String?
            public var uploaded: Bool?

            public init(previewFrameTimeCode: String? = nil,
                        uploaded: Bool? = nil)
            {
                self.previewFrameTimeCode = previewFrameTimeCode
                self.uploaded = uploaded
            }
        }
    }
}
