import Bagbutik_Core
import Foundation

/**
 # GameCenterMatchmakingBooleanRuleResultsV1MetricResponse
 The response body for fetching the results of applying Boolean rules.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/gamecentermatchmakingbooleanruleresultsv1metricresponse>
 */
public struct GameCenterMatchmakingBooleanRuleResultsV1MetricResponse: Codable, PagedResponse {
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
        let container = try decoder.container(keyedBy: CodingKeys.self)
        data = try container.decode([Data].self, forKey: .data)
        links = try container.decode(PagedDocumentLinks.self, forKey: .links)
        meta = try container.decodeIfPresent(PagingInformation.self, forKey: .meta)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(data, forKey: .data)
        try container.encode(links, forKey: .links)
        try container.encodeIfPresent(meta, forKey: .meta)
    }

    private enum CodingKeys: String, CodingKey {
        case data
        case links
        case meta
    }

    /**
     # GameCenterMatchmakingBooleanRuleResultsV1MetricResponse.Data
     The data structure in a response body for Boolean match request results.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/gamecentermatchmakingbooleanruleresultsv1metricresponse/data>
     */
    public struct Data: Codable {
        public var dataPoints: DataPoints?
        public var dimensions: Dimensions?
        /// The granularity of the data using the ISO 8601 format for durations.
        public var granularity: Granularity?

        public init(dataPoints: DataPoints? = nil,
                    dimensions: Dimensions? = nil,
                    granularity: Granularity? = nil)
        {
            self.dataPoints = dataPoints
            self.dimensions = dimensions
            self.granularity = granularity
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            dataPoints = try container.decodeIfPresent(DataPoints.self, forKey: .dataPoints)
            dimensions = try container.decodeIfPresent(Dimensions.self, forKey: .dimensions)
            granularity = try container.decodeIfPresent(Granularity.self, forKey: .granularity)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try container.encodeIfPresent(dataPoints, forKey: .dataPoints)
            try container.encodeIfPresent(dimensions, forKey: .dimensions)
            try container.encodeIfPresent(granularity, forKey: .granularity)
        }

        private enum CodingKeys: String, CodingKey {
            case dataPoints
            case dimensions
            case granularity
        }

        /**
         # GameCenterMatchmakingBooleanRuleResultsV1MetricResponse.Data.DataPoints
         The key properties of the data in the response.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/gamecentermatchmakingbooleanruleresultsv1metricresponse/data/datapoints>
         */
        public struct DataPoints: Codable {
            /// The time Game Center ends the data collection.
            public var end: Date?
            /// The time Game Center starts the data collection.
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
                let container = try decoder.container(keyedBy: CodingKeys.self)
                end = try container.decodeIfPresent(Date.self, forKey: .end)
                start = try container.decodeIfPresent(Date.self, forKey: .start)
                values = try container.decodeIfPresent(Values.self, forKey: .values)
            }

            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                try container.encodeIfPresent(end, forKey: .end)
                try container.encodeIfPresent(start, forKey: .start)
                try container.encodeIfPresent(values, forKey: .values)
            }

            private enum CodingKeys: String, CodingKey {
                case end
                case start
                case values
            }

            /**
             # GameCenterMatchmakingBooleanRuleResultsV1MetricResponse.Data.DataPoints.Values
             The values of the data points.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/gamecentermatchmakingbooleanruleresultsv1metricresponse/data/datapoints/values>
             */
            public struct Values: Codable {
                /// The number of match requests in the response.
                public var count: Int?

                public init(count: Int? = nil) {
                    self.count = count
                }

                public init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: CodingKeys.self)
                    count = try container.decodeIfPresent(Int.self, forKey: .count)
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: CodingKeys.self)
                    try container.encodeIfPresent(count, forKey: .count)
                }

                private enum CodingKeys: String, CodingKey {
                    case count
                }
            }
        }

        /**
         # GameCenterMatchmakingBooleanRuleResultsV1MetricResponse.Data.Dimensions
         The details of the data in the response.

         Full documentation:
         <https://developer.apple.com/documentation/appstoreconnectapi/gamecentermatchmakingbooleanruleresultsv1metricresponse/data/dimensions>
         */
        public struct Dimensions: Codable {
            public var gameCenterMatchmakingQueue: GameCenterMatchmakingQueue?
            public var result: Result?

            public init(gameCenterMatchmakingQueue: GameCenterMatchmakingQueue? = nil,
                        result: Result? = nil)
            {
                self.gameCenterMatchmakingQueue = gameCenterMatchmakingQueue
                self.result = result
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                gameCenterMatchmakingQueue = try container.decodeIfPresent(GameCenterMatchmakingQueue.self, forKey: .gameCenterMatchmakingQueue)
                result = try container.decodeIfPresent(Result.self, forKey: .result)
            }

            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                try container.encodeIfPresent(gameCenterMatchmakingQueue, forKey: .gameCenterMatchmakingQueue)
                try container.encodeIfPresent(result, forKey: .result)
            }

            private enum CodingKeys: String, CodingKey {
                case gameCenterMatchmakingQueue
                case result
            }

            /**
             # GameCenterMatchmakingBooleanRuleResultsV1MetricResponse.Data.Dimensions.GameCenterMatchmakingQueue
             The details of the data about the queue.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/gamecentermatchmakingbooleanruleresultsv1metricresponse/data/dimensions/gamecentermatchmakingqueue>
             */
            public struct GameCenterMatchmakingQueue: Codable {
                public var links: Links?

                public init(links: Links? = nil) {
                    self.links = links
                }

                public init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: CodingKeys.self)
                    links = try container.decodeIfPresent(Links.self, forKey: .links)
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: CodingKeys.self)
                    try container.encodeIfPresent(links, forKey: .links)
                }

                private enum CodingKeys: String, CodingKey {
                    case links
                }

                /**
                 # GameCenterMatchmakingBooleanRuleResultsV1MetricResponse.Data.Dimensions.GameCenterMatchmakingQueue.Links
                 The link representations of the queue results.

                 Full documentation:
                 <https://developer.apple.com/documentation/appstoreconnectapi/gamecentermatchmakingbooleanruleresultsv1metricresponse/data/dimensions/gamecentermatchmakingqueue/links>
                 */
                public struct Links: Codable {
                    /// A string URI representation of the data that Game Center organizes by group.
                    public var groupBy: String?
                    /// A string URI representation of the related data.
                    public var related: String?

                    public init(groupBy: String? = nil,
                                related: String? = nil)
                    {
                        self.groupBy = groupBy
                        self.related = related
                    }

                    public init(from decoder: Decoder) throws {
                        let container = try decoder.container(keyedBy: CodingKeys.self)
                        groupBy = try container.decodeIfPresent(String.self, forKey: .groupBy)
                        related = try container.decodeIfPresent(String.self, forKey: .related)
                    }

                    public func encode(to encoder: Encoder) throws {
                        var container = encoder.container(keyedBy: CodingKeys.self)
                        try container.encodeIfPresent(groupBy, forKey: .groupBy)
                        try container.encodeIfPresent(related, forKey: .related)
                    }

                    private enum CodingKeys: String, CodingKey {
                        case groupBy
                        case related
                    }
                }
            }

            /**
             # GameCenterMatchmakingBooleanRuleResultsV1MetricResponse.Data.Dimensions.Result
             The links to the details of the data.

             Full documentation:
             <https://developer.apple.com/documentation/appstoreconnectapi/gamecentermatchmakingbooleanruleresultsv1metricresponse/data/dimensions/result>
             */
            public struct Result: Codable {
                public var links: Links?

                public init(links: Links? = nil) {
                    self.links = links
                }

                public init(from decoder: Decoder) throws {
                    let container = try decoder.container(keyedBy: CodingKeys.self)
                    links = try container.decodeIfPresent(Links.self, forKey: .links)
                }

                public func encode(to encoder: Encoder) throws {
                    var container = encoder.container(keyedBy: CodingKeys.self)
                    try container.encodeIfPresent(links, forKey: .links)
                }

                private enum CodingKeys: String, CodingKey {
                    case links
                }

                /**
                 # GameCenterMatchmakingBooleanRuleResultsV1MetricResponse.Data.Dimensions.Result.Links
                 The link representation of the results.

                 Full documentation:
                 <https://developer.apple.com/documentation/appstoreconnectapi/gamecentermatchmakingbooleanruleresultsv1metricresponse/data/dimensions/result/links>
                 */
                public struct Links: Codable {
                    /// A string URI representation of the data that Game Center organizes by group.
                    public var groupBy: String?

                    public init(groupBy: String? = nil) {
                        self.groupBy = groupBy
                    }

                    public init(from decoder: Decoder) throws {
                        let container = try decoder.container(keyedBy: CodingKeys.self)
                        groupBy = try container.decodeIfPresent(String.self, forKey: .groupBy)
                    }

                    public func encode(to encoder: Encoder) throws {
                        var container = encoder.container(keyedBy: CodingKeys.self)
                        try container.encodeIfPresent(groupBy, forKey: .groupBy)
                    }

                    private enum CodingKeys: String, CodingKey {
                        case groupBy
                    }
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
