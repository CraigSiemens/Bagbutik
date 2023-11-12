import Bagbutik_Core
import Foundation

/**
 # BetaAppReviewSubmission
 The data structure that represents a Beta App Review Submissions resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/betaappreviewsubmission>
 */
public struct BetaAppReviewSubmission: Identifiable {
    /// The opaque resource ID that uniquely identifies the resource.
    public let id: String
    /// Navigational links that include the self-link.
    public var links: ResourceLinks?
    /// The resource type.
    public var type: String { "betaAppReviewSubmissions" }
    /// The resource's attributes.
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
     # BetaAppReviewSubmission.Attributes
     Attributes that describe a Beta App Review Submissions resource.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/betaappreviewsubmission/attributes>
     */
    public struct Attributes {
        /// A state that indicates the current status of the beta app review submission.
        public var betaReviewState: BetaReviewState?
        public var submittedDate: Date?

        public init(betaReviewState: BetaReviewState? = nil,
                    submittedDate: Date? = nil)
        {
            self.betaReviewState = betaReviewState
            self.submittedDate = submittedDate
        }
    }

    /**
     # BetaAppReviewSubmission.Relationships
     The relationships you included in the request and those on which you can operate.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/betaappreviewsubmission/relationships>
     */
    public struct Relationships {
        public var build: Build?

        public init(build: Build? = nil) {
            self.build = build
        }

        /**
         # BetaAppReviewSubmission.Relationships.Build
         The data and links that describe the relationship between the resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/betaappreviewsubmission/relationships/build>
         */
        public struct Build {
            @NullCodable public var data: Data?
            public var links: Links?

            public init(data: Data? = nil,
                        links: Links? = nil)
            {
                self.data = data
                self.links = links
            }

            /**
             # BetaAppReviewSubmission.Relationships.Build.Data
             The type and ID of a related resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/betaappreviewsubmission/relationships/build/data>
             */
            public struct Data: Identifiable {
                /// The opaque resource ID that uniquely identifies the resource.
                public let id: String
                /// The resource type.
                public var type: String { "builds" }

                public init(id: String) {
                    self.id = id
                }
            }

            /**
             # BetaAppReviewSubmission.Relationships.Build.Links
             The links to the related data and the relationship's self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/betaappreviewsubmission/relationships/build/links>
             */
            public struct Links {
                public var related: String?
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
