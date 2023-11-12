import Bagbutik_Core
import Bagbutik_Models

public extension Request {
    /**
     # Read App Store Review Detail Information
     Get App Review details you provided, including contact information, demo account, and notes.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/read_app_store_review_detail_information>

     - Parameter id: The id of the requested resource
     - Parameter fields: Fields to return for included related types
     - Parameter includes: Relationship data to include in the response
     - Parameter limit: Maximum number of related appStoreReviewAttachments returned (when they are included) - maximum 50
     - Returns: A ``Request`` to send to an instance of ``BagbutikService``
     */
    static func getAppStoreReviewDetailV1(id: String,
                                          fields: [GetAppStoreReviewDetailV1.Field]? = nil,
                                          includes: [GetAppStoreReviewDetailV1.Include]? = nil,
                                          limit: Int? = nil) -> Request<AppStoreReviewDetailResponse, ErrorResponse>
    {
        .init(path: "/v1/appStoreReviewDetails/\(id)", method: .get, parameters: .init(fields: fields,
                                                                                       includes: includes,
                                                                                       limit: limit))
    }
}

public enum GetAppStoreReviewDetailV1 {
    /**
     Fields to return for included related types.
     */
    public enum Field: FieldParameter {
        /// The fields to include for returned resources of type appStoreReviewAttachments
        case appStoreReviewAttachments([AppStoreReviewAttachments])
        /// The fields to include for returned resources of type appStoreReviewDetails
        case appStoreReviewDetails([AppStoreReviewDetails])

        public enum AppStoreReviewAttachments: String, ParameterValue, CodableEnum, CaseIterable {
            case appStoreReviewDetail
            case assetDeliveryState
            case fileName
            case fileSize
            case sourceFileChecksum
            case uploadOperations
            case uploaded

            var allCases: [Self] {
                [
                    .appStoreReviewDetail,
                    .assetDeliveryState,
                    .fileName,
                    .fileSize,
                    .sourceFileChecksum,
                    .uploadOperations,
                    .uploaded,
                ]
            }
        }

        public enum AppStoreReviewDetails: String, ParameterValue, CodableEnum, CaseIterable {
            case appStoreReviewAttachments
            case appStoreVersion
            case contactEmail
            case contactFirstName
            case contactLastName
            case contactPhone
            case demoAccountName
            case demoAccountPassword
            case demoAccountRequired
            case notes

            var allCases: [Self] {
                [
                    .appStoreReviewAttachments,
                    .appStoreVersion,
                    .contactEmail,
                    .contactFirstName,
                    .contactLastName,
                    .contactPhone,
                    .demoAccountName,
                    .demoAccountPassword,
                    .demoAccountRequired,
                    .notes,
                ]
            }
        }
    }

    /**
     Relationship data to include in the response.
     */
    public enum Include: String, IncludeParameter, CaseIterable {
        case appStoreReviewAttachments
        case appStoreVersion
    }
}
