import Foundation

/**
 A response that contains a single Prerelease Versions resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/prereleaseversionresponse>
 */
public struct PrereleaseVersionResponse: Codable {
    /// The resource data.
    public let data: PrereleaseVersion
    /// The included related resources.
    public let included: [Included]?
    /// Navigational links that include the self-link.
    public let links: DocumentLinks

    public init(data: PrereleaseVersion, included: [Included]? = nil, links: DocumentLinks) {
        self.data = data
        self.included = included
        self.links = links
    }

    public enum Included: Codable {
        case app(App)
        case build(Build)

        public init(from decoder: Decoder) throws {
            if let app = try? App(from: decoder) {
                self = .app(app)
            } else if let build = try? Build(from: decoder) {
                self = .build(build)
            } else {
                throw DecodingError.typeMismatch(Included.self, DecodingError.Context(codingPath: decoder.codingPath,
                                                                                      debugDescription: "Unknown Included"))
            }
        }

        public func encode(to encoder: Encoder) throws {
            switch self {
            case let .app(value):
                try value.encode(to: encoder)
            case let .build(value):
                try value.encode(to: encoder)
            }
        }

        private enum CodingKeys: String, CodingKey {
            case type
        }
    }
}
