class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var frequencies: [Int: Int] = [:]

        for num in nums {
            frequencies[num, default: 0] += 1
        }

        return frequencies.sorted { $0.value > $1.value }.prefix(k).map{ $0.key }
    }
}
