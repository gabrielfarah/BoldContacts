import XCTest
@testable import BoldContacts

class fabUnitedStatesStreetAsStringTests: XCTestCase {

    func test() throws {
        let x: String = fabUnitedStatesStreetAsString()
        XCTAssert(!x.isEmpty)
    }

}
