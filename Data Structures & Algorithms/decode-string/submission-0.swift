class Solution {
    func decodeString(_ s: String) -> String {
        var stack = [String]()

        for c in s {
            if c != "]" {
                stack.append(String(c))
            } else {
                var substr = ""
                while stack.last! != "[" {
                    substr = stack.removeLast() + substr
                }
                stack.removeLast() // remove '['

                var k = ""
                while !stack.isEmpty && stack.last!.first!.isNumber {
                    k = stack.removeLast() + k
                }

                let count = Int(k)!
                stack.append(String(repeating: substr, count: count))
            }
        }

        return stack.joined()
    }
}