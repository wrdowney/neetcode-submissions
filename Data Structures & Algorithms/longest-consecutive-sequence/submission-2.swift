class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        // brute force
        var maxRun = 0
        var set = Set(nums)

        for num in nums {
            if set.contains(num - 1) { continue }
            var run = 0
            var curr = num

            while set.contains(curr) {
                run += 1
                curr += 1
            }

            maxRun = max(run, maxRun)
        }
        return maxRun
    }
    // func longestConsecutive(_ nums: [Int]) -> Int {
    //     // brute force
    // }
}
