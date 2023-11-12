import Bagbutik_Core
import Bagbutik_Models

public extension Request {
    /**
     # Read and Download Profile Information
     Get information for a specific provisioning profile and download its data.

     Full documentation:
     <https://developer.apple.com/documentation/appstoreconnectapi/read_and_download_profile_information>

     - Parameter id: The id of the requested resource
     - Parameter fields: Fields to return for included related types
     - Parameter includes: Relationship data to include in the response
     - Parameter limits: Number of resources to return
     - Returns: A ``Request`` to send to an instance of ``BagbutikService``
     */
    static func getProfileV1(id: String,
                             fields: [GetProfileV1.Field]? = nil,
                             includes: [GetProfileV1.Include]? = nil,
                             limits: [GetProfileV1.Limit]? = nil) -> Request<ProfileResponse, ErrorResponse>
    {
        .init(path: "/v1/profiles/\(id)", method: .get, parameters: .init(fields: fields,
                                                                          includes: includes,
                                                                          limits: limits))
    }
}

public enum GetProfileV1 {
    /**
     Fields to return for included related types.
     */
    public enum Field: FieldParameter {
        /// The fields to include for returned resources of type bundleIds
        case bundleIds([BundleIds])
        /// The fields to include for returned resources of type certificates
        case certificates([Certificates])
        /// The fields to include for returned resources of type devices
        case devices([Devices])
        /// The fields to include for returned resources of type profiles
        case profiles([Profiles])

        public enum BundleIds: String, ParameterValue, CodableEnum, CaseIterable {
            case app
            case bundleIdCapabilities
            case identifier
            case name
            case platform
            case profiles
            case seedId

            var allCases: [Self] {
                [
                    .app,
                    .bundleIdCapabilities,
                    .identifier,
                    .name,
                    .platform,
                    .profiles,
                    .seedId,
                ]
            }
        }

        public enum Certificates: String, ParameterValue, CodableEnum, CaseIterable {
            case certificateContent
            case certificateType
            case csrContent
            case displayName
            case expirationDate
            case name
            case platform
            case serialNumber

            var allCases: [Self] {
                [
                    .certificateContent,
                    .certificateType,
                    .csrContent,
                    .displayName,
                    .expirationDate,
                    .name,
                    .platform,
                    .serialNumber,
                ]
            }
        }

        public enum Devices: String, ParameterValue, CodableEnum, CaseIterable {
            case addedDate
            case deviceClass
            case model
            case name
            case platform
            case status
            case udid

            var allCases: [Self] {
                [
                    .addedDate,
                    .deviceClass,
                    .model,
                    .name,
                    .platform,
                    .status,
                    .udid,
                ]
            }
        }

        public enum Profiles: String, ParameterValue, CodableEnum, CaseIterable {
            case bundleId
            case certificates
            case createdDate
            case devices
            case expirationDate
            case name
            case platform
            case profileContent
            case profileState
            case profileType
            case uuid

            var allCases: [Self] {
                [
                    .bundleId,
                    .certificates,
                    .createdDate,
                    .devices,
                    .expirationDate,
                    .name,
                    .platform,
                    .profileContent,
                    .profileState,
                    .profileType,
                    .uuid,
                ]
            }
        }
    }

    /**
     Relationship data to include in the response.
     */
    public enum Include: String, IncludeParameter, CaseIterable {
        case bundleId
        case certificates
        case devices
    }

    /**
     Number of included related resources to return.
     */
    public enum Limit: LimitParameter {
        /// Maximum number of related certificates returned (when they are included) - maximum 50
        case certificates(Int)
        /// Maximum number of related devices returned (when they are included) - maximum 50
        case devices(Int)
    }
}
