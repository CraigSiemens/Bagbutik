import Bagbutik_Core
import Foundation

public struct AppEncryptionDeclarationDocumentCreateRequest: RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    public struct Data {
        public var type: String { "appEncryptionDeclarationDocuments" }
        public let attributes: Attributes
        public let relationships: Relationships

        public init(attributes: Attributes,
                    relationships: Relationships)
        {
            self.attributes = attributes
            self.relationships = relationships
        }

        public struct Attributes {
            public let fileName: String
            public let fileSize: Int

            public init(fileName: String,
                        fileSize: Int)
            {
                self.fileName = fileName
                self.fileSize = fileSize
            }
        }

        public struct Relationships {
            public let appEncryptionDeclaration: AppEncryptionDeclaration

            public init(appEncryptionDeclaration: AppEncryptionDeclaration) {
                self.appEncryptionDeclaration = appEncryptionDeclaration
            }

            public struct AppEncryptionDeclaration {
                public let data: Data

                public init(data: Data) {
                    self.data = data
                }

                public struct Data: Identifiable {
                    public let id: String
                    public var type: String { "appEncryptionDeclarations" }

                    public init(id: String) {
                        self.id = id
                    }
                }
            }
        }
    }
}
