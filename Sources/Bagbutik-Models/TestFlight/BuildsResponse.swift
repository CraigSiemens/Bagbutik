import Bagbutik_Core
import Foundation

/**
 # BuildsResponse
 A response that contains a list of Builds resources.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/buildsresponse>
 */
public struct BuildsResponse: PagedResponse {
    public typealias Data = Build

    /// The resource data.
    public let data: [Build]
    public var included: [Included]?
    /// Navigational links that include the self-link.
    public let links: PagedDocumentLinks
    /// Paging information.
    public var meta: PagingInformation?

    public init(data: [Build],
                included: [Included]? = nil,
                links: PagedDocumentLinks,
                meta: PagingInformation? = nil)
    {
        self.data = data
        self.included = included
        self.links = links
        self.meta = meta
    }

    public func getApp(for build: Build) -> App? {
        included?.compactMap { relationship -> App? in
            guard case let .app(app) = relationship else { return nil }
            return app
        }.first { $0.id == build.relationships?.app?.data?.id }
    }

    public func getAppEncryptionDeclaration(for build: Build) -> AppEncryptionDeclaration? {
        included?.compactMap { relationship -> AppEncryptionDeclaration? in
            guard case let .appEncryptionDeclaration(appEncryptionDeclaration) = relationship else { return nil }
            return appEncryptionDeclaration
        }.first { $0.id == build.relationships?.appEncryptionDeclaration?.data?.id }
    }

    public func getAppStoreVersion(for build: Build) -> AppStoreVersion? {
        included?.compactMap { relationship -> AppStoreVersion? in
            guard case let .appStoreVersion(appStoreVersion) = relationship else { return nil }
            return appStoreVersion
        }.first { $0.id == build.relationships?.appStoreVersion?.data?.id }
    }

    public func getBetaAppReviewSubmission(for build: Build) -> BetaAppReviewSubmission? {
        included?.compactMap { relationship -> BetaAppReviewSubmission? in
            guard case let .betaAppReviewSubmission(betaAppReviewSubmission) = relationship else { return nil }
            return betaAppReviewSubmission
        }.first { $0.id == build.relationships?.betaAppReviewSubmission?.data?.id }
    }

    public func getBetaBuildLocalizations(for build: Build) -> [BetaBuildLocalization] {
        guard let betaBuildLocalizationIds = build.relationships?.betaBuildLocalizations?.data?.map(\.id),
              let betaBuildLocalizations = included?.compactMap({ relationship -> BetaBuildLocalization? in
                  guard case let .betaBuildLocalization(betaBuildLocalization) = relationship else { return nil }
                  return betaBuildLocalizationIds.contains(betaBuildLocalization.id) ? betaBuildLocalization : nil
              })
        else {
            return []
        }
        return betaBuildLocalizations
    }

    public func getBetaGroups(for build: Build) -> [BetaGroup] {
        guard let betaGroupIds = build.relationships?.betaGroups?.data?.map(\.id),
              let betaGroups = included?.compactMap({ relationship -> BetaGroup? in
                  guard case let .betaGroup(betaGroup) = relationship else { return nil }
                  return betaGroupIds.contains(betaGroup.id) ? betaGroup : nil
              })
        else {
            return []
        }
        return betaGroups
    }

    public func getBuildBetaDetail(for build: Build) -> BuildBetaDetail? {
        included?.compactMap { relationship -> BuildBetaDetail? in
            guard case let .buildBetaDetail(buildBetaDetail) = relationship else { return nil }
            return buildBetaDetail
        }.first { $0.id == build.relationships?.buildBetaDetail?.data?.id }
    }

    public func getBuildBundles(for build: Build) -> [BuildBundle] {
        guard let buildBundleIds = build.relationships?.buildBundles?.data?.map(\.id),
              let buildBundles = included?.compactMap({ relationship -> BuildBundle? in
                  guard case let .buildBundle(buildBundle) = relationship else { return nil }
                  return buildBundleIds.contains(buildBundle.id) ? buildBundle : nil
              })
        else {
            return []
        }
        return buildBundles
    }

    public func getIcons(for build: Build) -> [BuildIcon] {
        guard let iconIds = build.relationships?.icons?.data?.map(\.id),
              let icons = included?.compactMap({ relationship -> BuildIcon? in
                  guard case let .buildIcon(icon) = relationship else { return nil }
                  return iconIds.contains(icon.id) ? icon : nil
              })
        else {
            return []
        }
        return icons
    }

    public func getIndividualTesters(for build: Build) -> [BetaTester] {
        guard let individualTesterIds = build.relationships?.individualTesters?.data?.map(\.id),
              let individualTesters = included?.compactMap({ relationship -> BetaTester? in
                  guard case let .betaTester(individualTester) = relationship else { return nil }
                  return individualTesterIds.contains(individualTester.id) ? individualTester : nil
              })
        else {
            return []
        }
        return individualTesters
    }

    public func getPreReleaseVersion(for build: Build) -> PrereleaseVersion? {
        included?.compactMap { relationship -> PrereleaseVersion? in
            guard case let .prereleaseVersion(preReleaseVersion) = relationship else { return nil }
            return preReleaseVersion
        }.first { $0.id == build.relationships?.preReleaseVersion?.data?.id }
    }

    public enum Included {
        case app(App)
        case appEncryptionDeclaration(AppEncryptionDeclaration)
        case appStoreVersion(AppStoreVersion)
        case betaAppReviewSubmission(BetaAppReviewSubmission)
        case betaBuildLocalization(BetaBuildLocalization)
        case betaGroup(BetaGroup)
        case betaTester(BetaTester)
        case buildBetaDetail(BuildBetaDetail)
        case buildBundle(BuildBundle)
        case buildIcon(BuildIcon)
        case prereleaseVersion(PrereleaseVersion)
    }
}
