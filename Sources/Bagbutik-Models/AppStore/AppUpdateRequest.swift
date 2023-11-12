import Bagbutik_Core
import Foundation

/**
 # AppUpdateRequest
 The request body you use to update an App Update.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/appupdaterequest>
 */
public struct AppUpdateRequest: RequestBody {
    public let data: Data
    public var included: [AppPriceInlineCreate]?

    public init(data: Data,
                included: [AppPriceInlineCreate]? = nil)
    {
        self.data = data
        self.included = included
    }

    /**
     # AppUpdateRequest.Data
     The data element of the request body.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/appupdaterequest/data>
     */
    public struct Data: Identifiable {
        public let id: String
        public var type: String { "apps" }
        public var attributes: Attributes?
        public var relationships: Relationships?

        public init(id: String,
                    attributes: Attributes? = nil,
                    relationships: Relationships? = nil)
        {
            self.id = id
            self.attributes = attributes
            self.relationships = relationships
        }

        /**
         # AppUpdateRequest.Data.Attributes
         Attributes whose values you're changing as part of the update request.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/appupdaterequest/data/attributes>
         */
        public struct Attributes {
            @available(*, deprecated, message: "Apple has marked this property deprecated and it will be removed sometime in the future.")
            public var availableInNewTerritories: Bool? = nil
            public var bundleId: String?
            public var contentRightsDeclaration: App.Attributes.ContentRightsDeclaration?
            public var primaryLocale: String?
            public var subscriptionStatusUrl: String?
            public var subscriptionStatusUrlForSandbox: String?
            public var subscriptionStatusUrlVersion: SubscriptionStatusUrlVersion?
            public var subscriptionStatusUrlVersionForSandbox: SubscriptionStatusUrlVersion?

            @available(*, deprecated, message: "This uses a property Apple has marked as deprecated.")
            public init(availableInNewTerritories: Bool? = nil,
                        bundleId: String? = nil,
                        contentRightsDeclaration: App.Attributes.ContentRightsDeclaration? = nil,
                        primaryLocale: String? = nil,
                        subscriptionStatusUrl: String? = nil,
                        subscriptionStatusUrlForSandbox: String? = nil,
                        subscriptionStatusUrlVersion: SubscriptionStatusUrlVersion? = nil,
                        subscriptionStatusUrlVersionForSandbox: SubscriptionStatusUrlVersion? = nil)
            {
                self.availableInNewTerritories = availableInNewTerritories
                self.bundleId = bundleId
                self.contentRightsDeclaration = contentRightsDeclaration
                self.primaryLocale = primaryLocale
                self.subscriptionStatusUrl = subscriptionStatusUrl
                self.subscriptionStatusUrlForSandbox = subscriptionStatusUrlForSandbox
                self.subscriptionStatusUrlVersion = subscriptionStatusUrlVersion
                self.subscriptionStatusUrlVersionForSandbox = subscriptionStatusUrlVersionForSandbox
            }

            public init(bundleId: String? = nil,
                        contentRightsDeclaration: App.Attributes.ContentRightsDeclaration? = nil,
                        primaryLocale: String? = nil,
                        subscriptionStatusUrl: String? = nil,
                        subscriptionStatusUrlForSandbox: String? = nil,
                        subscriptionStatusUrlVersion: SubscriptionStatusUrlVersion? = nil,
                        subscriptionStatusUrlVersionForSandbox: SubscriptionStatusUrlVersion? = nil)
            {
                self.bundleId = bundleId
                self.contentRightsDeclaration = contentRightsDeclaration
                self.primaryLocale = primaryLocale
                self.subscriptionStatusUrl = subscriptionStatusUrl
                self.subscriptionStatusUrlForSandbox = subscriptionStatusUrlForSandbox
                self.subscriptionStatusUrlVersion = subscriptionStatusUrlVersion
                self.subscriptionStatusUrlVersionForSandbox = subscriptionStatusUrlVersionForSandbox
            }
        }

        /**
         # AppUpdateRequest.Data.Relationships
         The data and links that describe the relationship between the resources.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/appupdaterequest/data/relationships>
         */
        public struct Relationships {
            @available(*, deprecated, message: "Apple has marked this property deprecated and it will be removed sometime in the future.")
            public var availableTerritories: AvailableTerritories? = nil
            @available(*, deprecated, message: "Apple has marked this property deprecated and it will be removed sometime in the future.")
            public var prices: Prices? = nil

            @available(*, deprecated, message: "This uses a property Apple has marked as deprecated.")
            public init(availableTerritories: AvailableTerritories? = nil,
                        prices: Prices? = nil)
            {
                self.availableTerritories = availableTerritories
                self.prices = prices
            }

            public init() {}

            /**
             # AppUpdateRequest.Data.Relationships.AvailableTerritories
             The data and links that describe the relationship between the resources.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appupdaterequest/data/relationships/availableterritories>
             */
            public struct AvailableTerritories {
                @NullCodable public var data: [Data]?

                public init(data: [Data]? = nil) {
                    self.data = data
                }

                /**
                 # AppUpdateRequest.Data.Relationships.AvailableTerritories.Data
                 The type and ID of a resource that you're relating with the resource you're updating.

                 Full documentation:
                 <https://developer.apple.com/documentation/appstoreconnectapi/appupdaterequest/data/relationships/availableterritories/data>
                 */
                public struct Data: Identifiable {
                    public let id: String
                    public var type: String { "territories" }

                    public init(id: String) {
                        self.id = id
                    }
                }
            }

            /**
             # AppUpdateRequest.Data.Relationships.Prices
             The data and links that describe the relationship between the resources.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/appupdaterequest/data/relationships/prices>
             */
            public struct Prices {
                @NullCodable public var data: [Data]?

                public init(data: [Data]? = nil) {
                    self.data = data
                }

                /**
                 # AppUpdateRequest.Data.Relationships.Prices.Data
                 The type and ID of a resource that you're relating with the resource you're updating.

                 Full documentation:
                 <https://developer.apple.com/documentation/appstoreconnectapi/appupdaterequest/data/relationships/prices/data>
                 */
                public struct Data: Identifiable {
                    public let id: String
                    public var type: String { "appPrices" }

                    public init(id: String) {
                        self.id = id
                    }
                }
            }
        }
    }
}
