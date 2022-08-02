import Foundation

/**
 # AppScreenshotCreateRequest
 The request body you use to create an App Screenshot.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/appscreenshotcreaterequest>
 */
public struct AppScreenshotCreateRequest: Codable, RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    /**
     # AppScreenshotCreateRequest.Data
     The data element of the request body.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/appscreenshotcreaterequest/data>
     */
    public struct Data: Codable {
        public var type: String { "appScreenshots" }
        public let attributes: Attributes
        public let relationships: Relationships

        public init(attributes: Attributes,
                    relationships: Relationships)
        {
            self.attributes = attributes
            self.relationships = relationships
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            attributes = try container.decode(Attributes.self, forKey: .attributes)
            relationships = try container.decode(Relationships.self, forKey: .relationships)
            if try container.decode(String.self, forKey: .type) != type {
                throw DecodingError.dataCorruptedError(forKey: .type, in: container, debugDescription: "Not matching \(type)")
            }
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encode(type, forKey: .type)
            try container.encode(attributes, forKey: .attributes)
            try container.encode(relationships, forKey: .relationships)
        }

        private enum CodingKeys: String, CodingKey {
            case attributes
            case relationships
            case type
        }

        /**
         # AppScreenshotCreateRequest.Data.Attributes
         Attributes that you set that describe the new resource.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/appscreenshotcreaterequest/data/attributes>
         */
        public struct Attributes: Codable {
            public let fileName: String
            public let fileSize: Int

            public init(fileName: String,
                        fileSize: Int)
            {
                self.fileName = fileName
                self.fileSize = fileSize
            }
        }

        /**
         # AppScreenshotCreateRequest.Data.Relationships
         The relationships to other resources that you can set with this request.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/appscreenshotcreaterequest/data/relationships>
         */
        public struct Relationships: Codable {
            public let appScreenshotSet: AppScreenshotSet

            public init(appScreenshotSet: AppScreenshotSet) {
                self.appScreenshotSet = appScreenshotSet
            }

            /**
             # AppScreenshotCreateRequest.Data.Relationships.AppScreenshotSet
             The relationships to other resources that you can set with this request.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appscreenshotcreaterequest/data/relationships/appscreenshotset>
             */
            public struct AppScreenshotSet: Codable {
                public let data: Data

                public init(data: Data) {
                    self.data = data
                }

                /**
                 # AppScreenshotCreateRequest.Data.Relationships.AppScreenshotSet.Data
                 The type and ID of the resource that you're relating with the resource you're creating.

                 Full documentation:
                 <https://developer.apple.com/documentation/appstoreconnectapi/appscreenshotcreaterequest/data/relationships/appscreenshotset/data>
                 */
                public struct Data: Codable, Identifiable {
                    public let id: String
                    public var type: String { "appScreenshotSets" }

                    public init(id: String) {
                        self.id = id
                    }

                    public init(from decoder: Decoder) throws {
                        let container = try decoder.container(keyedBy: CodingKeys.self)
                        id = try container.decode(String.self, forKey: .id)
                        if try container.decode(String.self, forKey: .type) != type {
                            throw DecodingError.dataCorruptedError(forKey: .type, in: container, debugDescription: "Not matching \(type)")
                        }
                    }

                    public func encode(to encoder: Encoder) throws {
                        var container = encoder.container(keyedBy: CodingKeys.self)
                        try container.encode(id, forKey: .id)
                        try container.encode(type, forKey: .type)
                    }

                    private enum CodingKeys: String, CodingKey {
                        case id
                        case type
                    }
                }
            }
        }
    }
}
