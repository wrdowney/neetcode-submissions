class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var lastSeenAt = [Character: Int]()
        let chars = Array(s)
        var l = 0, res = 0, r = 0
        while r < chars.count {
            print(chars[r], l, r, res, lastSeenAt)
            if let lastPos = lastSeenAt[chars[r]] {
                l = max(lastPos + 1, l)
            }

            lastSeenAt[chars[r]] = r
            res = max(res, r - l + 1)
            r += 1
        }

        return res
    }
}
