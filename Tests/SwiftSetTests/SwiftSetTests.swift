import XCTest
@testable import SwiftSet

final class SwiftSetTests: XCTestCase {
    func test_add_addsItemsToTheSet() throws {
        let set = SwiftSet()
        XCTAssertEqual(set.size, 0)
        
        set.add(5)
        XCTAssertEqual(set.size, 1)
        XCTAssertTrue(set.contains(5))
        XCTAssertFalse(set.contains(3))
        
        set.add(7)
        XCTAssertEqual(set.size, 2)
        XCTAssertTrue(set.contains(7))
        XCTAssertTrue(set.contains(5))
        XCTAssertFalse(set.contains(3))
    }
    
    func test_add_doesNotAllowDuplicates() throws {
        let set = SwiftSet()
        set.add(5)
        set.add(5)
        XCTAssertEqual(set.size, 1)
    }
    
    func test_remove_removesAnItem() throws {
        let set = SwiftSet()
        set.add(5)
        set.add(7)
        set.remove(5)
        XCTAssertEqual(set.size, 1)
        XCTAssertFalse(set.contains(5))
        
        set.remove(1)
        XCTAssertEqual(set.size, 1)
    }
}
