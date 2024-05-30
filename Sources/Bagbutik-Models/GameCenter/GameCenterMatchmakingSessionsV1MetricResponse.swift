import Bagbutik_Core
import Foundation

/**
 # GameCenterMatchmakingSessionsV1MetricResponse
 The response body for information about a successful matchmaking session.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/gamecentermatchmakingsessionsv1metricresponse>
 */
public struct GameCenterMatchmakingSessionsV1MetricResponse: Codable, PagedResponse {
    /// The data structure for the results of a successful matchmaking session.
    public let data: [Data]
    public let links: PagedDocumentLinks
    public var meta: PagingInformation?

    public init(data: [Data],
                links: PagedDocumentLinks,
                meta: PagingInformation? = nil)
    {
        self.data = data
        self.links = links
        self.meta = meta
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: AnyCodingKey.self)
        data = try container.decode([Data].self, forKey: "data")
        links = try container.decode(PagedDocumentLinks.self, forKey: "links")
        meta = try container.decodeIfPresent(PagingInformation.self, forKey: "meta")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: AnyCodingKey.self)
        try container.encode(data, forKey: "data")
        try container.encode(links, forKey: "links")
        try container.encodeIfPresent(meta, forKey: "meta")
    }

    /**
     # GameCenterMatchmakingSessionsV1MetricResponse.Data
     The data structure for the results of a successful matchmaking session.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/gamecentermatchmakingsessionsv1metricresponse/data>
     */
    public struct Data: Codable {
        public var dataPoints: DataPoints?
        /// The granularity of the data using the ISO 8601 format for durations.
        public var granularity: Granularity?

        public init(dataPoints: DataPoints? = nil,
                    granularity: Granularity? = nil)
        {
            self.dataPoints = dataPoints
            self.granularity = granularity
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: AnyCodingKey.self)
            dataPoints = try container.decodeIfPresent(DataPoints.self, forKey: "dataPoints")
            granularity = try container.decodeIfPresent(Granularity.self, forKey: "granularity")
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: AnyCodingKey.self)
            try container.encodeIfPresent(dataPoints, forKey: "dataPoints")
            try container.encodeIfPresent(granularity, forKey: "granularity")
        }

        public struct DataPoints: Codable {
            public var end: Date?
            public var start: Date?
            public var values: Values?

            public init(end: Date? = nil,
                        start: Date? = nil,
                        values: Values? = nil)
            {
                self.end = end
                self.start = start
                self.values = values
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: AnyCodingKey.self)
                end = try container.decodeIfPresent(Date.self, forKey: "end")
                start = try container.decodeIfPresent(Date.self, forKey: "start")
                values = try container.decodeIfPresent(Values.self, forKey: "values")
            }

            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: AnyCodingKey.self)
                try container.encodeIfPresent(end, forKey: "end")
                try container.encodeIfPresent(start, forKey: "start")
                try container.encodeIfPresent(values, forKey: "values")
            }

            /**
             # GameCenterMatchmakingSessionsV1MetricResponse.Data.DataPoints.Values
             The data values in the response per session.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/gamecentermatchmakingsessionsv1metricresponse/data/datapoints/values>
             */
            public struct Values: Codable {
                /// The average number of players Game Center finds for the match.
                public var averagePlayerCount: Double?
                /// The number of players Game Center finds for the match.
                public var count: Int?
                /// The 50th percentile number of players Game Center finds for the match.
                public var p50PlayerCount: Double?
                /// The 95th percentile number of players Game Center finds for the match.
                public var p95PlayerCount: Double?

                public init(averagePlayerCount: Double? = nil,
                            count: Int? = nil,
                            p50PlayerCount: Double? = nil,
                            p95PlayerCount: Double? = nil)
                {
                    self.averagePlayerCount = averagePlayerCount
                    self.count = count
                    self.p50PlayerCount = p50PlayerCount
                    self.p95PlayerCount = p95PlayerCount
                }

                public init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: AnyCodingKey.self)
                    averagePlayerCount = try container.decodeIfPresent(Double.self, forKey: "averagePlayerCount")
                    count = try container.decodeIfPresent(Int.self, forKey: "count")
                    p50PlayerCount = try container.decodeIfPresent(Double.self, forKey: "p50PlayerCount")
                    p95PlayerCount = try container.decodeIfPresent(Double.self, forKey: "p95PlayerCount")
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: AnyCodingKey.self)
                    try container.encodeIfPresent(averagePlayerCount, forKey: "averagePlayerCount")
                    try container.encodeIfPresent(count, forKey: "count")
                    try container.encodeIfPresent(p50PlayerCount, forKey: "p50PlayerCount")
                    try container.encodeIfPresent(p95PlayerCount, forKey: "p95PlayerCount")
                }
            }
        }

        public enum Granularity: String, Codable, CaseIterable {
            case P1D
            case PT15M
            case PT1H
        }
    }
}
