class Solution {
    func isPalindrome(_ s: String) -> Bool {
        let strippedS = s
            .lowercased()
            .components(separatedBy: .whitespacesAndNewlines)
            .joined()
            .components(separatedBy: .alphanumerics.inverted)
            .joined()
        return strippedS == String(strippedS.reversed())
    }
}
