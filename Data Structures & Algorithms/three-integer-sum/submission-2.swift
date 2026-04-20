class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        let sortedNums = nums.sorted()
        var res: [[Int]] = []

        for i in 0..<sortedNums.count {
            let curr = sortedNums[i]
            guard !(curr > 0) else { continue }

            guard !(i > 0 && (sortedNums[i] == sortedNums[i - 1])) else { continue }
            var left = i + 1, right = sortedNums.count - 1
            while left < right {
                let sum = curr + sortedNums[left] + sortedNums[right]
                if sum == 0 {
                    res.append([curr, sortedNums[left], sortedNums[right]])
                    left += 1
                    right -= 1

                    while left < right && sortedNums[left] == sortedNums[left - 1] {
                        left += 1
                    }
                } else if sum > 0 {
                    right -= 1
                } else {
                    left += 1
                }
            }
        }

        return res
    }
}
