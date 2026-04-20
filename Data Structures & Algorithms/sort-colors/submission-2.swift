class Solution {
    func sortColors(_ nums: inout [Int]) {
        var left = 0, idx = 0, right = nums.count - 1

        while idx <= right {
            print(nums[idx])
            if nums[idx] == 0 {
                nums.swapAt(idx, left)
                left += 1
            } else if nums[idx] == 2 {
                nums.swapAt(idx, right)
                right -= 1
                idx -= 1
            } 
            idx += 1
        }
    }
}
