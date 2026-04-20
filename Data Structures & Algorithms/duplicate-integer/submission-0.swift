class Solution {
    private var set: Set<Int> = []
    func hasDuplicate(_ nums: [Int]) -> Bool {
        for num in nums {
            guard !set.contains(num) else {
                return true
            }
            set.insert(num)
        }
        return false
    }
}
