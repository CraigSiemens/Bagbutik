import Bagbutik_Core
import Foundation

/**
 # AppResponse
 A response that contains a single Apps resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/appresponse>
 */
public struct AppResponse {
    /// The resource data.
    public let data: App
    public var included: [Included]?
    /// Navigational links that include the self-link.
    public let links: DocumentLinks

    public init(data: App,
                included: [Included]? = nil,
                links: DocumentLinks)
    {
        self.data = data
        self.included = included
        self.links = links
    }

    public func getAppClips() -> [AppClip] {
        guard let appClipIds = data.relationships?.appClips?.data?.map(\.id),
              let appClips = included?.compactMap({ relationship -> AppClip? in
                  guard case let .appClip(appClip) = relationship else { return nil }
                  return appClipIds.contains(appClip.id) ? appClip : nil
              })
        else {
            return []
        }
        return appClips
    }

    public func getAppCustomProductPages() -> [AppCustomProductPage] {
        guard let appCustomProductPageIds = data.relationships?.appCustomProductPages?.data?.map(\.id),
              let appCustomProductPages = included?.compactMap({ relationship -> AppCustomProductPage? in
                  guard case let .appCustomProductPage(appCustomProductPage) = relationship else { return nil }
                  return appCustomProductPageIds.contains(appCustomProductPage.id) ? appCustomProductPage : nil
              })
        else {
            return []
        }
        return appCustomProductPages
    }

    public func getAppEncryptionDeclarations() -> [AppEncryptionDeclaration] {
        guard let appEncryptionDeclarationIds = data.relationships?.appEncryptionDeclarations?.data?.map(\.id),
              let appEncryptionDeclarations = included?.compactMap({ relationship -> AppEncryptionDeclaration? in
                  guard case let .appEncryptionDeclaration(appEncryptionDeclaration) = relationship else { return nil }
                  return appEncryptionDeclarationIds.contains(appEncryptionDeclaration.id) ? appEncryptionDeclaration : nil
              })
        else {
            return []
        }
        return appEncryptionDeclarations
    }

    public func getAppEvents() -> [AppEvent] {
        guard let appEventIds = data.relationships?.appEvents?.data?.map(\.id),
              let appEvents = included?.compactMap({ relationship -> AppEvent? in
                  guard case let .appEvent(appEvent) = relationship else { return nil }
                  return appEventIds.contains(appEvent.id) ? appEvent : nil
              })
        else {
            return []
        }
        return appEvents
    }

    public func getAppInfos() -> [AppInfo] {
        guard let appInfoIds = data.relationships?.appInfos?.data?.map(\.id),
              let appInfos = included?.compactMap({ relationship -> AppInfo? in
                  guard case let .appInfo(appInfo) = relationship else { return nil }
                  return appInfoIds.contains(appInfo.id) ? appInfo : nil
              })
        else {
            return []
        }
        return appInfos
    }

    public func getAppStoreVersionExperimentsV2() -> [AppStoreVersionExperimentV2] {
        guard let appStoreVersionExperimentsV2Ids = data.relationships?.appStoreVersionExperimentsV2?.data?.map(\.id),
              let appStoreVersionExperimentsV2 = included?.compactMap({ relationship -> AppStoreVersionExperimentV2? in
                  guard case let .appStoreVersionExperimentV2(appStoreVersionExperimentsV2) = relationship else { return nil }
                  return appStoreVersionExperimentsV2Ids.contains(appStoreVersionExperimentsV2.id) ? appStoreVersionExperimentsV2 : nil
              })
        else {
            return []
        }
        return appStoreVersionExperimentsV2
    }

    public func getAppStoreVersions() -> [AppStoreVersion] {
        guard let appStoreVersionIds = data.relationships?.appStoreVersions?.data?.map(\.id),
              let appStoreVersions = included?.compactMap({ relationship -> AppStoreVersion? in
                  guard case let .appStoreVersion(appStoreVersion) = relationship else { return nil }
                  return appStoreVersionIds.contains(appStoreVersion.id) ? appStoreVersion : nil
              })
        else {
            return []
        }
        return appStoreVersions
    }

