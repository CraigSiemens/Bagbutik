import Foundation

public protocol CodableEnum: Codable, RawRepresentable where RawValue: Codable {}

public extension CodableEnum {
    init(from decoder: Decoder) throws {
        let rawValue = try decoder.singleValueContainer().decode(RawValue.self)
        guard let value = Self(rawValue: rawValue) else {
            throw DecodingError.dataCorrupted(
                .init(
                    codingPath: decoder.codingPath,
                    debugDescription: "\(rawValue) is not a case of \(Self.self)"
                )
            )
        }
        self = value
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(rawValue)
    }
}
