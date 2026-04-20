class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        if strs.count == 1 {
            return strs[0]
        }

        let sorted = strs.sorted()
        let first = Array(sorted[0])
        let last = Array(sorted[sorted.count - 1])

        var i = 0
        while i < min(first.count, last.count) {
            if first[i] != last[i] {
                return String(first[0..<i])
            }
            i += 1
        }

        return sorted[0]
    }
}