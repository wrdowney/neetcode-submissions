class Solution {
    func minEatingSpeed(_ piles: [Int], _ h: Int) -> Int {
        var l = 1, r = piles.max()!
        var res = r

        while l <= r {
            var m = (r + l) / 2
            var timeAtM: Int = 0
            for pile in piles {
                timeAtM += Int(ceil(Double(pile) / Double(m)))
            }
            if timeAtM <= h {
                res = m
                r = m - 1
            } else {
                l = m + 1
            }
        }
        return res
    }
}
