import Bagbutik_Core
import Foundation

/**
 # DiagnosticSignature
 The data structure that represents the Diagnostic Signatures resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/diagnosticsignature>
 */
public struct DiagnosticSignature: Identifiable {
    /// The opaque resource ID that uniquely identifies a diagnostic signature.
    public let id: String
    /// Navigational links that include the self-link.
    public var links: ResourceLinks?
    /// The resource type.
    public var type: String { "diagnosticSignatures" }
    /// Attributes that describe the diagnostic signature resource.
    public var attributes: Attributes?

    public init(id: String,
                links: ResourceLinks? = nil,
                attributes: Attributes? = nil)
    {
        self.id = id
        self.links = links
        self.attributes = attributes
    }

    /**
     # DiagnosticSignature.Attributes
     Attributes that describe a Diagnostic Signatures resource.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/diagnosticsignature/attributes>
     */
    public struct Attributes {
        /// The diagnostic type.
        public var diagnosticType: DiagnosticType?
        /// The name of the signature, generated by the system.
        public var signature: String?
        /// The signature weight, which indicates how critical an issue reported by the diagnostic signature is. Weight values are between 0 and 1.
        public var weight: Double?

        public init(diagnosticType: DiagnosticType? = nil,
                    signature: String? = nil,
                    weight: Double? = nil)
        {
            self.diagnosticType = diagnosticType
            self.signature = signature
            self.weight = weight
        }

        public enum DiagnosticType: String {
            case diskWrites = "DISK_WRITES"
            case hangs = "HANGS"
        }
    }
}
