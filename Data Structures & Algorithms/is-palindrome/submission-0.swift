class Solution {
    func isPalindrome(_ s: String) -> Bool {
        let strippedS = s.lowercased().components(separatedBy: .whitespacesAndNewlines).joined().components(separatedBy: .alphanumerics.inverted).joined()
        print(strippedS)
        return strippedS == String(strippedS.reversed())
    }
}
