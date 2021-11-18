// SwiftSet -- reinventing the wheel, TDD style
// A Set is a unordered list of unique elements

// If we choose to use a backing array, we're going to pretend a few
// methods and properties don't exist -- we're going to build them
// ourselves if needed!
// - append
// - count
// - contains

public class SwiftSet {
    private var list: Array<Int> = []
    
    var size: Int = 0
    func add(_ val: Int) {
        guard !contains(val) else { return }
        
        size += 1
        list.insert(val, at: 0)
    }
    
    func contains(_ val: Int) -> Bool {
        for item in list {
            if item == val {
                return true
            }
        }
        return false
    }
    
    func remove(_ val: Int) {
        for (index, item) in list.enumerated() {
            if item == val {
                list.remove(at: index)
                size -= 1
                return
            }
        }
    }
}
