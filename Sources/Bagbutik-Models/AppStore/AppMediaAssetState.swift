import Bagbutik_Core
import Foundation

/**
 # AppMediaAssetState
 The state of an app or media upload, including any errors and warnings.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/appmediaassetstate>
 */
public struct AppMediaAssetState: Codable {
    public var errors: [AppMediaStateError]?
    public var state: State?
    public var warnings: [AppMediaStateError]?

    public init(errors: [AppMediaStateError]? = nil,
                state: State? = nil,
                warnings: [AppMediaStateError]? = nil)
    {
        self.errors = errors
        self.state = state
        self.warnings = warnings
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        errors = try container.decodeIfPresent([AppMediaStateError].self, forKey: .errors)
        state = try container.decodeIfPresent(State.self, forKey: .state)
        warnings = try container.decodeIfPresent([AppMediaStateError].self, forKey: .warnings)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(errors, forKey: .errors)
        try container.encodeIfPresent(state, forKey: .state)
        try container.encodeIfPresent(warnings, forKey: .warnings)
    }

    private enum CodingKeys: String, CodingKey {
        case errors
        case state
        case warnings
    }

    public enum State: String, CodableEnum, CaseIterable {
        case awaitingUpload = "AWAITING_UPLOAD"
        case uploadComplete = "UPLOAD_COMPLETE"
        case complete = "COMPLETE"
        case failed = "FAILED"

        var allCases: [Self] {
            [
                .awaitingUpload,
                .uploadComplete,
                .complete,
                .failed,
            ]
        }
    }
}
