import Foundation

/**
 The data structure that represents the App Clip Domain Statuses resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/appclipdomainstatus>
 */
public struct AppClipDomainStatus: Codable {
    /// The opaque resource ID that uniquely identifies the resource.
    public let id: String
    /// Navigational links that include the self-link.
    public let links: ResourceLinks
    /// The resource type.
    public var type: String { "appClipDomainStatuses" }
    /// The resource's attributes.
    public let attributes: Attributes?

    public init(id: String, links: ResourceLinks, attributes: Attributes? = nil) {
        self.id = id
        self.links = links
        self.attributes = attributes
    }

    /**
     The attributes that describe the App Clip Domain Status resource.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/appclipdomainstatus/attributes>
     */
    public struct Attributes: Codable {
        /// An array of domains you associated with your app or App Clip.
        public let domains: [Domains]?
        /// The date when App Store Connect last verified the status of an associated domain.
        public let lastUpdatedDate: Date?

        public init(domains: [Domains]? = nil, lastUpdatedDate: Date? = nil) {
            self.domains = domains
            self.lastUpdatedDate = lastUpdatedDate
        }

        public struct Domains: Codable {
            public let domain: String?
            public let errorCode: ErrorCode?
            public let isValid: Bool?
            public let lastUpdatedDate: Date?

            public init(domain: String? = nil, errorCode: ErrorCode? = nil, isValid: Bool? = nil, lastUpdatedDate: Date? = nil) {
                self.domain = domain
                self.errorCode = errorCode
                self.isValid = isValid
                self.lastUpdatedDate = lastUpdatedDate
            }

            public enum ErrorCode: String, Codable, CaseIterable {
                case badHttpResponse = "BAD_HTTP_RESPONSE"
                case badJsonContent = "BAD_JSON_CONTENT"
                case badPkcs7Signature = "BAD_PKCS7_SIGNATURE"
                case cannotReachAasaFile = "CANNOT_REACH_AASA_FILE"
                case dnsError = "DNS_ERROR"
                case insecureRedirectsForbidden = "INSECURE_REDIRECTS_FORBIDDEN"
                case invalidEntitlementMissingSection = "INVALID_ENTITLEMENT_MISSING_SECTION"
                case invalidEntitlementSyntaxError = "INVALID_ENTITLEMENT_SYNTAX_ERROR"
                case invalidEntitlementUnhandledSection = "INVALID_ENTITLEMENT_UNHANDLED_SECTION"
                case invalidEntitlementUnknownId = "INVALID_ENTITLEMENT_UNKNOWN_ID"
                case networkError = "NETWORK_ERROR"
                case networkErrorTemporary = "NETWORK_ERROR_TEMPORARY"
                case otherError = "OTHER_ERROR"
                case timeout = "TIMEOUT"
                case tlsError = "TLS_ERROR"
                case unexpectedError = "UNEXPECTED_ERROR"
            }
        }
    }
}
