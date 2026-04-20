class Solution {
    func sortArray(_ nums: [Int]) -> [Int] {
        var nums = nums
        countingSort(&nums)
        return nums
    }

    private func countingSort(_ nums: inout [Int]) {
        var count = [Int: Int]()
        var minVal = Int.max
        var maxVal = Int.min

        for val in nums {
            count[val, default: 0] += 1
            minVal = min(minVal, val)
            maxVal = max(maxVal, val)
        }

        var index = 0
        for val in minVal...maxVal {
            var c = count[val] ?? 0
            while c > 0 {
                nums[index] = val
                index += 1
                c -= 1
            }
        }
    }
}
