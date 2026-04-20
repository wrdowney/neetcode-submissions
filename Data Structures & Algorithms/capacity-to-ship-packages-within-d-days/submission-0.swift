class Solution {
    func shipWithinDays(_ weights: [Int], _ days: Int) -> Int {
        var l = weights.max()!, r = weights.reduce(0, +), res = r


        func canShip(_ cap: Int) -> Bool {
            var ships = 1
            var currCap = cap
            for w in weights {
                if currCap - w < 0 {
                    ships += 1
                    if ships > days { return false }
                    currCap = cap
                }
                currCap -= w
            }
            return true
        }

        while l <= r {
            let m = (l + r) / 2
            if canShip(m) {
                res = min(res, m)
                r = m - 1
            } else {
                l = m + 1
            }
        }

        return res
    }

    
}
