import XCTest
@testable import PrettyPrintJSON

final class PrettyPrintJSONTests: XCTestCase {
    var testObject: ErrorMessage!
    
    var testJSON: String!
    
    override func setUp() {
        super.setUp()
        
        testObject = ErrorMessage(
            status_code: 30
        )
        
        testJSON =
            """
            {
              "status_code" : 30
            }
            """
    }
    
    override func tearDown() {
        testObject = nil
        testJSON = nil
        super.tearDown()
    }
    
    func testEncodableObject_prettyPrintsCorrectly() {
        let data = try! JSONEncoder().encode(testObject)
        XCTAssertEqual(PrettyPrintJSON.with(data: data), testJSON)
    }

    static var allTests = [
        ("testEncodableObject_prettyPrintsCorrectly", testEncodableObject_prettyPrintsCorrectly),
    ]
}

struct ErrorMessage: Encodable {
    var status_code: Int
}
