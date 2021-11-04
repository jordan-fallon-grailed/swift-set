import XCTest
@testable import SwiftSet

final class SwiftSetTests: XCTestCase {
    func test_add_addsASingleItemToTheSet() throws {
        var set = SwiftSet()
        set.add(1)
        XCTAssertEqual(set.size(), 1)
    }

    func test_add_addsMultipleItemsToTheSet() throws {
        var set = SwiftSet()
        set.add(1)
        set.add(2)
        XCTAssertEqual(set.size(), 2)
    }
}