    public func getBetaAppLocalizations() -> [BetaAppLocalization] {
        guard let betaAppLocalizationIds = data.relationships?.betaAppLocalizations?.data?.map(\.id),
              let betaAppLocalizations = included?.compactMap({ relationship -> BetaAppLocalization? in
                  guard case let .betaAppLocalization(betaAppLocalization) = relationship else { return nil }
                  return betaAppLocalizationIds.contains(betaAppLocalization.id) ? betaAppLocalization : nil
              })
        else {
            return []
        }
        return betaAppLocalizations
    }

    public func getBetaAppReviewDetail() -> BetaAppReviewDetail? {
        included?.compactMap { relationship -> BetaAppReviewDetail? in
            guard case let .betaAppReviewDetail(betaAppReviewDetail) = relationship else { return nil }
            return betaAppReviewDetail
        }.first { $0.id == data.relationships?.betaAppReviewDetail?.data?.id }
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

    public func getBetaLicenseAgreement() -> BetaLicenseAgreement? {
        included?.compactMap { relationship -> BetaLicenseAgreement? in
            guard case let .betaLicenseAgreement(betaLicenseAgreement) = relationship else { return nil }
            return betaLicenseAgreement
        }.first { $0.id == data.relationships?.betaLicenseAgreement?.data?.id }
    }

    public func getBuilds() -> [Build] {
        guard let buildIds = data.relationships?.builds?.data?.map(\.id),
              let builds = included?.compactMap({ relationship -> Build? in
                  guard case let .build(build) = relationship else { return nil }
                  return buildIds.contains(build.id) ? build : nil
              })
        else {
            return []
        }
        return builds
    }

    public func getCiProduct() -> CiProduct? {
        included?.compactMap { relationship -> CiProduct? in
            guard case let .ciProduct(ciProduct) = relationship else { return nil }
            return ciProduct
        }.first { $0.id == data.relationships?.ciProduct?.data?.id }
    }

    public func getEndUserLicenseAgreement() -> EndUserLicenseAgreement? {
        included?.compactMap { relationship -> EndUserLicenseAgreement? in
            guard case let .endUserLicenseAgreement(endUserLicenseAgreement) = relationship else { return nil }
            return endUserLicenseAgreement
        }.first { $0.id == data.relationships?.endUserLicenseAgreement?.data?.id }
    }

    public func getGameCenterDetail() -> GameCenterDetail? {
        included?.compactMap { relationship -> GameCenterDetail? in
            guard case let .gameCenterDetail(gameCenterDetail) = relationship else { return nil }
            return gameCenterDetail
        }.first { $0.id == data.relationships?.gameCenterDetail?.data?.id }
    }

    public func getGameCenterEnabledVersions() -> [GameCenterEnabledVersion] {
        guard let gameCenterEnabledVersionIds = data.relationships?.gameCenterEnabledVersions?.data?.map(\.id),
              let gameCenterEnabledVersions = included?.compactMap({ relationship -> GameCenterEnabledVersion? in
                  guard case let .gameCenterEnabledVersion(gameCenterEnabledVersion) = relationship else { return nil }
                  return gameCenterEnabledVersionIds.contains(gameCenterEnabledVersion.id) ? gameCenterEnabledVersion : nil
              })
        else {
            return []
        }
        return gameCenterEnabledVersions
    }

    public func getInAppPurchasesV2() -> [InAppPurchase] {
        guard let inAppPurchasesV2Ids = data.relationships?.inAppPurchasesV2?.data?.map(\.id),
              let inAppPurchasesV2 = included?.compactMap({ relationship -> InAppPurchase? in
                  guard case let .inAppPurchase(inAppPurchasesV2) = relationship else { return nil }
                  return inAppPurchasesV2Ids.contains(inAppPurchasesV2.id) ? inAppPurchasesV2 : nil
              })
        else {
            return []
        }
        return inAppPurchasesV2
    }

    public func getPreOrder() -> AppPreOrder? {
        included?.compactMap { relationship -> AppPreOrder? in
            guard case let .appPreOrder(preOrder) = relationship else { return nil }
            return preOrder
        }.first { $0.id == data.relationships?.preOrder?.data?.id }
    }

    public func getPreReleaseVersions() -> [PrereleaseVersion] {
        guard let preReleaseVersionIds = data.relationships?.preReleaseVersions?.data?.map(\.id),
              let preReleaseVersions = included?.compactMap({ relationship -> PrereleaseVersion? in
                  guard case let .prereleaseVersion(preReleaseVersion) = relationship else { return nil }
                  return preReleaseVersionIds.contains(preReleaseVersion.id) ? preReleaseVersion : nil
              })
        else {
            return []
        }
        return preReleaseVersions
    }

    public func getPromotedPurchases() -> [PromotedPurchase] {
        guard let promotedPurchaseIds = data.relationships?.promotedPurchases?.data?.map(\.id),
              let promotedPurchases = included?.compactMap({ relationship -> PromotedPurchase? in
                  guard case let .promotedPurchase(promotedPurchase) = relationship else { return nil }
                  return promotedPurchaseIds.contains(promotedPurchase.id) ? promotedPurchase : nil
              })
        else {
            return []
        }
        return promotedPurchases
    }

    public func getReviewSubmissions() -> [ReviewSubmission] {
        guard let reviewSubmissionIds = data.relationships?.reviewSubmissions?.data?.map(\.id),
              let reviewSubmissions = included?.compactMap({ relationship -> ReviewSubmission? in
                  guard case let .reviewSubmission(reviewSubmission) = relationship else { return nil }
                  return reviewSubmissionIds.contains(reviewSubmission.id) ? reviewSubmission : nil
              })
        else {
            return []
        }
        return reviewSubmissions
    }

    public func getSubscriptionGracePeriod() -> SubscriptionGracePeriod? {
        included?.compactMap { relationship -> SubscriptionGracePeriod? in
            guard case let .subscriptionGracePeriod(subscriptionGracePeriod) = relationship else { return nil }
            return subscriptionGracePeriod
        }.first { $0.id == data.relationships?.subscriptionGracePeriod?.data?.id }
    }

    public func getSubscriptionGroups() -> [SubscriptionGroup] {
        guard let subscriptionGroupIds = data.relationships?.subscriptionGroups?.data?.map(\.id),
              let subscriptionGroups = included?.compactMap({ relationship -> SubscriptionGroup? in
                  guard case let .subscriptionGroup(subscriptionGroup) = relationship else { return nil }
                  return subscriptionGroupIds.contains(subscriptionGroup.id) ? subscriptionGroup : nil
              })
        else {
            return []
        }
        return subscriptionGroups
    }

    public enum Included {
        case appClip(AppClip)
        case appCustomProductPage(AppCustomProductPage)
        case appEncryptionDeclaration(AppEncryptionDeclaration)
        case appEvent(AppEvent)
        case appInfo(AppInfo)
        case appPreOrder(AppPreOrder)
        case appPrice(AppPrice)
        case appStoreVersion(AppStoreVersion)
        case appStoreVersionExperimentV2(AppStoreVersionExperimentV2)
        case betaAppLocalization(BetaAppLocalization)
        case betaAppReviewDetail(BetaAppReviewDetail)
        case betaGroup(BetaGroup)
        case betaLicenseAgreement(BetaLicenseAgreement)
        case build(Build)
        case ciProduct(CiProduct)
        case endUserLicenseAgreement(EndUserLicenseAgreement)
        case gameCenterDetail(GameCenterDetail)
        case gameCenterEnabledVersion(GameCenterEnabledVersion)
        case inAppPurchase(InAppPurchase)
        case inAppPurchaseV2(InAppPurchaseV2)
        case prereleaseVersion(PrereleaseVersion)
        case promotedPurchase(PromotedPurchase)
        case reviewSubmission(ReviewSubmission)
        case subscriptionGracePeriod(SubscriptionGracePeriod)
        case subscriptionGroup(SubscriptionGroup)
        case territory(Territory)
    }
}
