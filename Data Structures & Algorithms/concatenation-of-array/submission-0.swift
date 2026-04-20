class Solution {
    func getConcatenation(_ nums: [Int]) -> [Int] {
        var copy = nums
        for num in nums {
            copy.append(num)
        }
        return copy
    }
}
