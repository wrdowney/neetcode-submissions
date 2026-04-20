class MyHashSet {
    // key is in the range [1, 1000000]
    // 31251 * 32 = 1000032
    private var set: [Int]

    init() {
        set = [Int](repeating: 0, count: 31251)
    }

    private func getMask(_ key: Int) -> Int {
        return 1 << (key % 32)
    }

    func add(_ key: Int) {
        set[key / 32] |= getMask(key)
    }

    func remove(_ key: Int) {
        if contains(key) {
            set[key / 32] ^= getMask(key)
        }
    }

    func contains(_ key: Int) -> Bool {
        return (set[key / 32] & getMask(key)) != 0
    }
}
/**
 * Your MyHashSet object will be instantiated and called as such:
 * let obj = MyHashSet()
 * obj.add(key)
 * obj.remove(key)
 * let ret_3: Bool = obj.contains(key)
 */
