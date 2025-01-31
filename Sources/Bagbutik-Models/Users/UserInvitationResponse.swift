import Bagbutik_Core
import Foundation

/**
 # UserInvitationResponse
 A response that contains a single User Invitations resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/userinvitationresponse>
 */
public struct UserInvitationResponse: Codable {
    /// The resource data.
    public let data: UserInvitation
    public var included: [App]?
    /// Navigational links that include the self-link.
    public let links: DocumentLinks

    public init(data: UserInvitation,
                included: [App]? = nil,
                links: DocumentLinks)
    {
        self.data = data
        self.included = included
        self.links = links
    }
}
