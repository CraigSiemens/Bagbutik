import Bagbutik_Core
import Foundation

/**
 # CiActionType
 A string that represents the type of an Xcode Cloud workflow’s action.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/ciactiontype>
 */
public enum CiActionType: String, CodableEnum, CaseIterable {
    /// The action is a build action.
    case build = "BUILD"
    /// The action is an analyze action.
    case analyze = "ANALYZE"
    /// The action is a test action.
    case test = "TEST"
    /// The action is an archive action.
    case archive = "ARCHIVE"

    var allCases: [Self] {
        [
            .build,
            .analyze,
            .test,
            .archive,
        ]
    }
}
