class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var set = Set<Character>()
        let chars = Array(s)
        var l = 0, res = 0, r = 0

        while r < chars.count {
            while set.contains(chars[r]) {
                set.remove(chars[l])
                l += 1
            }

            set.insert(chars[r])
            res = max(res, r - l + 1)
            r += 1
        }

        return res
    }
}
