import XCTest
@testable import BoldContacts

class fabSocialProfileServiceTests: XCTestCase {

    func test() throws {
        let x: String = fabSocialProfileService()
        XCTAssert(!x.isEmpty)
    }

}
