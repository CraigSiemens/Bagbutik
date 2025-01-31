import Bagbutik_Core
import Bagbutik_Models

public extension Request {
    /**
     # Read beta tester metrics for an app
     Get usage metrics for beta testers of a specific app.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/read_beta_tester_metrics_for_an_app>

     - Parameter id: The id of the requested resource
     - Parameter filters: Attributes, relationships, and IDs by which to filter
     - Parameter groupBy: The dimension by which to group the results
     - Parameter period: The duration of the reporting period
     - Parameter limit: Maximum number of groups to return per page - maximum 200
     - Returns: A ``Request`` to send to an instance of ``BagbutikService``
     */
    static func getMetricsForBetaTesterUsageInAppV1(id: String,
                                                    filters: [GetMetricsForBetaTesterUsageInAppV1.Filter]? = nil,
                                                    groupBy: GetMetricsForBetaTesterUsageInAppV1.GroupBy? = nil,
                                                    period: String? = nil,
                                                    limit: Int? = nil) -> Request<AppsBetaTesterUsagesV1MetricResponse, ErrorResponse>
    {
        var customs = [String: String]()
        if let groupBy { customs["groupBy"] = groupBy.rawValue }
        if let period { customs["period"] = period }
        return .init(path: "/v1/apps/\(id)/metrics/betaTesterUsages", method: .get, parameters: .init(filters: filters,
                                                                                                      limit: limit,
                                                                                                      customs: customs))
    }
}

public enum GetMetricsForBetaTesterUsageInAppV1 {
    /**
     Attributes, relationships, and IDs by which to filter.
     */
    public enum Filter: FilterParameter {
        /// Filter by 'betaTesters' relationship dimension
        case betaTesters([String])
    }

    /**
     The dimension by which to group the results
     */
    public enum GroupBy: String, ParameterValue, Codable, CaseIterable {
        case betaTesters
    }
}
