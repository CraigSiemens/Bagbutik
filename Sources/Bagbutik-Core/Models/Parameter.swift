import Foundation

/**
 # Parameter
 An object that contains the query parameter that produced the error.

 Full documentation:
 <https://developer.apple.com/documentation/appstoreconnectapi/parameter>
 */
public struct Parameter {
    /// The query parameter that produced the error.
    public var parameter: String?

    public init(parameter: String? = nil) {
        self.parameter = parameter
    }
}
