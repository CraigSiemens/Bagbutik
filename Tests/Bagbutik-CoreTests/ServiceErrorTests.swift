import Bagbutik_Core
import XCTest

final class ServiceErrorTests: XCTestCase {
    let errorResponse = ErrorResponse(errors: [
        .init(code: "some-code", detail: "some-detail", status: "some-status", title: "some-title"),
    ])
    
    func testDescriptionForErrorWithErrorResponse() {
        let errors: [ServiceError] = [
            .badRequest(errorResponse),
            .unauthorized(errorResponse),
            .forbidden(errorResponse),
            .notFound(errorResponse),
            .conflict(errorResponse),
            .unprocessableEntity(errorResponse)
        ]
        errors.forEach { error in
            XCTAssertEqual(error.description, errorResponse.errors!.first!.detail)
        }
    }
    
    func testErrorResponseForErrorWithErrorResponse() {
        XCTAssertNotNil(ServiceError.badRequest(errorResponse).errorResponse)
        XCTAssertNotNil(ServiceError.unauthorized(errorResponse).errorResponse)
        XCTAssertNotNil(ServiceError.forbidden(errorResponse).errorResponse)
        XCTAssertNotNil(ServiceError.notFound(errorResponse).errorResponse)
        XCTAssertNotNil(ServiceError.conflict(errorResponse).errorResponse)
        XCTAssertNotNil(ServiceError.unprocessableEntity(errorResponse).errorResponse)
        XCTAssertNil(ServiceError.wrongDateFormat(dateString: "11. maj 1988, 15:42").errorResponse)
        XCTAssertNil(ServiceError.unknownHTTPError(statusCode: 418, data: Data()).errorResponse)
        XCTAssertNil(ServiceError.unknown(data: nil).errorResponse)
    }
    
    func testDescriptionForWrongDateFormat() {
        let dateString = "11. maj 1988, 15:42"
        XCTAssertEqual(ServiceError.wrongDateFormat(dateString: dateString).description,
                       "A date in the response has an unknown format. The date: \(dateString)")
    }
    
    func testDescriptionForUnknownHTTPError_UTF8Data() {
        let statusCode = 418
        let data = Data("I'm a teapot".utf8)
        XCTAssertEqual(
            ServiceError.unknownHTTPError(statusCode: statusCode, data: data).description,
            "An unhandled HTTP error occurred. Status code \(statusCode). Data as UTF-8 string: I'm a teapot")
    }
    
    func testDescriptionForUnknownHTTPError_NotUTF8Data() {
        let statusCode = 418
        var data = Data("café".utf8)
        data.removeLast()
        XCTAssertEqual(
            ServiceError.unknownHTTPError(statusCode: statusCode, data: data).description,
            "An unhandled HTTP error occurred. Status code \(statusCode). Data as UTF-8 string: Not UTF-8")
    }
    
    func testDescriptionForUnknown() {
        XCTAssertEqual(ServiceError.unknown(data: nil).description, "An unknown error occurred.")
    }
}
