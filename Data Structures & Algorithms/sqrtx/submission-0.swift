class Solution {
    func mySqrt(_ x: Int) -> Int {
        var l = 0, r = x
        var res = 0

        while l <= r {
            let m = l + (r - l) / 2

            if m * m > x {
                r = m - 1
            } else if m * m < x {
                l = m + 1
                res = m
            } else {
                return m
            }
        }

        return res
    }
}
