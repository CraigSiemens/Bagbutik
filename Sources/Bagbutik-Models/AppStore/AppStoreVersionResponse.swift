import Bagbutik_Core
import Foundation

/**
 # AppStoreVersionResponse
 A response that contains a single App Store Versions resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/appstoreversionresponse>
 */
public struct AppStoreVersionResponse {
    public let data: AppStoreVersion
    public var included: [Included]?
    public let links: DocumentLinks

    public init(data: AppStoreVersion,
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

    public func getAppClipDefaultExperience() -> AppClipDefaultExperience? {
        included?.compactMap { relationship -> AppClipDefaultExperience? in
            guard case let .appClipDefaultExperience(appClipDefaultExperience) = relationship else { return nil }
            return appClipDefaultExperience
        }.first { $0.id == data.relationships?.appClipDefaultExperience?.data?.id }
    }

    public func getAppStoreReviewDetail() -> AppStoreReviewDetail? {
        included?.compactMap { relationship -> AppStoreReviewDetail? in
            guard case let .appStoreReviewDetail(appStoreReviewDetail) = relationship else { return nil }
            return appStoreReviewDetail
        }.first { $0.id == data.relationships?.appStoreReviewDetail?.data?.id }
    }

    public func getAppStoreVersionExperiments() -> [AppStoreVersionExperiment] {
        guard let appStoreVersionExperimentIds = data.relationships?.appStoreVersionExperiments?.data?.map(\.id),
              let appStoreVersionExperiments = included?.compactMap({ relationship -> AppStoreVersionExperiment? in
                  guard case let .appStoreVersionExperiment(appStoreVersionExperiment) = relationship else { return nil }
                  return appStoreVersionExperimentIds.contains(appStoreVersionExperiment.id) ? appStoreVersionExperiment : nil
              })
        else {
            return []
        }
        return appStoreVersionExperiments
    }

    public func getAppStoreVersionExperimentsV2() -> [AppStoreVersionExperiment] {
        guard let appStoreVersionExperimentsV2Ids = data.relationships?.appStoreVersionExperimentsV2?.data?.map(\.id),
              let appStoreVersionExperimentsV2 = included?.compactMap({ relationship -> AppStoreVersionExperiment? in
                  guard case let .appStoreVersionExperiment(appStoreVersionExperimentsV2) = relationship else { return nil }
                  return appStoreVersionExperimentsV2Ids.contains(appStoreVersionExperimentsV2.id) ? appStoreVersionExperimentsV2 : nil
              })
        else {
            return []
        }
        return appStoreVersionExperimentsV2
    }

    public func getAppStoreVersionLocalizations() -> [AppStoreVersionLocalization] {
        guard let appStoreVersionLocalizationIds = data.relationships?.appStoreVersionLocalizations?.data?.map(\.id),
              let appStoreVersionLocalizations = included?.compactMap({ relationship -> AppStoreVersionLocalization? in
                  guard case let .appStoreVersionLocalization(appStoreVersionLocalization) = relationship else { return nil }
                  return appStoreVersionLocalizationIds.contains(appStoreVersionLocalization.id) ? appStoreVersionLocalization : nil
              })
        else {
            return []
        }
        return appStoreVersionLocalizations
    }

    public func getAppStoreVersionPhasedRelease() -> AppStoreVersionPhasedRelease? {
        included?.compactMap { relationship -> AppStoreVersionPhasedRelease? in
            guard case let .appStoreVersionPhasedRelease(appStoreVersionPhasedRelease) = relationship else { return nil }
            return appStoreVersionPhasedRelease
        }.first { $0.id == data.relationships?.appStoreVersionPhasedRelease?.data?.id }
    }

    public func getAppStoreVersionSubmission() -> AppStoreVersionSubmission? {
        included?.compactMap { relationship -> AppStoreVersionSubmission? in
            guard case let .appStoreVersionSubmission(appStoreVersionSubmission) = relationship else { return nil }
            return appStoreVersionSubmission
        }.first { $0.id == data.relationships?.appStoreVersionSubmission?.data?.id }
    }

    public func getBuild() -> Build? {
        included?.compactMap { relationship -> Build? in
            guard case let .build(build) = relationship else { return nil }
            return build
        }.first { $0.id == data.relationships?.build?.data?.id }
    }

    public func getRoutingAppCoverage() -> RoutingAppCoverage? {
        included?.compactMap { relationship -> RoutingAppCoverage? in
            guard case let .routingAppCoverage(routingAppCoverage) = relationship else { return nil }
            return routingAppCoverage
        }.first { $0.id == data.relationships?.routingAppCoverage?.data?.id }
    }

    public enum Included {
        case ageRatingDeclaration(AgeRatingDeclaration)
        case app(App)
        case appClipDefaultExperience(AppClipDefaultExperience)
        case appStoreReviewDetail(AppStoreReviewDetail)
        case appStoreVersionExperiment(AppStoreVersionExperiment)
        case appStoreVersionExperimentV2(AppStoreVersionExperimentV2)
        case appStoreVersionLocalization(AppStoreVersionLocalization)
        case appStoreVersionPhasedRelease(AppStoreVersionPhasedRelease)
        case appStoreVersionSubmission(AppStoreVersionSubmission)
        case build(Build)
        case routingAppCoverage(RoutingAppCoverage)
    }
}
