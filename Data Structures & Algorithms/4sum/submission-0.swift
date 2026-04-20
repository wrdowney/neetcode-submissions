class Solution {
    func fourSum(_ nums: [Int], _ target: Int) -> [[Int]] {
        let nums = nums.sorted()
        var res = [[Int]]()
        for i in 0..<nums.count {
            guard !(i > 0 && nums[i] == nums[i - 1]) else { continue }
            for j in i+1..<nums.count {
                guard !(j > 1 && (nums[j] == nums[j - 1] && (j - 1 != i))) else { continue }
                var left = j + 1, right = nums.count - 1
                while left < right {
                    let sum = nums[i] + nums[j] + nums[left] + nums[right]
                    if sum > target {
                        right -= 1
                    } else if sum < target {
                        left += 1
                    } else {
                        res.append([nums[i], nums[j], nums[left], nums[right]])
                        left += 1
                        right -= 1
                        while left < right && nums[left] == nums[left - 1] {
                            left += 1
                        }
                    }
                }
            }
        }
        return res
    }
}
