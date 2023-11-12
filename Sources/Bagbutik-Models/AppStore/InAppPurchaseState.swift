import Bagbutik_Core
import Foundation

public enum InAppPurchaseState: String, ParameterValue, CodableEnum, CaseIterable {
    case missingMetadata = "MISSING_METADATA"
    case waitingForUpload = "WAITING_FOR_UPLOAD"
    case processingContent = "PROCESSING_CONTENT"
    case readyToSubmit = "READY_TO_SUBMIT"
    case waitingForReview = "WAITING_FOR_REVIEW"
    case inReview = "IN_REVIEW"
    case developerActionNeeded = "DEVELOPER_ACTION_NEEDED"
    case pendingBinaryApproval = "PENDING_BINARY_APPROVAL"
    case approved = "APPROVED"
    case developerRemovedFromSale = "DEVELOPER_REMOVED_FROM_SALE"
    case removedFromSale = "REMOVED_FROM_SALE"
    case rejected = "REJECTED"

    var allCases: [Self] {
        [
            .missingMetadata,
            .waitingForUpload,
            .processingContent,
            .readyToSubmit,
            .waitingForReview,
            .inReview,
            .developerActionNeeded,
            .pendingBinaryApproval,
            .approved,
            .developerRemovedFromSale,
            .removedFromSale,
            .rejected,
        ]
    }
}
