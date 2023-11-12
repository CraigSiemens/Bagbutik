import Bagbutik_Core
import Foundation

public struct AppEventScreenshotCreateRequest: RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    public struct Data {
        public var type: String { "appEventScreenshots" }
        public let attributes: Attributes
        public let relationships: Relationships

        public init(attributes: Attributes,
                    relationships: Relationships)
        {
            self.attributes = attributes
            self.relationships = relationships
        }

        public struct Attributes {
            public let appEventAssetType: AppEventAssetType
            public let fileName: String
            public let fileSize: Int

            public init(appEventAssetType: AppEventAssetType,
                        fileName: String,
                        fileSize: Int)
            {
                self.appEventAssetType = appEventAssetType
                self.fileName = fileName
                self.fileSize = fileSize
            }
        }

        public struct Relationships {
            public let appEventLocalization: AppEventLocalization

            public init(appEventLocalization: AppEventLocalization) {
                self.appEventLocalization = appEventLocalization
            }

            public struct AppEventLocalization {
                public let data: Data

                public init(data: Data) {
                    self.data = data
                }

                public struct Data: Identifiable {
                    public let id: String
                    public var type: String { "appEventLocalizations" }

                    public init(id: String) {
                        self.id = id
                    }
                }
            }
        }
    }
}
