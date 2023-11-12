import Foundation

/**
 # DocumentLinks
 Self-links to documents that can contain information for one or more resources.

 All the response data constitutes a *document*.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/documentlinks>
 */
public struct DocumentLinks {
    /// The link that produced the current document.
    public let itself: String

    public init(self itself: String) {
        self.itself = itself
    }
}
