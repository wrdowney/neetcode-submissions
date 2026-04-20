class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var L = 0
        var R = nums.count - 1

        while L <= R {
            var M = (R + L) / 2
            if nums[M] == target {
                return M
            } else if target > nums[M] {
                L = M + 1
            } else {
                R = M - 1
            }
        }
        return -1
    }
}