import Foundation

/**
 # PagedDocumentLinks
 Links related to the response document, including paging links.

 All the response data constitutes multiple *documents.*

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/pageddocumentlinks>
 */
public struct PagedDocumentLinks {
    /// The link to the first page of documents.
    public var first: String?
    /// The link to the next page of documents.
    public var next: String?
    /// The link that produced the current document.
    public let itself: String

    public init(first: String? = nil,
                next: String? = nil,
                self itself: String)
    {
        self.first = first
        self.next = next
        self.itself = itself
    }
}
