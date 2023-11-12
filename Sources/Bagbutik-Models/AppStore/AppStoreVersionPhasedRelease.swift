import Bagbutik_Core
import Foundation

/**
 # AppStoreVersionPhasedRelease
 The data structure that represent an App Store Version Phased Releases resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/appstoreversionphasedrelease>
 */
public struct AppStoreVersionPhasedRelease: Identifiable {
    public let id: String
    public var links: ResourceLinks?
    public var type: String { "appStoreVersionPhasedReleases" }
    public var attributes: Attributes?

    public init(id: String,
                links: ResourceLinks? = nil,
                attributes: Attributes? = nil)
    {
        self.id = id
        self.links = links
        self.attributes = attributes
    }

    /**
     # AppStoreVersionPhasedRelease.Attributes
     Attributes that describe an App Store Version Phased Releases resource.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/appstoreversionphasedrelease/attributes>
     */
    public struct Attributes {
        public var currentDayNumber: Int?
        public var phasedReleaseState: PhasedReleaseState?
        public var startDate: Date?
        public var totalPauseDuration: Int?

        public init(currentDayNumber: Int? = nil,
                    phasedReleaseState: PhasedReleaseState? = nil,
                    startDate: Date? = nil,
                    totalPauseDuration: Int? = nil)
        {
            self.currentDayNumber = currentDayNumber
            self.phasedReleaseState = phasedReleaseState
            self.startDate = startDate
            self.totalPauseDuration = totalPauseDuration
        }
    }
}
