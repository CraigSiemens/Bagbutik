import Bagbutik_Core
import Foundation

/**
 # AlternativeDistributionPackageDeltaResponse
 A response that contains a single alternative distribution package delta resource.

 This object is the response that contains a single alternative distribution package delta. For more information about alternative distribution package deltas see [Read information for alternative distribution package deltas](https://developer.apple.com/documentation/appstoreconnectapi/read_information_for_alternative_distribution_package_deltas). The schema of the response body is below.
 ```
 {
 ```

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/alternativedistributionpackagedeltaresponse>
 */
public struct AlternativeDistributionPackageDeltaResponse: Codable {
    public let data: AlternativeDistributionPackageDelta
    public let links: DocumentLinks

    public init(data: AlternativeDistributionPackageDelta,
                links: DocumentLinks)
    {
        self.data = data
        self.links = links
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        data = try container.decode(AlternativeDistributionPackageDelta.self, forKey: .data)
        links = try container.decode(DocumentLinks.self, forKey: .links)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(data, forKey: .data)
        try container.encode(links, forKey: .links)
    }

    private enum CodingKeys: String, CodingKey {
        case data
        case links
    }
}
