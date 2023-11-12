import Bagbutik_Core
import Foundation

/**
 # InAppPurchase
 The data structure that represents the In-App Purchases resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/inapppurchase>
 */
public struct InAppPurchase: Identifiable {
    public let id: String
    public var links: ResourceLinks?
    public var type: String { "inAppPurchases" }
    public var attributes: Attributes?
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
     # InAppPurchase.Attributes
     Attributes that describe an In-App Purchases resource.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/inapppurchase/attributes>
     */
    public struct Attributes {
        public var inAppPurchaseType: InAppPurchaseType?
        public var productId: String?
        public var referenceName: String?
        public var state: State?

        public init(inAppPurchaseType: InAppPurchaseType? = nil,
                    productId: String? = nil,
                    referenceName: String? = nil,
                    state: State? = nil)
        {
            self.inAppPurchaseType = inAppPurchaseType
            self.productId = productId
            self.referenceName = referenceName
            self.state = state
        }

        public enum InAppPurchaseType: String {
            case automaticallyRenewableSubscription = "AUTOMATICALLY_RENEWABLE_SUBSCRIPTION"
            case nonConsumable = "NON_CONSUMABLE"
            case consumable = "CONSUMABLE"
            case nonRenewingSubscription = "NON_RENEWING_SUBSCRIPTION"
            case freeSubscription = "FREE_SUBSCRIPTION"
        }

        public enum State: String {
            case created = "CREATED"
            case developerSignedOff = "DEVELOPER_SIGNED_OFF"
            case developerActionNeeded = "DEVELOPER_ACTION_NEEDED"
            case deletionInProgress = "DELETION_IN_PROGRESS"
            case approved = "APPROVED"
            case deleted = "DELETED"
            case removedFromSale = "REMOVED_FROM_SALE"
            case developerRemovedFromSale = "DEVELOPER_REMOVED_FROM_SALE"
            case waitingForUpload = "WAITING_FOR_UPLOAD"
            case processingContent = "PROCESSING_CONTENT"
            case replaced = "REPLACED"
            case rejected = "REJECTED"
            case waitingForScreenshot = "WAITING_FOR_SCREENSHOT"
            case prepareForSubmission = "PREPARE_FOR_SUBMISSION"
            case missingMetadata = "MISSING_METADATA"
            case readyToSubmit = "READY_TO_SUBMIT"
            case waitingForReview = "WAITING_FOR_REVIEW"
            case inReview = "IN_REVIEW"
            case pendingDeveloperRelease = "PENDING_DEVELOPER_RELEASE"
        }
    }

    /**
     # InAppPurchase.Relationships
     The relationships you included in the request and those on which you can operate.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/inapppurchase/relationships>
     */
    public struct Relationships {
        public var apps: Apps?

        public init(apps: Apps? = nil) {
            self.apps = apps
        }

        /**
         # InAppPurchase.Relationships.Apps
         The data and links that describe the relationship between the resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/inapppurchase/relationships/apps>
         */
        public struct Apps {
            @NullCodable public var data: [Data]?
            public var links: Links?
            public var meta: PagingInformation?

            public init(data: [Data]? = nil,
                        links: Links? = nil,
                        meta: PagingInformation? = nil)
            {
                self.data = data
                self.links = links
                self.meta = meta
            }

            /**
             # InAppPurchase.Relationships.Apps.Data
             The type and ID of a related resource.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/inapppurchase/relationships/apps/data>
             */
            public struct Data: Identifiable {
                public let id: String
                public var type: String { "apps" }

                public init(id: String) {
                    self.id = id
                }
            }

            /**
             # InAppPurchase.Relationships.Apps.Links
             The links to the related data and the relationship's self-link.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/inapppurchase/relationships/apps/links>
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
