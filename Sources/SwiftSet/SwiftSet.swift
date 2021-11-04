// SwiftSet -- reinventing the wheel, TDD style
// A Set is a unordered list of unique elements

// If we choose to use a backing array, we're going to pretend a few
// methods and properties don't exist -- we're going to build them
// ourselves if needed!
// - append
// - count
// - contains

public struct SwiftSet {
    private var items: Array<Int> = []
    private var count = 0

    mutating func add(_ value: Int) {
        items.insert(value, at: 0);
        count += 1
    }

    func size() -> Int {
        count
    }
}
