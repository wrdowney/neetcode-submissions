class MyStack {
    var q1: [Int]
    init() {
        q1 = []
    }

    func push(_ x: Int) {
        q1.append(x)
        for i in 1..<q1.count {
            q1.append(q1.removeFirst())
        }
    }

    func pop() -> Int {
        return q1.removeFirst()
    }

    func top() -> Int { 
        return q1.first!
    }

    func empty() -> Bool {
        return q1.isEmpty
    }
}

/**
 * Your MyStack object will be instantiated and called as such:
 * let obj = MyStack()
 * obj.push(x)
 * let param_2 = obj.pop()
 * let param_3 = obj.top()
 * let param_4 = obj.empty()
 */
