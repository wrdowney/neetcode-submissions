class MyStack {
    var q1: [Int]
    var q2: [Int]
    init() {
        q1 = []
        q2 = []
    }

    func push(_ x: Int) {
        q2.append(x)
        while !q1.isEmpty {
            q2.append(q1.removeFirst())
        }
        swap(&q1, &q2)
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
