import Bagbutik_Core
import Foundation

/**
 # AppsBetaTesterUsagesV1MetricResponse
 A response that contains one or more beta app tester metric resources.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/appsbetatesterusagesv1metricresponse>
 */
public struct AppsBetaTesterUsagesV1MetricResponse: PagedResponse {
    public let data: [Data]
    public var included: [BetaTester]?
    public let links: PagedDocumentLinks
    public var meta: PagingInformation?

    public init(data: [Data],
                included: [BetaTester]? = nil,
                links: PagedDocumentLinks,
                meta: PagingInformation? = nil)
    {
        self.data = data
        self.included = included
        self.links = links
        self.meta = meta
    }

    public struct Data {
        public var dataPoints: DataPoints?
        public var dimensions: Dimensions?

        public init(dataPoints: DataPoints? = nil,
                    dimensions: Dimensions? = nil)
        {
            self.dataPoints = dataPoints
            self.dimensions = dimensions
        }

        public struct DataPoints {
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

            public struct Values {
                public var crashCount: Int?
                public var feedbackCount: Int?
                public var sessionCount: Int?

                public init(crashCount: Int? = nil,
                            feedbackCount: Int? = nil,
                            sessionCount: Int? = nil)
                {
                    self.crashCount = crashCount
                    self.feedbackCount = feedbackCount
                    self.sessionCount = sessionCount
                }
            }
        }

        public struct Dimensions {
            public var betaTesters: BetaTesters?

            public init(betaTesters: BetaTesters? = nil) {
                self.betaTesters = betaTesters
            }

            public struct BetaTesters {
                public var links: Links?

                public init(links: Links? = nil) {
                    self.links = links
                }

                public struct Links {
                    public var groupBy: String?
                    public var related: String?

                    public init(groupBy: String? = nil,
                                related: String? = nil)
                    {
                        self.groupBy = groupBy
                        self.related = related
                    }
                }
            }
        }
    }
}
