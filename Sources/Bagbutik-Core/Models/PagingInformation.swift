import Foundation

/**
 # PagingInformation
 Paging information for data responses.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/paginginformation>
 */
public struct PagingInformation {
    /// The paging information details.
    public let paging: Paging

    public init(paging: Paging) {
        self.paging = paging
    }

    /**
     # PagingInformation.Paging
     Paging details such as the total number of resources and the per-page limit.

     Adjust the number of resources returned per page by using the `limit` query parameter in your request. For example, the following request  returns the first 10 testers:
     ```
     GET /v1/betaTesters?limit=10
     ```

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/paginginformation/paging>
     */
    public struct Paging {
        /// The maximum number of resources to return per page, from 0 to 200.
        public let limit: Int
        /// The total number of resources matching your request.
        public var total: Int?

        public init(limit: Int,
                    total: Int? = nil)
        {
            self.limit = limit
            self.total = total
        }
    }
}
