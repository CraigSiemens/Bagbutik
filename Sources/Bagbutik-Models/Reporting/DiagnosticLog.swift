import Bagbutik_Core
import Foundation

/**
 # DiagnosticLog
 The data structure that represents the Diagnostic Logs resource.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/diagnosticlog>
 */
public struct DiagnosticLog: Identifiable {
    public let id: String
    public var links: ResourceLinks?
    public var type: String { "diagnosticLogs" }

    public init(id: String,
                links: ResourceLinks? = nil)
    {
        self.id = id
        self.links = links
    }
}
