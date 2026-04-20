class Solution {
    func minEatingSpeed(_ piles: [Int], _ h: Int) -> Int {
        var k = 1
        var m: Int = 0
        for pile in piles {
            m = max(m, pile)
        }

        for i in 1...m {
            var time: Double = 0
            for pile in piles {
                time += ceil(Double(pile) / Double(k))
            }
            if time <= Double(h) { break }
            k += 1
        }
        print(m)
        return k
    }
}
