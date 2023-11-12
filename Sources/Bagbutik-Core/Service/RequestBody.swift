import Foundation

/// A protocol used for structs to be sent with `Request`s.
public protocol RequestBody {
    /// A JSON representation of the struct.
    var jsonData: Data { get }
}

public extension RequestBody {
    var jsonData: Data {
        return Data()
//        let encoder = JSONEncoder()
//        return try! encoder.encode(self)
    }
}
