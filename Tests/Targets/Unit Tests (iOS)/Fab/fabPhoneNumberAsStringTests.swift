import XCTest
@testable import BoldContacts

class fabPhoneNumberAsStringTests: XCTestCase {

    func test() throws {
        let x: String = fabPhoneNumberAsString()
        XCTAssert(!x.isEmpty)
    }

}
