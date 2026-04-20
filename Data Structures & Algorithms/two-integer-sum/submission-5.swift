/*
To keep time complexity to O(N) we first loop through the entire array (O(N)),
adding each element at its index in a dictionary. We can then loop throguh the
array calculating the number we need for the current element to equal our
target, we can use dictionary lookup, which is O(1).
*/
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
