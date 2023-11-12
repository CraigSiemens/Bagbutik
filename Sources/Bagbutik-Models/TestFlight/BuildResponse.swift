import Bagbutik_Core
import Foundation

/**
 # BuildResponse
 A response that contains a single Builds resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/buildresponse>
 */
public struct BuildResponse {
    /// The resource data.
    public let data: Build
    public var included: [Included]?
    /// Navigational links that include the self-link.
    public let links: DocumentLinks

    public init(data: Build,
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

    public func getAppEncryptionDeclaration() -> AppEncryptionDeclaration? {
        included?.compactMap { relationship -> AppEncryptionDeclaration? in
            guard case let .appEncryptionDeclaration(appEncryptionDeclaration) = relationship else { return nil }
            return appEncryptionDeclaration
        }.first { $0.id == data.relationships?.appEncryptionDeclaration?.data?.id }
    }

    public func getAppStoreVersion() -> AppStoreVersion? {
        included?.compactMap { relationship -> AppStoreVersion? in
            guard case let .appStoreVersion(appStoreVersion) = relationship else { return nil }
            return appStoreVersion
        }.first { $0.id == data.relationships?.appStoreVersion?.data?.id }
    }

    public func getBetaAppReviewSubmission() -> BetaAppReviewSubmission? {
        included?.compactMap { relationship -> BetaAppReviewSubmission? in
            guard case let .betaAppReviewSubmission(betaAppReviewSubmission) = relationship else { return nil }
            return betaAppReviewSubmission
        }.first { $0.id == data.relationships?.betaAppReviewSubmission?.data?.id }
    }

    public func getBetaBuildLocalizations() -> [BetaBuildLocalization] {
        guard let betaBuildLocalizationIds = data.relationships?.betaBuildLocalizations?.data?.map(\.id),
              let betaBuildLocalizations = included?.compactMap({ relationship -> BetaBuildLocalization? in
                  guard case let .betaBuildLocalization(betaBuildLocalization) = relationship else { return nil }
                  return betaBuildLocalizationIds.contains(betaBuildLocalization.id) ? betaBuildLocalization : nil
              })
        else {
            return []
        }
        return betaBuildLocalizations
    }

    public func getBetaGroups() -> [BetaGroup] {
        guard let betaGroupIds = data.relationships?.betaGroups?.data?.map(\.id),
              let betaGroups = included?.compactMap({ relationship -> BetaGroup? in
                  guard case let .betaGroup(betaGroup) = relationship else { return nil }
                  return betaGroupIds.contains(betaGroup.id) ? betaGroup : nil
              })
        else {
            return []
        }
        return betaGroups
    }

    public func getBuildBetaDetail() -> BuildBetaDetail? {
        included?.compactMap { relationship -> BuildBetaDetail? in
            guard case let .buildBetaDetail(buildBetaDetail) = relationship else { return nil }
            return buildBetaDetail
        }.first { $0.id == data.relationships?.buildBetaDetail?.data?.id }
    }

    public func getBuildBundles() -> [BuildBundle] {
        guard let buildBundleIds = data.relationships?.buildBundles?.data?.map(\.id),
              let buildBundles = included?.compactMap({ relationship -> BuildBundle? in
                  guard case let .buildBundle(buildBundle) = relationship else { return nil }
                  return buildBundleIds.contains(buildBundle.id) ? buildBundle : nil
              })
        else {
            return []
        }
        return buildBundles
    }

    public func getIcons() -> [BuildIcon] {
        guard let iconIds = data.relationships?.icons?.data?.map(\.id),
              let icons = included?.compactMap({ relationship -> BuildIcon? in
                  guard case let .buildIcon(icon) = relationship else { return nil }
                  return iconIds.contains(icon.id) ? icon : nil
              })
        else {
            return []
        }
        return icons
    }

    public func getIndividualTesters() -> [BetaTester] {
        guard let individualTesterIds = data.relationships?.individualTesters?.data?.map(\.id),
              let individualTesters = included?.compactMap({ relationship -> BetaTester? in
                  guard case let .betaTester(individualTester) = relationship else { return nil }
                  return individualTesterIds.contains(individualTester.id) ? individualTester : nil
              })
        else {
            return []
        }
        return individualTesters
    }

    public func getPreReleaseVersion() -> PrereleaseVersion? {
        included?.compactMap { relationship -> PrereleaseVersion? in
            guard case let .prereleaseVersion(preReleaseVersion) = relationship else { return nil }
            return preReleaseVersion
        }.first { $0.id == data.relationships?.preReleaseVersion?.data?.id }
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
