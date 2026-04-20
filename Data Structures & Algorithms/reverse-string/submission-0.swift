class Solution {
    func reverseString(_ s: inout [Character]) {
        var l = 0, r = s.count - 1

        while l < r {
            var tmp = s[r]
            s[r] = s[l]
            s[l] = tmp
            l += 1
            r -= 1
        }
    }
}