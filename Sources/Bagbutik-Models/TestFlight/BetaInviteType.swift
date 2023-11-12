import Bagbutik_Core
import Foundation

/**
 # BetaInviteType
 String that indicates how you offer a beta invitation.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/betainvitetype>
 */
public enum BetaInviteType: String, ParameterValue, CodableEnum, CaseIterable {
    case email = "EMAIL"
    case publicLink = "PUBLIC_LINK"

    var allCases: [Self] {
        [
            .email,
            .publicLink,
        ]
    }
}
