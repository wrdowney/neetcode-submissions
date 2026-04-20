class MyQueue {
    private var s1: [Int]
    private var s2: [Int]

    init() {
        s1 = []
        s2 = []
    }

    func push(_ x: Int) {
        s1.append(x)
    }

    func pop() -> Int {
        while s1.count > 1 {
            s2.append(s1.removeLast())
        }
        let res = s1.removeLast()
        while !s2.isEmpty {
            s1.append(s2.removeLast())
        }
        return res
    }

    func peek() -> Int {
        while s1.count > 1 {
            s2.append(s1.removeLast())
        }
        let res = s1.last!
        while !s2.isEmpty {
            s1.append(s2.removeLast())
        }
        return res
    }

    func empty() -> Bool {
        return s1.isEmpty
    }
}

/**
 * Your MyQueue object will be instantiated and called as such:
 * let obj = MyQueue()
 * obj.push(x)
 * let param_2 = obj.pop()
 * let param_3 = obj.peek()
 * let param_4 = obj.empty()
 */
