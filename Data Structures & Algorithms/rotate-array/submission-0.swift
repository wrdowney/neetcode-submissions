class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        var res = Array(repeating: 0, count: nums.count)

        var curr = 0, finalPos = k % nums.count

        while curr < nums.count {
            // print(finalPos, curr, nums.count)
            res[finalPos] = nums[curr]
            curr += 1
            finalPos += 1
            finalPos %= nums.count
        }
        nums = res
    }
}