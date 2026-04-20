class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        let n = nums.count
        let kMod = k % n
        nums = Array(nums.suffix(kMod)) + Array(nums.prefix(n - kMod))
    }
}