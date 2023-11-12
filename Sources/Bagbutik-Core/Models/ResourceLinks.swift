import Foundation

/**
 # ResourceLinks
 Self-links to requested resources.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/resourcelinks>
 */
public struct ResourceLinks {
    /// The link to the resource.
    public var itself: String?

    public init(self itself: String? = nil) {
        self.itself = itself
    }
}
