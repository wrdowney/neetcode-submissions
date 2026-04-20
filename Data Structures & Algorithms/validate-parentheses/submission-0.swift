class Solution {
    func isValid(_ s: String) -> Bool {
        var stack: [Character] = []
        let openings: [Character] = ["(", "{", "["]
        let closings: [Character] = [")", "}", "]"]

        for c in s {
            if openings.contains(c) {
                stack.append(c)
            } else {
                guard let elem = stack.last else { return false }
                if openings.firstIndex(of: elem) != closings.firstIndex(of: c) { 
                    return false 
                } else {
                    stack.removeLast()
                }
            }
        }
        return stack.isEmpty
    }
}