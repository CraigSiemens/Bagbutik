import Bagbutik_Core
import Foundation

public struct ReviewSubmissionItemCreateRequest: RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    public struct Data {
        public var type: String { "reviewSubmissionItems" }
        public let relationships: Relationships

        public init(relationships: Relationships) {
            self.relationships = relationships
        }

        public struct Relationships {
            public var appCustomProductPageVersion: AppCustomProductPageVersion?
            public var appEvent: AppEvent?
            public var appStoreVersion: AppStoreVersion?
            public var appStoreVersionExperiment: AppStoreVersionExperiment?
            public var appStoreVersionExperimentV2: AppStoreVersionExperimentV2?
            public let reviewSubmission: ReviewSubmission

            public init(appCustomProductPageVersion: AppCustomProductPageVersion? = nil,
                        appEvent: AppEvent? = nil,
                        appStoreVersion: AppStoreVersion? = nil,
                        appStoreVersionExperiment: AppStoreVersionExperiment? = nil,
                        appStoreVersionExperimentV2: AppStoreVersionExperimentV2? = nil,
                        reviewSubmission: ReviewSubmission)
            {
                self.appCustomProductPageVersion = appCustomProductPageVersion
                self.appEvent = appEvent
                self.appStoreVersion = appStoreVersion
                self.appStoreVersionExperiment = appStoreVersionExperiment
                self.appStoreVersionExperimentV2 = appStoreVersionExperimentV2
                self.reviewSubmission = reviewSubmission
            }

            public struct AppCustomProductPageVersion {
                @NullCodable public var data: Data?

                public init(data: Data? = nil) {
                    self.data = data
                }

                public struct Data: Identifiable {
                    public let id: String
                    public var type: String { "appCustomProductPageVersions" }

                    public init(id: String) {
                        self.id = id
                    }
                }
            }

            public struct AppEvent {
                @NullCodable public var data: Data?

                public init(data: Data? = nil) {
                    self.data = data
                }

                public struct Data: Identifiable {
                    public let id: String
                    public var type: String { "appEvents" }

                    public init(id: String) {
                        self.id = id
                    }
                }
            }

            public struct AppStoreVersion {
                @NullCodable public var data: Data?

                public init(data: Data? = nil) {
                    self.data = data
                }

                public struct Data: Identifiable {
                    public let id: String
                    public var type: String { "appStoreVersions" }

                    public init(id: String) {
                        self.id = id
                    }
                }
            }

            public struct AppStoreVersionExperiment {
                @NullCodable public var data: Data?

                public init(data: Data? = nil) {
                    self.data = data
                }

                public struct Data: Identifiable {
                    public let id: String
                    public var type: String { "appStoreVersionExperiments" }

                    public init(id: String) {
                        self.id = id
                    }
                }
            }

            public struct AppStoreVersionExperimentV2 {
                @NullCodable public var data: Data?

                public init(data: Data? = nil) {
                    self.data = data
                }

                public struct Data: Identifiable {
                    public let id: String
                    public var type: String { "appStoreVersionExperiments" }

                    public init(id: String) {
                        self.id = id
                    }
                }
            }

            public struct ReviewSubmission {
                public let data: Data

                public init(data: Data) {
                    self.data = data
                }

                public struct Data: Identifiable {
                    public let id: String
                    public var type: String { "reviewSubmissions" }

                    public init(id: String) {
                        self.id = id
                    }
                }
            }
        }
    }
}
