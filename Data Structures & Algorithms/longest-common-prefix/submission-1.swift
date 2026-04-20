class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        let first = Array(strs[0])
        for i in 0..<first.count {
            for str in strs {
                let s = Array(str)
                if i == s.count || s[i] != first[i] {
                    return String(first[0..<i])
                }
            }
        }
        return strs[0]
    }
}
