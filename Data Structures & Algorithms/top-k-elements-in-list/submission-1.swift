class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var freqs = [Int: Int]()

        for n in nums {
            freqs[n, default: 0] += 1
        }
        
        return freqs.sorted { $0.value > $1.value }.prefix(k).map { $0.key }
    }
}
