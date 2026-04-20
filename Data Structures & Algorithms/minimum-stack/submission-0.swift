struct MinStackElement {
    var value: Int
    var minValue: Int
}

class MinStack {

    var stack: [MinStackElement]

    init() {
        stack = []
    }
    
    func push(_ val: Int) {
        let previousMinValue = stack.last?.minValue ?? val
        let currentStackElement = MinStackElement(value: val, minValue: min(previousMinValue, val))

        stack.append(currentStackElement)
    }
    
    func pop() {
        stack.removeLast()
    }
    
    func top() -> Int {
        return stack.last?.value ?? 0
    }
    
    func getMin() -> Int {
        return stack.last?.minValue ?? 0
    }
}
