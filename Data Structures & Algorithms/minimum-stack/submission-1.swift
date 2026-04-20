class MinStack {
    private var minVal: Int = Int.max
    private var stack: [Int] = []

    init() {}

    func push(_ val: Int) {
        if stack.isEmpty {
            stack.append(0)
            minVal = val
        } else {
            stack.append(val - minVal)
            if val < minVal {
                minVal = val
            }
        }
    }

    func pop() {
        if stack.isEmpty {
            return
        }

        let pop = stack.removeLast()

        if pop < 0 {
            minVal -= pop
        }
    }

    func top() -> Int {
        let top = stack.last!
        return top > 0 ? top + minVal : minVal
    }

    func getMin() -> Int {
        return minVal
    }
}
