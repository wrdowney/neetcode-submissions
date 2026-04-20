class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        var slow = 0, fast = 0
        var lastUniqueValue = nums[0]

        while fast < nums.count {
            if nums[fast] != lastUniqueValue {
                slow += 1
                nums[slow] = nums[fast]
                lastUniqueValue = nums[fast]
            }
            fast += 1
        }
        return slow + 1
    }
}