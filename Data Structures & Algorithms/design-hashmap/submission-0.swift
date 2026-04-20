class ListNode {
    var key: Int
    var value: Int
    var next: ListNode?

    init(_ key: Int) {
        self.key = key
        self.value = -1
        self.next = nil
    }
}
class MyHashMap {
    var map: [ListNode]

    init() {
        self.map = (0..<10000).map { _ in ListNode(0) }
    }

    func put(_ key: Int, _ value: Int) {
        let idx = key % map.count
        var curr = map[idx]

        while let next = curr.next {
            if next.key == key {
                curr.next!.value = value
                return
            }
            curr = next
        }
        let node = ListNode(key)
        node.value = value
        curr.next = node
    }

    func get(_ key: Int) -> Int {
        let idx = key % map.count
        var curr = map[idx]
        
        while let next = curr.next {
            if next.key == key {
                return next.value
            }
            curr = next
        }
        return -1
    }

    func remove(_ key: Int) {
        let idx = key % map.count
        var curr = map[idx]

        while let next = curr.next {
            if next.key == key {
                curr.next = next.next
            }
            curr = next
        }
    }
}

/**
 * Your MyHashMap object will be instantiated and called as such:
 * let obj = MyHashMap()
 * obj.put(key, value)
 * let ret_2: Int = obj.get(key)
 * obj.remove(key)
 */
