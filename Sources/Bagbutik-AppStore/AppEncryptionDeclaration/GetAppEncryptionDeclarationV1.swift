import Bagbutik_Core
import Bagbutik_Models

public extension Request {
    /**
     # Read App Encryption Declaration Information
     Get information about a specific app encryption declaration.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/read_app_encryption_declaration_information>

     - Parameter id: The id of the requested resource
     - Parameter fields: Fields to return for included related types
     - Parameter includes: Relationship data to include in the response
     - Parameter limit: Maximum number of related builds returned (when they are included) - maximum 50
     - Returns: A ``Request`` to send to an instance of ``BagbutikService``
     */
    static func getAppEncryptionDeclarationV1(id: String,
                                              fields: [GetAppEncryptionDeclarationV1.Field]? = nil,
                                              includes: [GetAppEncryptionDeclarationV1.Include]? = nil,
                                              limit: Int? = nil) -> Request<AppEncryptionDeclarationResponse, ErrorResponse>
    {
        .init(path: "/v1/appEncryptionDeclarations/\(id)", method: .get, parameters: .init(fields: fields,
                                                                                           includes: includes,
                                                                                           limit: limit))
    }
}

public enum GetAppEncryptionDeclarationV1 {
    /**
     Fields to return for included related types.
     */
    public enum Field: FieldParameter {
        /// The fields to include for returned resources of type appEncryptionDeclarationDocuments
        case appEncryptionDeclarationDocuments([AppEncryptionDeclarationDocuments])
        /// The fields to include for returned resources of type appEncryptionDeclarations
        case appEncryptionDeclarations([AppEncryptionDeclarations])
        /// The fields to include for returned resources of type apps
        case apps([Apps])

        public enum AppEncryptionDeclarationDocuments: String, ParameterValue, Codable, CaseIterable {
            case appEncryptionDeclaration
            case assetDeliveryState
            case assetToken
            case downloadUrl
            case fileName
            case fileSize
            case sourceFileChecksum
            case uploadOperations
            case uploaded
        }

        public enum AppEncryptionDeclarations: String, ParameterValue, Codable, CaseIterable {
            case app
            case appDescription
            case appEncryptionDeclarationDocument
            case appEncryptionDeclarationState
            case availableOnFrenchStore
            case builds
            case codeValue
            case containsProprietaryCryptography
            case containsThirdPartyCryptography
            case createdDate
            case documentName
            case documentType
            case documentUrl
            case exempt
            case platform
            case uploadedDate
            case usesEncryption
        }

        public enum Apps: String, ParameterValue, Codable, CaseIterable {
            case appAvailability
            case appClips
            case appCustomProductPages
            case appEncryptionDeclarations
            case appEvents
            case appInfos
            case appPricePoints
            case appPriceSchedule
            case appStoreVersionExperimentsV2
            case appStoreVersions
            case availableInNewTerritories
            case availableTerritories
            case betaAppLocalizations
            case betaAppReviewDetail
            case betaGroups
            case betaLicenseAgreement
            case betaTesters
            case builds
            case bundleId
            case ciProduct
            case contentRightsDeclaration
            case customerReviews
            case endUserLicenseAgreement
            case gameCenterDetail
            case gameCenterEnabledVersions
            case inAppPurchases
            case inAppPurchasesV2
            case isOrEverWasMadeForKids
            case name
            case perfPowerMetrics
            case preOrder
            case preReleaseVersions
            case pricePoints
            case prices
            case primaryLocale
            case promotedPurchases
            case reviewSubmissions
            case sku
            case subscriptionGracePeriod
            case subscriptionGroups
            case subscriptionStatusUrl
            case subscriptionStatusUrlForSandbox
            case subscriptionStatusUrlVersion
            case subscriptionStatusUrlVersionForSandbox
        }
    }

    /**
     Relationship data to include in the response.
     */
    public enum Include: String, IncludeParameter, CaseIterable {
        case app
        case appEncryptionDeclarationDocument
        case builds
    }
}
