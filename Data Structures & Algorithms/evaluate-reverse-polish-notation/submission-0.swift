class Solution {
    func evalRPN(_ tokens: [String]) -> Int {
        var stack: [Int] = []
        let operators: [String: (Int, Int) -> Int] = ["+": (+), "-": (-), "*": (*), "/": (/)]

        for token in tokens {
            if let operation = operators[token] {
                if let secondOperand = stack.popLast(), let firstOperand = stack.popLast() {
                    stack.append(operation(firstOperand, secondOperand))
                }
            } else if let value = Int(token) {
                stack.append(value)
            }
        }
        return stack.last ?? -1
    }
}