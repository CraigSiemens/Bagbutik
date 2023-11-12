import Bagbutik_Core
import Foundation

/**
 # CustomerReviewResponseV1
 The data structure that represents the Customer Review Responses resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/customerreviewresponsev1>
 */
public struct CustomerReviewResponseV1: Identifiable {
    /// The opaque resource ID that uniquely identifies the `CustomerReviewResponses` resource.
    public let id: String
    /// Navigational links that include the self-link.
    public var links: ResourceLinks?
    /// The resource type.
    public var type: String { "customerReviewResponses" }
    /// The attributes of the response to the customer’s review, including its content.
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
     # CustomerReviewResponseV1.Attributes
     The attributes of the response to a customer’s review including its content.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/customerreviewresponsev1/attributes>
     */
    public struct Attributes {
        /// The date and time you last modified your response to the customer’s review.
        public var lastModifiedDate: Date?
        /// The text of the response that you wrote to the customer’s review.
        public var responseBody: String?
        /// The state of your response.
        public var state: State?

        public init(lastModifiedDate: Date? = nil,
                    responseBody: String? = nil,
                    state: State? = nil)
        {
            self.lastModifiedDate = lastModifiedDate
            self.responseBody = responseBody
            self.state = state
        }

        public enum State: String {
            case published = "PUBLISHED"
            case pendingPublish = "PENDING_PUBLISH"
        }
    }

    /**
     # CustomerReviewResponseV1.Relationships
     The relationships you included in the request and those on which you can operate.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/customerreviewresponsev1/relationships>
     */
    public struct Relationships {
        /// The customer review related to your response.
        public var review: Review?

        public init(review: Review? = nil) {
            self.review = review
        }

        /**
         # CustomerReviewResponseV1.Relationships.Review
         The data and links that describe the relationship between the resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/customerreviewresponsev1/relationships/review>
         */
        public struct Review {
            /// The type and ID of a resource that you’re relating with the resource you’re updating.
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
             # CustomerReviewResponseV1.Relationships.Review.Data
             The type and ID of a resource that you’re relating with the resource you’re updating.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/customerreviewresponsev1/relationships/review/data>
             */
            public struct Data: Identifiable {
                /// The opaque resource ID that uniquely identifies the `customerReviews` resource.
                public let id: String
                /// The resource type.
                public var type: String { "customerReviews" }

                public init(id: String) {
                    self.id = id
                }
            }

            /**
             # CustomerReviewResponseV1.Relationships.Review.Links
             The links to the related data and the relationship’s self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/customerreviewresponsev1/relationships/review/links>
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
