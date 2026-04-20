class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        // brute force
        var maxRun = 0
        var set = Set(nums)

        for num in nums {
            guard !set.contains(num - 1) else { continue }
            var run = 1

            while set.contains(num + run) {
                run += 1
            }

            maxRun = max(run, maxRun)
        }
        return maxRun
    }
    // func longestConsecutive(_ nums: [Int]) -> Int {
    //     // brute force
    // }
}
