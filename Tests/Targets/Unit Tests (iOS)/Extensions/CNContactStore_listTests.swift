import XCTest
import Contacts
@testable import BoldContacts

class CNContactStore_listTests: XCTestCase {

    func test() throws {
        let store = CNContactStore()
        let contacts: [CNContact] = store.list()
        XCTAssertNotNil(contacts)
    }

}
