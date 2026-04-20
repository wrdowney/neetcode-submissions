class Solution {
    func calPoints(_ operations: [String]) -> Int {
        var stack = [Int]()

        for op in operations {
            if op == "D" {
                let prev = stack[stack.count - 1]
                stack.append(prev * 2)
            } else if op == "+" {
                stack.append(stack[stack.count - 1] + stack[stack.count - 2])
            } else if op == "C" {
                stack.popLast()
            } else {
                guard let val = Int(op) else { return -1 }
                stack.append(val)
            }
        }

        return stack.reduce(0, +)
    }
}
