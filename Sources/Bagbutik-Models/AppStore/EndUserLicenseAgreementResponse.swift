import Bagbutik_Core
import Foundation

/**
 # EndUserLicenseAgreementResponse
 A response that contains a single End User License Agreements resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/enduserlicenseagreementresponse>
 */
public struct EndUserLicenseAgreementResponse {
    public let data: EndUserLicenseAgreement
    public var included: [Included]?
    public let links: DocumentLinks

    public init(data: EndUserLicenseAgreement,
                included: [Included]? = nil,
                links: DocumentLinks)
    {
        self.data = data
        self.included = included
        self.links = links
    }

    public func getApp() -> App? {
        included?.compactMap { relationship -> App? in
            guard case let .app(app) = relationship else { return nil }
            return app
        }.first { $0.id == data.relationships?.app?.data?.id }
    }

    public func getTerritories() -> [Territory] {
        guard let territoryIds = data.relationships?.territories?.data?.map(\.id),
              let territories = included?.compactMap({ relationship -> Territory? in
                  guard case let .territory(territory) = relationship else { return nil }
                  return territoryIds.contains(territory.id) ? territory : nil
              })
        else {
            return []
        }
        return territories
    }

    public enum Included {
        case app(App)
        case territory(Territory)
    }
}
