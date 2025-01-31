import Bagbutik_Core
import Bagbutik_Models

public extension Request {
    /**
     # List all available territories for an app
     Get a list of App Store territories where an app is or will be available.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/list_all_available_territories_for_an_app>

     - Parameter id: The id of the requested resource
     - Parameter fields: Fields to return for included related types
     - Parameter limit: Maximum resources per page - maximum 200
     - Returns: A ``Request`` to send to an instance of ``BagbutikService``
     */
    @available(*, deprecated, message: "Apple has marked it as deprecated and it will be removed sometime in the future.")
    static func listAvailableTerritoriesForAppV1(id: String,
                                                 fields: [ListAvailableTerritoriesForAppV1.Field]? = nil,
                                                 limit: Int? = nil) -> Request<TerritoriesResponse, ErrorResponse>
    {
        .init(path: "/v1/apps/\(id)/availableTerritories", method: .get, parameters: .init(fields: fields,
                                                                                           limit: limit))
    }
}

public enum ListAvailableTerritoriesForAppV1 {
    /**
     Fields to return for included related types.
     */
    public enum Field: FieldParameter {
        /// The fields to include for returned resources of type territories
        case territories([Territories])

        public enum Territories: String, ParameterValue, Codable, CaseIterable {
            case currency
        }
    }
}
