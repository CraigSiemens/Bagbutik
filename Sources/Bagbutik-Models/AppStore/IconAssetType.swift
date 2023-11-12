import Bagbutik_Core
import Foundation

/**
 # IconAssetType
 String that represents the type of icon contained in the build.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/iconassettype>
 */
public enum IconAssetType: String, CodableEnum, CaseIterable {
    case appStore = "APP_STORE"
    case messagesAppStore = "MESSAGES_APP_STORE"
    case watchAppStore = "WATCH_APP_STORE"
    case tvOSHomeScreen = "TV_OS_HOME_SCREEN"
    case tvOSTopShelf = "TV_OS_TOP_SHELF"
    case alternateExperiment = "ALTERNATE_EXPERIMENT"

    var allCases: [Self] {
        [
            .appStore,
            .messagesAppStore,
            .watchAppStore,
            .tvOSHomeScreen,
            .tvOSTopShelf,
            .alternateExperiment,
        ]
    }
}
