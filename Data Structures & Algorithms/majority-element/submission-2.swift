class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        let n = nums.count

        while true {
            let candidate = nums[Int.random(in: 0..<n)]
            var count = 0
            for num in nums {
                if num == candidate {
                    count += 1
                }
            }
            if count > n / 2 {
                return candidate
            }
        }
    }
}
