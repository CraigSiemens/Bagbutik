import Bagbutik_Core
import Foundation

/**
 # ProfilesResponse
 A response that contains a list of Profiles resources.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/profilesresponse>
 */
public struct ProfilesResponse: PagedResponse {
    public typealias Data = Profile

    /// The resource data.
    public let data: [Profile]
    public var included: [Included]?
    /// Navigational links that include the self-link.
    public let links: PagedDocumentLinks
    /// Paging information.
    public var meta: PagingInformation?

    public init(data: [Profile],
                included: [Included]? = nil,
                links: PagedDocumentLinks,
                meta: PagingInformation? = nil)
    {
        self.data = data
        self.included = included
        self.links = links
        self.meta = meta
    }

    public func getBundleId(for profile: Profile) -> BundleId? {
        included?.compactMap { relationship -> BundleId? in
            guard case let .bundleId(bundleId) = relationship else { return nil }
            return bundleId
        }.first { $0.id == profile.relationships?.bundleId?.data?.id }
    }

    public func getCertificates(for profile: Profile) -> [Certificate] {
        guard let certificateIds = profile.relationships?.certificates?.data?.map(\.id),
              let certificates = included?.compactMap({ relationship -> Certificate? in
                  guard case let .certificate(certificate) = relationship else { return nil }
                  return certificateIds.contains(certificate.id) ? certificate : nil
              })
        else {
            return []
        }
        return certificates
    }

    public func getDevices(for profile: Profile) -> [Device] {
        guard let deviceIds = profile.relationships?.devices?.data?.map(\.id),
              let devices = included?.compactMap({ relationship -> Device? in
                  guard case let .device(device) = relationship else { return nil }
                  return deviceIds.contains(device.id) ? device : nil
              })
        else {
            return []
        }
        return devices
    }

    public enum Included {
        case bundleId(BundleId)
        case certificate(Certificate)
        case device(Device)
    }
}
