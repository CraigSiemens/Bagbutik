import Foundation

/**
 A response that contains a list of App Store Version Localization resources.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/appstoreversionlocalizationsresponse>
 */
public struct AppStoreVersionLocalizationsResponse: Codable, PagedResponse {
    public typealias Data = AppStoreVersionLocalization
    /// The resource data.
    public let data: [AppStoreVersionLocalization]
    /// The included related resources.
    public let included: [Included]?
    /// Navigational links that include the self-link.
    public let links: PagedDocumentLinks
    /// Paging information.
    public let meta: PagingInformation?

    public init(data: [AppStoreVersionLocalization], included: [Included]? = nil, links: PagedDocumentLinks, meta: PagingInformation? = nil) {
        self.data = data
        self.included = included
        self.links = links
        self.meta = meta
    }

    public enum Included: Codable {
        case appPreviewSet(AppPreviewSet)
        case appScreenshotSet(AppScreenshotSet)
        case appStoreVersion(AppStoreVersion)

        public init(from decoder: Decoder) throws {
            if let appPreviewSet = try? AppPreviewSet(from: decoder) {
                self = .appPreviewSet(appPreviewSet)
            } else if let appScreenshotSet = try? AppScreenshotSet(from: decoder) {
                self = .appScreenshotSet(appScreenshotSet)
            } else if let appStoreVersion = try? AppStoreVersion(from: decoder) {
                self = .appStoreVersion(appStoreVersion)
            } else {
                throw DecodingError.typeMismatch(Included.self, DecodingError.Context(codingPath: decoder.codingPath,
                                                                                      debugDescription: "Unknown Included"))
            }
        }

        public func encode(to encoder: Encoder) throws {
            switch self {
            case let .appPreviewSet(value):
                try value.encode(to: encoder)
            case let .appScreenshotSet(value):
                try value.encode(to: encoder)
            case let .appStoreVersion(value):
                try value.encode(to: encoder)
            }
        }

        private enum CodingKeys: String, CodingKey {
            case type
        }
    }
}
