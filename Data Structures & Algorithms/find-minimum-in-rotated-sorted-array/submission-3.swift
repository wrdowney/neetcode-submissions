class Solution {
    func findMin(_ nums: [Int]) -> Int {
        var l = 0, r = nums.count - 1, minVal = nums[0]

        while l <= r {
            if nums[l] < nums[r] {
                minVal = min(minVal, nums[l])
                break 
            }

            var m = (r + l) / 2
            minVal = min(nums[m], minVal)
            if nums[m] >= nums[l] {
                l = m + 1
            } else {
                r = m - 1
            }
        }

        return minVal
    }
}
 