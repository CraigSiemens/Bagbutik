import Bagbutik_Core
import Foundation

/**
 # AppClipHeaderImageResponse
 A response that contains a single App Clip Header Images resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/appclipheaderimageresponse>
 */
public struct AppClipHeaderImageResponse: Codable {
    /// The resource data.
    public let data: AppClipHeaderImage
    /// The requested relationship data.
    public var included: [AppClipDefaultExperienceLocalization]?
    /// Navigational links that include the self-link.
    public let links: DocumentLinks

    public init(data: AppClipHeaderImage,
                included: [AppClipDefaultExperienceLocalization]? = nil,
                links: DocumentLinks)
    {
        self.data = data
        self.included = included
        self.links = links
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        data = try container.decode(AppClipHeaderImage.self, forKey: .data)
        included = try container.decodeIfPresent([AppClipDefaultExperienceLocalization].self, forKey: .included)
        links = try container.decode(DocumentLinks.self, forKey: .links)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(data, forKey: .data)
        try container.encodeIfPresent(included, forKey: .included)
        try container.encode(links, forKey: .links)
    }

    private enum CodingKeys: String, CodingKey {
        case data
        case included
        case links
    }
}
