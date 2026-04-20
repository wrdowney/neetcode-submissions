class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var l = 0, r = nums.count - 1
        var m = (l + r) / 2
        var res = nums.count
        while l <= r {
            m = (l + r) / 2

            if nums[m] == target { 
                return m
            } else if nums[m] > target {
                res = m
                r = m - 1
            } else {
                l = m + 1
            }
        }

        return res
    }
}
