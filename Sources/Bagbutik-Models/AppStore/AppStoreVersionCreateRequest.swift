import Bagbutik_Core
import Foundation

/**
 # AppStoreVersionCreateRequest
 The request body you use to create an App Store Version.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/appstoreversioncreaterequest>
 */
public struct AppStoreVersionCreateRequest: Codable, RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        data = try container.decode(Data.self, forKey: .data)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(data, forKey: .data)
    }

    private enum CodingKeys: String, CodingKey {
        case data
    }

    /**
     # AppStoreVersionCreateRequest.Data
     The data element of the request body.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/appstoreversioncreaterequest/data>
     */
    public struct Data: Codable {
        public var type: String { "appStoreVersions" }
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
         # AppStoreVersionCreateRequest.Data.Attributes
         Attributes that you set that describe the new resource.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/appstoreversioncreaterequest/data/attributes>
         */
        public struct Attributes: Codable {
            public var copyright: String?
            public var earliestReleaseDate: Date?
            public let platform: Platform
            public var releaseType: AppStoreVersion.Attributes.ReleaseType?
            public let versionString: String

            public init(copyright: String? = nil,
                        earliestReleaseDate: Date? = nil,
                        platform: Platform,
                        releaseType: AppStoreVersion.Attributes.ReleaseType? = nil,
                        versionString: String)
            {
                self.copyright = copyright
                self.earliestReleaseDate = earliestReleaseDate
                self.platform = platform
                self.releaseType = releaseType
                self.versionString = versionString
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                copyright = try container.decodeIfPresent(String.self, forKey: .copyright)
                earliestReleaseDate = try container.decodeIfPresent(Date.self, forKey: .earliestReleaseDate)
                platform = try container.decode(Platform.self, forKey: .platform)
                releaseType = try container.decodeIfPresent(AppStoreVersion.Attributes.ReleaseType.self, forKey: .releaseType)
                versionString = try container.decode(String.self, forKey: .versionString)
            }

            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                try container.encodeIfPresent(copyright, forKey: .copyright)
                try container.encodeIfPresent(earliestReleaseDate, forKey: .earliestReleaseDate)
                try container.encode(platform, forKey: .platform)
                try container.encodeIfPresent(releaseType, forKey: .releaseType)
                try container.encode(versionString, forKey: .versionString)
            }

            private enum CodingKeys: String, CodingKey {
                case copyright
                case earliestReleaseDate
                case platform
                case releaseType
                case versionString
            }
        }

        /**
         # AppStoreVersionCreateRequest.Data.Relationships
         The relationships to other resources that you can set with this request.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/appstoreversioncreaterequest/data/relationships>
         */
        public struct Relationships: Codable {
            public let app: App
            public var appStoreVersionLocalizations: AppStoreVersionLocalizations?
            public var build: Build?

            public init(app: App,
                        appStoreVersionLocalizations: AppStoreVersionLocalizations? = nil,
                        build: Build? = nil)
            {
                self.app = app
                self.appStoreVersionLocalizations = appStoreVersionLocalizations
                self.build = build
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                app = try container.decode(App.self, forKey: .app)
                appStoreVersionLocalizations = try container.decodeIfPresent(AppStoreVersionLocalizations.self, forKey: .appStoreVersionLocalizations)
                build = try container.decodeIfPresent(Build.self, forKey: .build)
            }

            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                try container.encode(app, forKey: .app)
                try container.encodeIfPresent(appStoreVersionLocalizations, forKey: .appStoreVersionLocalizations)
                try container.encodeIfPresent(build, forKey: .build)
            }

            private enum CodingKeys: String, CodingKey {
                case app
                case appStoreVersionLocalizations
                case build
            }

            /**
             # AppStoreVersionCreateRequest.Data.Relationships.App
             The relationships to other resources that you can set with this request.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appstoreversioncreaterequest/data/relationships/app>
             */
            public struct App: Codable {
                public let data: Data

                public init(data: Data) {
                    self.data = data
                }

                public init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: CodingKeys.self)
                    data = try container.decode(Data.self, forKey: .data)
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: CodingKeys.self)
                    try container.encode(data, forKey: .data)
                }

                private enum CodingKeys: String, CodingKey {
                    case data
                }

                /**
                 # AppStoreVersionCreateRequest.Data.Relationships.App.Data
                 The type and ID of the resource that you're relating with the resource you're creating.

                 Full documentation:
                 <https://developer.apple.com/documentation/appstoreconnectapi/appstoreversioncreaterequest/data/relationships/app/data>
                 */
                public struct Data: Codable, Identifiable {
                    public let id: String
                    public var type: String { "apps" }

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

            public struct AppStoreVersionLocalizations: Codable {
                @NullCodable public var data: [Data]?

                public init(data: [Data]? = nil) {
                    self.data = data
                }

                public init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: CodingKeys.self)
                    data = try container.decodeIfPresent([Data].self, forKey: .data)
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: CodingKeys.self)
                    try container.encode(data, forKey: .data)
                }

                private enum CodingKeys: String, CodingKey {
                    case data
                }

                public struct Data: Codable, Identifiable {
                    public let id: String
                    public var type: String { "appStoreVersionLocalizations" }

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

            /**
             # AppStoreVersionCreateRequest.Data.Relationships.Build
             The relationships to other resources that you can set with this request.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appstoreversioncreaterequest/data/relationships/build>
             */
            public struct Build: Codable {
                @NullCodable public var data: Data?

                public init(data: Data? = nil) {
                    self.data = data
                }

                public init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: CodingKeys.self)
                    data = try container.decodeIfPresent(Data.self, forKey: .data)
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: CodingKeys.self)
                    try container.encode(data, forKey: .data)
                }

                private enum CodingKeys: String, CodingKey {
                    case data
                }

                /**
                 # AppStoreVersionCreateRequest.Data.Relationships.Build.Data
                 The type and ID of the resource that you're relating with the resource you're creating.

                 Full documentation:
                 <https://developer.apple.com/documentation/appstoreconnectapi/appstoreversioncreaterequest/data/relationships/build/data>
                 */
                public struct Data: Codable, Identifiable {
                    public let id: String
                    public var type: String { "builds" }

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
