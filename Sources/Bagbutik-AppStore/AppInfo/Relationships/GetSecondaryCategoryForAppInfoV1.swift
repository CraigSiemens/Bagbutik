import Bagbutik_Core
import Bagbutik_Models

public extension Request {
    /**
     # Read the Secondary Category Information of an App Info
     Get an app’s secondary App Store category.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/read_the_secondary_category_information_of_an_app_info>

     - Parameter id: The id of the requested resource
     - Parameter fields: Fields to return for included related types
     - Parameter includes: Relationship data to include in the response
     - Parameter limit: Maximum number of related subcategories returned (when they are included) - maximum 50
     - Returns: A ``Request`` to send to an instance of ``BagbutikService``
     */
    static func getSecondaryCategoryForAppInfoV1(id: String,
                                                 fields: [GetSecondaryCategoryForAppInfoV1.Field]? = nil,
                                                 includes: [GetSecondaryCategoryForAppInfoV1.Include]? = nil,
                                                 limit: Int? = nil) -> Request<AppCategoryResponse, ErrorResponse>
    {
        .init(path: "/v1/appInfos/\(id)/secondaryCategory", method: .get, parameters: .init(fields: fields,
                                                                                            includes: includes,
                                                                                            limit: limit))
    }
}

public enum GetSecondaryCategoryForAppInfoV1 {
    /**
     Fields to return for included related types.
     */
    public enum Field: FieldParameter {
        /// The fields to include for returned resources of type appCategories
        case appCategories([AppCategories])

        public enum AppCategories: String, ParameterValue, Codable, CaseIterable {
            case parent
            case platforms
            case subcategories
        }
    }

    /**
     Relationship data to include in the response.
     */
    public enum Include: String, IncludeParameter, CaseIterable {
        case parent
        case subcategories
    }
}
