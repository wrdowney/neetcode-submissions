class ListNode {
    var key: Int
    var next: ListNode?

    init(_ key: Int) {
        self.key = key
        self.next = nil
    }
}

class MyHashSet {
    // key is in the range [1, 1000000]
    // 31251 * 32 = 1000032
    private var set: [ListNode]

    init() {
        set = (0..<10000).map { _ in ListNode(0) }
    }

    func add(_ key: Int) {
        let idx = key % set.count
        var curr = set[idx]

        while let next = curr.next {
            if next.key == key {
                return
            }
            curr = next
        }
        curr.next = ListNode(key)
    }

    func remove(_ key: Int) {
        let idx = key % set.count
        var curr = set[idx]

        while let next = curr.next {
            if next.key == key {
                curr.next = next.next
            }
            curr = next
        }
    }

    func contains(_ key: Int) -> Bool {
        let idx = key % set.count
        var curr = set[idx]

        while let next = curr.next {
            if next.key == key {
                return true 
            }
            curr = next
        }
        return false
    }
}
/**
 * Your MyHashSet object will be instantiated and called as such:
 * let obj = MyHashSet()
 * obj.add(key)
 * obj.remove(key)
 * let ret_3: Bool = obj.contains(key)
 */
