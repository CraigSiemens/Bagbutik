import Bagbutik_Core
import Foundation

/**
 # CustomerReview
 The data structure that represents a Customer Reviews resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/customerreview>
 */
public struct CustomerReview: Identifiable {
    /// The opaque resource ID that uniquely identifies the `CustomerReviews` resource.
    public let id: String
    /// Navigational links that include the self-link.
    public var links: ResourceLinks?
    /// The resource type.
    public var type: String { "customerReviews" }
    /// The attributes of the customer’s review including its content.
    public var attributes: Attributes?
    /// Navigational links to related data and included resource types and IDs.
    public var relationships: Relationships?

    public init(id: String,
                links: ResourceLinks? = nil,
                attributes: Attributes? = nil,
                relationships: Relationships? = nil)
    {
        self.id = id
        self.links = links
        self.attributes = attributes
        self.relationships = relationships
    }

    /**
     # CustomerReview.Attributes
     The attributes of the customer’s review including its content.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/customerreview/attributes>
     */
    public struct Attributes {
        /// The review text that the customer wrote.
        public var body: String?
        /// The date and time the customer created the review.
        public var createdDate: Date?
        /// The rating the customer provided.
        public var rating: Int?
        /// The customer’s nickname used in the review.
        public var reviewerNickname: String?
        /// The App Store territory.
        public var territory: TerritoryCode?
        /// The title that the customer wrote for the review.
        public var title: String?

        public init(body: String? = nil,
                    createdDate: Date? = nil,
                    rating: Int? = nil,
                    reviewerNickname: String? = nil,
                    territory: TerritoryCode? = nil,
                    title: String? = nil)
        {
            self.body = body
            self.createdDate = createdDate
            self.rating = rating
            self.reviewerNickname = reviewerNickname
            self.territory = territory
            self.title = title
        }
    }

    /**
     # CustomerReview.Relationships
     The relationships you included in the request and those on which you can operate.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/customerreview/relationships>
     */
    public struct Relationships {
        /// The data and links that describe the relationship between the `CustomerReviews` and `CustomerReviewResponses` resources.
        public var response: Response?

        public init(response: Response? = nil) {
            self.response = response
        }

        /**
         # CustomerReview.Relationships.Response
         The data and links that describe the relationship between the resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/customerreview/relationships/response>
         */
        public struct Response {
            /// The type and ID of a related resource.
            @NullCodable public var data: Data?
            /// The links to the related data and the relationship’s self-link.
            public var links: Links?

            public init(data: Data? = nil,
                        links: Links? = nil)
            {
                self.data = data
                self.links = links
            }

            /**
             # CustomerReview.Relationships.Response.Data
             The type and ID of a related resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/customerreview/relationships/response/data>
             */
            public struct Data: Identifiable {
                /// The opaque resource ID that uniquely identifies the resource.
                public let id: String
                /// The resource type.
                public var type: String { "customerReviewResponses" }

                public init(id: String) {
                    self.id = id
                }
            }

            /**
             # CustomerReview.Relationships.Response.Links
             The links to the related data and the relationship’s self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/customerreview/relationships/response/links>
             */
            public struct Links {
                /// The link to the related data.
                public var related: String?
                /// The relashionship’s self-link.
                public var itself: String?

                public init(related: String? = nil,
                            self itself: String? = nil)
                {
                    self.related = related
                    self.itself = itself
                }
            }
        }
    }
}
