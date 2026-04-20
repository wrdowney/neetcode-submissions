class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var indices: [Int: Int] = [:]
        for (i, num) in nums.enumerated() {
            indices[num] = i
        }

        for (i, num) in nums.enumerated() {
            let diff = target - num
            if let j = indices[diff], j != i {
                return [i,j]
            }
        }
        return []
    }
}
