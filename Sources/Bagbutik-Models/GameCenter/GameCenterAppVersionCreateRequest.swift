import Bagbutik_Core
import Foundation

/**
 # GameCenterAppVersionCreateRequest
 The request body you use to create an app version.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/gamecenterappversioncreaterequest>
 */
public struct GameCenterAppVersionCreateRequest: RequestBody {
    public let data: Data

    public init(data: Data) {
        self.data = data
    }

    public struct Data {
        public var type: String { "gameCenterAppVersions" }
        public let relationships: Relationships

        public init(relationships: Relationships) {
            self.relationships = relationships
        }

        public struct Relationships {
            public let appStoreVersion: AppStoreVersion

            public init(appStoreVersion: AppStoreVersion) {
                self.appStoreVersion = appStoreVersion
            }

            public struct AppStoreVersion {
                public let data: Data

                public init(data: Data) {
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
        }
    }
}
